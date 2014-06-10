BEGIN TRANSACTION;

INSERT INTO "mails" VALUES(1,'2014-05-25 16:23:43.704887','Message-ID: <5381FCEF.1060407@nagios.com>
Date: Sun, 25 May 2014 16:23:43 +0200
From: Nagios DA <do-not-reply@icido.de>
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

Date/Time: Thu Jun 5 12:21:18 CEST 2014',0);
INSERT INTO "mails" VALUES(2,'2014-05-28 15:01:14.934898','Received: from icidogroup.icido.com (10.0.0.9) by
 ESCVSE-EXCAS01.ESI-INTERNAL.esi-group.com (172.22.10.66) with Microsoft SMTP
 Server id 14.2.328.9; Wed, 5 Feb 2014 10:59:32 +0100
Received: from osiris.icido.com ([10.4.0.2]) by icidogroup.icido.com with
 Microsoft SMTPSVC(6.0.3790.3959);	 Wed, 5 Feb 2014 10:59:32 +0100
Received: from localhost (localhost.localdomain [127.0.0.1])	by
 osiris.icido.com (Postfix) with ESMTP id B0D436E60E7;	Wed,  5 Feb 2014
 10:59:32 +0100 (CET)
Received: from osiris.icido.com ([127.0.0.1])	by localhost
 (osiris.icidogroup.icido.com [127.0.0.1]) (amavisd-new, port 10024)	with LMTP
 id fJJBMyCvcUp8; Wed,  5 Feb 2014 10:59:30 +0100 (CET)
Received: from mail.esigmbh.de (mail.esigmbh.de [94.186.162.101])	by
 osiris.icido.com (Postfix) with ESMTP id EEA606E60E5;	Wed,  5 Feb 2014
 10:59:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])	by mail.esigmbh.de (Postfix)
 with ESMTP id D0CF2964EF;	Wed,  5 Feb 2014 10:59:29 +0100 (CET)
Received: from mail.esigmbh.de ([127.0.0.1])	by localhost (mail.esigmbh.de
 [127.0.0.1]) (amavisd-new, port 10024)	with LMTP id TqSxBY101UUq; Wed,  5 Feb
 2014 10:59:28 +0100 (CET)
Received: from infrastructure-da.icidogroup.icido.com (unknown [10.16.0.241])
	by mail.esigmbh.de (Postfix) with ESMTP id 309FC96316;	Wed,  5 Feb 2014
 10:59:28 +0100 (CET)
Received: from infrastructure-da.icidogroup.icido.com (localhost [127.0.0.1])
	by infrastructure-da.icidogroup.icido.com (Postfix) with ESMTP id EA48C4B70;
	Wed,  5 Feb 2014 10:43:30 +0100 (CET)
Received: by infrastructure-da.icidogroup.icido.com (Postfix, from userid 109)
 id 7F84A4A2B; Wed,  5 Feb 2014 10:43:28 +0100 (CET)
From: Nagios DA <do-not-reply@icido.de>
To: "nagios@infrastructure-da.icidogroup.icido.com"
	<nagios@infrastructure-da.icidogroup.icido.com>
Subject: [Nagios] ** PROBLEM Service Alert: localhost/DNS google.com is
	CRITICAL **
Thread-Topic: [Nagios] ** PROBLEM Service Alert: localhost/DNS google.com is
	CRITICAL **
Thread-Index: AQHPIlj4u9pUKW7qO0SxpeFTC5+nJA==
Sender: "nagios-bounces@infrastructure-da.icidogroup.icido.com"
	<nagios-bounces@infrastructure-da.icidogroup.icido.com>
Date: Wed, 5 Feb 2014 09:43:28 +0000
Message-ID: <20140205094328.7F84A4A2B@infrastructure-da.icidogroup.icido.com>
List-Help: <mailto:nagios-request@infrastructure-da.icidogroup.icido.com?subject=help>
List-Subscribe: <http://infrastructure-da.icidogroup.icido.com/cgi-bin/mailman/listinfo/nagios>,
 <mailto:nagios-request@infrastructure-da.icidogroup.icido.com?subject=subscribe>
