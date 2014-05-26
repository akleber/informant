BEGIN TRANSACTION;
DROP TABLE IF EXISTS mails;
CREATE TABLE mails (
  'id' integer primary key autoincrement,
  'date' text not null,
  'maildata' text not null
);
DELETE FROM "sqlite_sequence";
INSERT INTO "sqlite_sequence" VALUES('mails',1);
COMMIT;
