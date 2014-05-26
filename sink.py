
import smtpd
import asyncore
import sqlite3
import argparse
from datetime import datetime
import os.path

class Sink(smtpd.SMTPServer):
    
	def process_message(self, peer, mailfrom, rcpttos, data):
		print 'Receiving message from:', peer
		print 'Message addressed from:', mailfrom
		print 'Message addressed to  :', rcpttos
		print 'Message length        :', len(data)

		c = con.cursor()
		c.execute('insert into mails (date, maildata) values (?, ?)', (datetime.now(), data))
		con.commit()

		return

def checkTableExists(dbcon, tablename):
    dbcur = dbcon.cursor()
    dbcur.execute("""
        SELECT COUNT(*)
        FROM sqlite_master
        WHERE type = 'table'
        AND
        name = '{0}'
        """.format(tablename.replace('\'', '\'\'')))
    if dbcur.fetchone()[0] == 1:
        dbcur.close()
        return True

    dbcur.close()
    return False

def init_db():
	f = open('schema.sql','r')
	sql = f.read()
	con.executescript(sql)

def dump_db():
	with open('dump.sql', 'w') as f:
		for line in con.iterdump():
			f.write('%s\n' % line)

if __name__ == "__main__":
	parser = argparse.ArgumentParser(description='Sink')
	parser.add_argument('--init', help='Init the database', action="store_true")
	parser.add_argument('--dump', help='Dump the database', action="store_true")
	args = parser.parse_args()

	try:
		# check if informant.db exists befor connect call because the call creates the file
		dbfilemissing = False
		if (not os.path.isfile('informant.db')):
			dbfilemissing = True

		con = sqlite3.connect('informant.db')

		# init db if db has not existed previously (first run)
		if ( (dbfilemissing or not checkTableExists(con, 'mails')) and not args.init):
			init_db()

		if (args.init):
			init_db()
		elif(args.dump):
			dump_db()
		else:
			server = Sink(('0.0.0.0', 1025), None)
			asyncore.loop()
	finally:
		if con:
			con.close()

