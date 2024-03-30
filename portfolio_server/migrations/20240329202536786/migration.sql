BEGIN;


--
-- MIGRATION VERSION FOR portfolio
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('portfolio', '20240329202536786', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240329202536786', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240115074235544', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074235544', "timestamp" = now();


COMMIT;
