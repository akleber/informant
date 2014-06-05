
import os
from sqlite3 import dbapi2 as sqlite3
from flask import Flask, request, session, g, redirect, url_for, abort, render_template, flash, Markup
from markdown import markdown
from email.parser import Parser


# create our little application :)
app = Flask(__name__)

# Load default config and override config from an environment variable
app.config.update(dict(
    DATABASE=os.path.join(app.root_path, 'informant.db'),
    DEBUG=True
))


def connect_db():
    """Connects to the specific database."""
    rv = sqlite3.connect(app.config['DATABASE'])
    rv.row_factory = sqlite3.Row
    return rv

def get_db():
    """Opens a new database connection if there is none yet for the
    current application context.
    """
    if not hasattr(g, 'sqlite_db'):
        g.sqlite_db = connect_db()
    return g.sqlite_db

@app.teardown_appcontext
def close_db(error):
    """Closes the database again at the end of the request."""
    if hasattr(g, 'sqlite_db'):
        g.sqlite_db.close()


@app.template_filter('markdown')
def markdown_filter(data):
    return Markup(markdown(data))

@app.template_filter('email_subject')
def email_subject_filter(data):
    return Parser().parsestr(data, True)['subject']

@app.template_filter('email_from')
def email_subject_filter(data):
    return Parser().parsestr(data, True)['from']

@app.template_filter('email_body')
def email_subject_filter(data):
    # Todo: Multipart handling
    # http://stackoverflow.com/questions/17874360/python-how-to-parse-the-body-from-a-raw-email-given-that-raw-email-does-not
    return Parser().parsestr(data, False).get_payload()

@app.template_filter('headercolor')
def headercolor_filter(data):
    # todo get regex and color from database
    #return '#FFC7C7'
    #return '#AEFFB3'
    return '#F5F5F5'


def render_markdown_file(filename):
    with open (filename, 'r') as file:
        content = file.read()
        file.close()
    return render_template('markdown.html', content = content, title = filename)


@app.route('/')
def show_mails():
    db = get_db()
    cur = db.execute('select id, datetime(date) as date, maildata from mails order by date desc')
    mails = cur.fetchall()
    return render_template('show_mails.html', mails = mails)

@app.route('/readme')
def show_readme():
    return render_markdown_file('README.md')

@app.route('/email_raw')
def show_email_raw():
    id = request.args.get('id')

    db = get_db()
    cur = db.execute('select maildata from mails where id = ?', (id,))
    content = cur.fetchone()
    return render_template('email_raw.html', content = content[0])


if __name__ == "__main__":
    app.run()
