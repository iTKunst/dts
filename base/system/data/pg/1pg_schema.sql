DROP SCHEMA IF EXISTS svgc;
CREATE SCHEMA svgc;

DO
$do$
    BEGIN
        IF NOT EXISTS (
                SELECT FROM pg_catalog.pg_roles  -- SELECT list can be empty for this
                WHERE  rolname = 'svgc') THEN

            CREATE ROLE svgc WITH ENCRYPTED PASSWORD 'svgc';
            GRANT ALL PRIVILEGES ON SCHEMA svgc to svgc;
            GRANT ALL ON SCHEMA public TO svgc;
        END IF;
    END
$do$;


