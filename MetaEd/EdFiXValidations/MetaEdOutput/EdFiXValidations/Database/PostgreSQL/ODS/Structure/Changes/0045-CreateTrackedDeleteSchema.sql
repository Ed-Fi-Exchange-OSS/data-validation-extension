DO $$
BEGIN
    IF NOT EXISTS(
        SELECT schema_name
          FROM information_schema.schemata
          WHERE schema_name = 'tracked_deletes_edfixvalidations'
      )
    THEN
      EXECUTE 'CREATE SCHEMA tracked_deletes_edfixvalidations AUTHORIZATION postgres';
    END IF;

END
$$;
