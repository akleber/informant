BEGIN TRANSACTION;

INSERT INTO "mails" VALUES(1,'2014-05-25 16:23:43.704887','Message-ID: <5381FCEF.1060407@nagios.com>
Date: Sun, 25 May 2014 16:23:43 +0200
From: nagios <nagios@nagios.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9; rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: test@blub
Subject: [Nagios] ** PROBLEM Host Alert: servido is DOWN **
Content-Type: text/plain; charset=ISO-8859-15; format=flowed
Content-Transfer-Encoding: 7bit

***** Nagios *****

Notification Type: PROBLEM
Host: servido
State: DOWN
Address: servido.icidogroup.icido.com
Info: check_ping: Invalid hostname/address - servido.icidogroup.icido.com

Date/Time: Thu Jun 5 12:21:18 CEST 2014');
INSERT INTO "mails" VALUES(2,'2014-05-28 15:01:14.934898','Message-ID: <5385DE1A.1070603@nagios.com>
Date: Wed, 28 May 2014 15:01:14 +0200
From: nagios <nagios@nagios.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9; rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: test@blub
Subject: [Nagios] ** PROBLEM Service Alert: localhost/DNS google.com is	CRITICAL **
Content-Type: text/plain; charset=ISO-8859-15; format=flowed
Content-Transfer-Encoding: 7bit

***** Nagios *****

Notification Type: PROBLEM

Service: DNS google.com
Host: localhost
Address: 127.0.0.1
State: CRITICAL

Date/Time: Thu Jun 5 12:13:08 CEST 2014

Additional Info:

CRITICAL - Plugin timed out while executing system call');
INSERT INTO "mails" VALUES(3,'2014-05-23 15:01:25.871928','Message-ID: <5385DE25.9020509@nagios.com>
Date: Wed, 28 May 2014 15:01:25 +0200
From: nagios <nagios@nagios.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9; rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: test@blub
Subject: egsdfg
Content-Type: text/plain; charset=ISO-8859-15; format=flowed
Content-Transfer-Encoding: 7bit

sdfgsdfg');
INSERT INTO "mails" VALUES(4,'2014-05-23 15:01:35.028470','Message-ID: <5385DE2E.5070602@nagios.com>
Date: Wed, 28 May 2014 15:01:34 +0200
From: very_important <very_important@test.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9; rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: test@blub
Subject: knkjkjb
Content-Type: text/plain; charset=ISO-8859-15; format=flowed
Content-Transfer-Encoding: 7bit

kjbkjkjb');

INSERT INTO "forwarding_rules" VALUES(1,'.*','aln@esi-group.com');
INSERT INTO "forwarding_rules" VALUES(2,'.*From:\svery_important','priority@icido.com');

INSERT INTO "source" VALUES(2);

COMMIT;
