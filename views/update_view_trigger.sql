CREATE OR REPLACE FUNCTION insert_into_view() RETURNS TRIGGER
AS $timestmp$
BEGIN
	IF (TG_OP= 'INSERT') THEN
		INSERT INTO film VALUES(DEFAULT,NEW.title);
		RETURN NEW;
	END IF;
	RETURN NULL;
END;
$timestmp$ LANGUAGE plpgsql;

CREATE TRIGGER on_actor_add INSTEAD OF INSERT ON actor_film_rating
FOR EACH ROW
EXECUTE PROCEDURE insert_into_view();