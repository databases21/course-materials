CREATE OR REPLACE FUNCTION ahh() RETURNS event_trigger AS
$$
BEGIN
	RAISE NOTICE 'Произошло событие: % %',TG_EVENT,TG_TAG;
END;
$$ LANGUAGE plpgsql;
CREATE EVENT TRIGGER ahh ON ddl_command_start EXECUTE PROCEDURE ahh();