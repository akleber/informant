
import time

import database


def deliver(mailfrom, rcpttos, data):
	import smtplib
	refused = {}
	try:
		s = smtplib.SMTP()
		s.connect(remoteaddr[0], remoteaddr[1])
		try:
			refused = s.sendmail(mailfrom, rcpttos, data)
		finally:
			s.quit()
	except smtplib.SMTPRecipientsRefused, e:
		print >> DEBUGSTREAM, 'got SMTPRecipientsRefused'
		refused = e.recipients
	except (socket.error, smtplib.SMTPException), e:
		print >> DEBUGSTREAM, 'got', e.__class__
		# All recipients were refused.  If the exception had an associated
		# error code, use it.  Otherwise,fake it with a non-triggering
		# exception code.
		errcode = getattr(e, 'smtp_code', -1)
		errmsg = getattr(e, 'smtp_error', 'ignore')
		for r in rcpttos:
			refused[r] = (errcode, errmsg)
	return refused


def process_mail(mail):
	print mail
	return


def poll(dbcon):
	while True:
		print 'Poll'
		# get unprocessed mails
		cur = con.cursor()
		cur.execute('select * from mails where id > (select last_processed_id from source)')
		rows = cur.fetchall()
		for row in rows:
			#print row
			process_mail(row[2])

		time.sleep(3)


if __name__ == "__main__":

	con = None
	remoteaddress = '127.0.0.1:1025'

	try:
		con = database.connect_db()

		poll(con)

	finally:
		if con:
			con.close()

