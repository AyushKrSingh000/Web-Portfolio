BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "contacts" (
    "id" serial PRIMARY KEY,
    "contactId" text NOT NULL,
    "name" text NOT NULL,
    "email" text NOT NULL,
    "subject" text NOT NULL,
    "content" text NOT NULL,
    "contactDate" timestamp without time zone NOT NULL
);


--
-- MIGRATION VERSION FOR portfolio
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('portfolio', '20240327083646956', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240327083646956', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240115074235544', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074235544', "timestamp" = now();


COMMIT;
