# The Informant

This is a toolkit for the handling of notification emails. 

In most IT infrastructures there are
several components that have the ability to send emails with status notifications to an administrator.
There might be printers, hardware appliances, nagios instances etc, which all want to send emails to inform
that a cartridge needs to be changed, that hardware components are malfunctioning or that other faults were detected.

These email notifications might not be usable because the available email server needs authentication which the sender can not provide.
Also it might be desirable that some messages are sent to multiple recipients to make sure a notification reaches someone available.
Additionally a dashboard with an overview of all emails can provide a good overview of the current and past situation.

The informant tries to solve these problems with its four components:

1. The *sink* is a smtp server that excepts every message and dumps it to an sqlite database.
2. The *source* is a mail client that sends messages based on regular expressions matching the 
   messages added to the database.
3. The *list* is a web application based on [Flask](http://flask.pocoo.org) that displays the 
   messages in the database and allows for managing the sending of arriving emails
4. The *database* is a shared component for the other three parts of the informant and a tool for 
   database access and maintenance

# Requirements

* Flask

# Installation

I recommend installing the informant inside a virtualenv.
First install virtualenv

	$ sudo pip install virtualenv

Then create a separate environment inside the informants folder...

	$ mkdir informant
	$ cd informant
	$ virtualenv venc
	New python executable in venv/bin/python
	Installing distribute............done.

...and activate it.

	$ . venv/bin/activate

Now you can install the recommended requirements (created with "pip freeze > requirements.txt"):

	$ pip install -r requirements.txt

# ToDo
