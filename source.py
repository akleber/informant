
import time
import re
import smtplib
import socket
from email.parser import Parser

import database

EMAIL_SERVER_ADDRESS = '127.0.0.1'
EMAIL_SERVER_PORT = 1026


def deliver(mailfrom, rcpttos, data):
	print 'Sending email from: ', mailfrom, ' to: ', rcpttos
	#return

	refused = {}
	try:
		s = smtplib.SMTP()
		s.connect(EMAIL_SERVER_ADDRESS, EMAIL_SERVER_PORT)
		try:
			refused = s.sendmail(mailfrom, rcpttos, data)
		finally:
			s.quit()
	except smtplib.SMTPRecipientsRefused, e:
		print 'got SMTPRecipientsRefused'
		refused = e.recipients
	except (socket.error, smtplib.SMTPException), e:
		print 'got', e.__class__
		# All recipients were refused.  If the exception had an associated
		# error code, use it.  Otherwise,fake it with a non-triggering
		# exception code.
		errcode = getattr(e, 'smtp_code', -1)
		errmsg = getattr(e, 'smtp_error', 'ignore')
		for r in rcpttos:
			refused[r] = (errcode, errmsg)
	return refused


def process_mail(dbcon, mail_id, mail):
	#print mail
	cur = con.cursor()
	cur.execute('select * from forwarding_rules')
	rows = cur.fetchall()
	for row in rows:
		pattern = row[1]
		recipient = row[2]
		flags = re.S

		prog = re.compile(pattern, flags)
		result = prog.match(mail)
		
		if result is not None:
			mailfrom = Parser().parsestr(mail)['from']

			refused = deliver(mailfrom, recipient, mail)
			if not refused:
				cur.execute('update source set last_processed_id = ?', (mail_id,))
				dbcon.commit()
	return


def poll(dbcon):
	while True:
		print 'Poll'
		# get unprocessed mails
		cur = dbcon.cursor()
		cur.execute('select * from mails where id > (select last_processed_id from source)')
		rows = cur.fetchall()
		for row in rows:
			process_mail(dbcon, row[0], row[2])

		time.sleep(5)


if __name__ == "__main__":
	con = None
	try:
		con = database.connect_db()

		poll(con)

	finally:
		if con:
			con.close()

