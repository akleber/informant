# The Informant

The informant is based on four components:

1. The *sink* is a smtp server that excepts every message and dumps it to an sqlite database.
2. The *source* is a mail client that sends messages based on regular expression matching the 
   messages added to the database.
3. The *list* is a web application based on [Flask](http://flask.pocoo.org) that displays the 
   messages in the database and alows for managing the sending of arriving emails
4. The *database* is a shared component for the other three parts of the informant an tool for 
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

* save processed state per mail
* header color based on keywords
* forwarding rules administration
* styling rules admin
* /forwarding-edit, /forwarding-add, /forwarding-delete