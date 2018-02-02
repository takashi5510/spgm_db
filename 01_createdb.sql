
DO
$role$
BEGIN
  IF EXISTS(SELECT 1 FROM pg_roles WHERE rolname='spgm') THEN
  ELSE
    CREATE ROLE spgm LOGIN PASSWORD 'spgm';
  END IF;
END
$role$;

DO
$db$
BEGIN
  IF EXISTS(SELECT 1 FROM pg_database WHERE datname='spgm_dev') THEN
  ELSE
    CREATE DATABASE spgm_dev encoding=UTF8;
  END IF;
END
$db$;

GRANT ALL PRIVILEGES ON DATABASE spgm_dev TO spgm;