List-Unsubscribe: <http://infrastructure-da.icidogroup.icido.com/cgi-bin/mailman/options/nagios>,
 <mailto:nagios-request@infrastructure-da.icidogroup.icido.com?subject=unsubscribe>
Content-Language: en-US
X-MS-Exchange-Organization-AuthAs: Anonymous
X-MS-Exchange-Organization-AuthSource: ESCVSE-EXCAS01.ESI-INTERNAL.esi-group.com
X-MS-Has-Attach:
X-Auto-Response-Suppress: All
X-MS-TNEF-Correlator:
x-originalarrivaltime: 05 Feb 2014 09:59:32.0840 (UTC)
 FILETIME=[F7E3C680:01CF2258]
x-virus-scanned: at esigmbh.de
x-beenthere: nagios@infrastructure-da.icidogroup.icido.com
list-id: <nagios.infrastructure-da.icidogroup.icido.com>
list-archive: <http://infrastructure-da.icidogroup.icido.com/pipermail/nagios>
list-post: <mailto:nagios@infrastructure-da.icidogroup.icido.com>
x-mailman-version: 2.1.14
errors-to: nagios-bounces@infrastructure-da.icidogroup.icido.com
Content-Type: text/plain; charset="us-ascii"
Content-ID: <D5EC6D209760E748A8C4B77742517A45@esi-group.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0

***** Nagios *****

Notification Type: PROBLEM

Service: DNS google.com
Host: localhost
Address: 127.0.0.1
State: CRITICAL

Date/Time: Wed Feb 5 10:43:28 CET 2014

Additional Info:

CRITICAL - Plugin timed out while executing system call
_______________________________________________
Nagios mailing list
Nagios@infrastructure-da.icidogroup.icido.com
http://infrastructure-da.icidogroup.icido.com/cgi-bin/mailman/listinfo/nagi=
os
',0);
INSERT INTO "mails" VALUES(3,'2014-05-23 15:01:25.871928','Received: from icidogroup.icido.com (10.0.0.9) by
 ESCVSE-EXCAS01.ESI-INTERNAL.esi-group.com (172.22.10.66) with Microsoft SMTP
 Server id 14.2.328.9; Wed, 22 Jan 2014 06:33:07 +0100
Received: from osiris.icido.com ([10.4.0.2]) by icidogroup.icido.com with
 Microsoft SMTPSVC(6.0.3790.3959);	 Wed, 22 Jan 2014 06:33:06 +0100
Received: from localhost (localhost.localdomain [127.0.0.1])	by
 osiris.icido.com (Postfix) with ESMTP id 569316E60E7;	Wed, 22 Jan 2014
 06:33:06 +0100 (CET)
Received: from osiris.icido.com ([127.0.0.1])	by localhost
 (osiris.icidogroup.icido.com [127.0.0.1]) (amavisd-new, port 10024)	with LMTP
 id POQwqiyyrjbm; Wed, 22 Jan 2014 06:33:05 +0100 (CET)
Received: from mail.esigmbh.de (mail.esigmbh.de [94.186.162.101])	by
 osiris.icido.com (Postfix) with ESMTP id 728256E60E6;	Wed, 22 Jan 2014
 06:33:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])	by mail.esigmbh.de (Postfix)
 with ESMTP id 4C99695CB2;	Wed, 22 Jan 2014 06:33:05 +0100 (CET)
Received: from mail.esigmbh.de ([127.0.0.1])	by localhost (mail.esigmbh.de
 [127.0.0.1]) (amavisd-new, port 10024)	with LMTP id uA47gjJIXVH6; Wed, 22 Jan
 2014 06:33:03 +0100 (CET)
Received: from infrastructure-da.icidogroup.icido.com (unknown [10.16.0.241])
	by mail.esigmbh.de (Postfix) with ESMTP id 70A3B70674;	Wed, 22 Jan 2014
 06:33:03 +0100 (CET)
Received: from infrastructure-da.icidogroup.icido.com (localhost [127.0.0.1])
	by infrastructure-da.icidogroup.icido.com (Postfix) with ESMTP id 84732499B;
	Wed, 22 Jan 2014 06:32:59 +0100 (CET)
