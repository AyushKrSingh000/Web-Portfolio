BEGIN;

--
-- ACTION DROP TABLE
--
DROP TABLE "projects" CASCADE;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "projects" (
    "id" serial PRIMARY KEY,
    "projectName" text NOT NULL,
    "desc" text NOT NULL,
    "imageUrl" text NOT NULL,
    "techStacks" json NOT NULL,
    "sourceCode" text NOT NULL,
    "liveDemo" text NOT NULL,
    "isPublic" boolean NOT NULL,
    "googlePlay" text NOT NULL,
    "iosPlay" text NOT NULL
);


--
-- MIGRATION VERSION FOR portfolio
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('portfolio', '20240327081439690', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240327081439690', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240115074235544', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074235544', "timestamp" = now();


COMMIT;
