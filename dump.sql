BEGIN TRANSACTION;
CREATE TABLE mails (
  'id' integer primary key autoincrement,
  'date' text not null,
  'maildata' text not null
);
INSERT INTO "mails" VALUES(1,'2014-05-25 16:23:43.704887','Message-ID: <5381FCEF.1060407@nagios.com>
Date: Sun, 25 May 2014 16:23:43 +0200
From: nagios <nagios@nagios.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9; rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: test@blub
Subject: test
Content-Type: text/plain; charset=ISO-8859-15; format=flowed
Content-Transfer-Encoding: 7bit

test');
INSERT INTO "mails" VALUES(2,'2014-05-25 16:41:24.991850','Message-ID: <53820114.1060200@nagios.com>
Date: Sun, 25 May 2014 16:41:24 +0200
From: nagios <nagios@nagios.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9; rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: test@blub
Subject: testsetset
Content-Type: text/plain; charset=ISO-8859-15; format=flowed
Content-Transfer-Encoding: 7bit

setsegasefasef');
INSERT INTO "mails" VALUES(3,'2014-05-25 16:41:35.266201','Message-ID: <5382011E.9080609@nagios.com>
Date: Sun, 25 May 2014 16:41:34 +0200
From: nagios <nagios@nagios.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9; rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: test@blub
Subject: drt34t34
Content-Type: text/plain; charset=ISO-8859-15; format=flowed
Content-Transfer-Encoding: 7bit

43g34aerg');
DELETE FROM "sqlite_sequence";
INSERT INTO "sqlite_sequence" VALUES('mails',3);
COMMIT;
