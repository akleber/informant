
import smtpd
import asyncore
from datetime import datetime

import database

LISTENING_ADDRESS = '0.0.0.0'
LISTENING_PORT = 1025


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

if __name__ == "__main__":

	con = None

	try:
		con = database.connect_db()

		server = Sink((LISTENING_ADDRESS, LISTENING_PORT), None)
		asyncore.loop()

	finally:
		if con:
			con.close()
