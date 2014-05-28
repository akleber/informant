BEGIN TRANSACTION;
DROP TABLE IF EXISTS mails;
CREATE TABLE mails (
  'id' integer primary key autoincrement,
  'date' text not null,
  'maildata' text not null
);
DELETE FROM "sqlite_sequence";
INSERT INTO "sqlite_sequence" VALUES('mails',1);

DROP TABLE IF EXISTS forwarding_rules;
CREATE TABLE forwarding_rules (
  'id' integer primary key autoincrement,
  'regex' text not null,
  'email_address' text not null
);

DROP TABLE IF EXISTS source;
CREATE TABLE source (
  'last_processed_id' INTEGER DEFAULT 0
);

COMMIT;
