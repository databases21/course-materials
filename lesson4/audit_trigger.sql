CREATE TABLE actor_audit(
	operation char(1) NOT NULL,
	stamp timestamp NOT NULL,
	username text NOT NULL,
	actor_id int NOT NULL,
	first_name text NOT NULL,
	last_name  text NOT NULL
);

CREATE OR REPLACE FUNCTION actor_audit() RETURNS TRIGGER AS
$actor_audit$
BEGIN
	IF (TG_OP ='DELETE') THEN
		INSERT INTO actor_audit VALUES('D',CURRENT_TIMESTAMP, user, OLD.actor_id,OLD.first_name,OLD.last_name);
		RETURN OLD;
	ELSIF (TG_OP='INSERT') THEN
		INSERT INTO actor_audit VALUES('I',CURRENT_TIMESTAMP, user, NEW.actor_id,NEW.first_name,NEW.last_name);
		RETURN NEW;
	ELSIF (TG_OP='UPDATE') THEN
		INSERT INTO actor_audit VALUES('U',CURRENT_TIMESTAMP, user, NEW.actor_id,NEW.first_name,NEW.last_name);
		RETURN NEW;
	END IF;
	RETURN NULL;
END;
$actor_audit$ LANGUAGE plpgsql; 

CREATE TRIGGER on_audit
AFTER INSERT OR UPDATE OR DELETE ON actor
	FOR EACH ROW EXECUTE PROCEDURE actor_audit();