Received: by infrastructure-da.icidogroup.icido.com (Postfix, from userid 109)
 id 367E048A0; Wed, 22 Jan 2014 06:32:58 +0100 (CET)
From: Nagios DA <do-not-reply@icido.de>
To: "nagios@infrastructure-da.icidogroup.icido.com"
	<nagios@infrastructure-da.icidogroup.icido.com>
Subject: [Nagios] ** RECOVERY Host Alert: nereus.icido.com.internal is UP **
Thread-Topic: [Nagios] ** RECOVERY Host Alert: nereus.icido.com.internal is
 UP **
Thread-Index: AQHPFzNu5bo46LrsYEWad9zfocSKig==
Sender: "nagios-bounces@infrastructure-da.icidogroup.icido.com"
	<nagios-bounces@infrastructure-da.icidogroup.icido.com>
Date: Wed, 22 Jan 2014 05:32:58 +0000
Message-ID: <20140122053258.367E048A0@infrastructure-da.icidogroup.icido.com>
List-Help: <mailto:nagios-request@infrastructure-da.icidogroup.icido.com?subject=help>
List-Subscribe: <http://infrastructure-da.icidogroup.icido.com/cgi-bin/mailman/listinfo/nagios>,
 <mailto:nagios-request@infrastructure-da.icidogroup.icido.com?subject=subscribe>
List-Unsubscribe: <http://infrastructure-da.icidogroup.icido.com/cgi-bin/mailman/options/nagios>,
 <mailto:nagios-request@infrastructure-da.icidogroup.icido.com?subject=unsubscribe>
Content-Language: en-US
X-MS-Exchange-Organization-AuthAs: Anonymous
X-MS-Exchange-Organization-AuthSource: ESCVSE-EXCAS01.ESI-INTERNAL.esi-group.com
X-MS-Has-Attach:
X-Auto-Response-Suppress: All
X-MS-TNEF-Correlator:
x-originalarrivaltime: 22 Jan 2014 05:33:06.0490 (UTC)
 FILETIME=[6D7FD9A0:01CF1733]
x-virus-scanned: at esigmbh.de
x-beenthere: nagios@infrastructure-da.icidogroup.icido.com
list-id: <nagios.infrastructure-da.icidogroup.icido.com>
list-archive: <http://infrastructure-da.icidogroup.icido.com/pipermail/nagios>
list-post: <mailto:nagios@infrastructure-da.icidogroup.icido.com>
x-mailman-version: 2.1.14
errors-to: nagios-bounces@infrastructure-da.icidogroup.icido.com
Content-Type: text/plain; charset="us-ascii"
Content-ID: <CB51978EAE1E7C49A8DD97465881AF48@esi-group.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0

***** Nagios *****

Notification Type: RECOVERY
Host: nereus.icido.com.internal
State: UP
Address: 10.4.0.3
Info: HTTP OK: HTTP/1.1 301 Moved Permanently - 530 bytes in 0.053 second r=
esponse time

Date/Time: Wed Jan 22 06:32:58 CET 2014
_______________________________________________
Nagios mailing list
Nagios@infrastructure-da.icidogroup.icido.com
http://infrastructure-da.icidogroup.icido.com/cgi-bin/mailman/listinfo/nagi=
os
',0);
INSERT INTO "mails" VALUES(4,'2014-05-23 15:01:35.028470','Message-ID: <5385DE2E.5070602@nagios.com>
Date: Wed, 28 May 2014 15:01:34 +0200
From: nagios <nagios@nagios.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9; rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: test@blub
Subject: knkjkjb
Content-Type: text/plain; charset=ISO-8859-15; format=flowed
Content-Transfer-Encoding: 7bit

kjbkjkjb',0);

INSERT INTO "forwarding_rules" VALUES(1,'.*','aln@esi-group.com');
INSERT INTO "forwarding_rules" VALUES(2,'.*From:\svery_important','priority@icido.com');

INSERT INTO "styling_rules" VALUES(1,'.*CRITICAL','#FFC7C7');
INSERT INTO "styling_rules" VALUES(2,'.*RECOVERY','#AEFFB3');

COMMIT;
