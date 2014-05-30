
import os
from sqlite3 import dbapi2 as sqlite3
from flask import Flask, request, session, g, redirect, url_for, abort, \
     render_template, flash
import markdown


# create our little application :)
app = Flask(__name__)

# Load default config and override config from an environment variable
app.config.update(dict(
    DATABASE=os.path.join(app.root_path, 'informant.db'),
    DEBUG=True
))
app.config.from_envvar('FLASKR_SETTINGS', silent=True)

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
    from flask import Markup
    from markdown import markdown
    return Markup(markdown(data))

def render_markdown_file(filename):
    with open (filename, 'r') as file:
        content = file.read()
        file.close()
    return render_template('markdown.html', content = content, title = filename)

@app.route('/')
def show_mails():
    db = get_db()
    cur = db.execute('select date, maildata from mails order by date desc')
    mails = cur.fetchall()
    return render_template('show_mails.html', mails = mails)

@app.route('/readme')
def show_readme():
    return render_markdown_file('README.md')

if __name__ == "__main__":
    app.run()
