
import sqlite3
import argparse
import os.path

def init_db(dbcon):
	f = open('schema.sql','r')
	sql = f.read()
	dbcon.executescript(sql)

def load_examples(dbcon):
	f = open('examples.sql','r')
	sql = f.read()
	dbcon.executescript(sql)

def dump_db(dbcon):
	with open('dump.sql', 'w') as f:
		for line in dbcon.iterdump():
			f.write('%s\n' % line)

def connect_db():
	dbcon = None

	# check if informant.db exists
	if (not os.path.isfile('informant.db')):
		dbcon = sqlite3.connect('informant.db')
		init_db(dbcon)
	else:
		dbcon = sqlite3.connect('informant.db')

	return dbcon

if __name__ == "__main__":
	parser = argparse.ArgumentParser(description='Database')
	parser.add_argument('--init', help='Init the database', action="store_true")
	parser.add_argument('--dump', help='Dump the database', action="store_true")
	parser.add_argument('--examples', help='Inserts example datasets into the database', action="store_true")
	args = parser.parse_args()

	try:
		dbcon = connect_db()

		if (args.init):
			init_db(dbcon)
		elif(args.dump):
			dump_db(dbcon)
		elif(args.examples):
			load_examples(dbcon)

	finally:
		if dbcon:
			dbcon.close()

