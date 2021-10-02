CREATE OR REPLACE FUNCTION reverse_for(line text) RETURNS text
AS $$
DECLARE
	line_length CONSTANT int :=length(line);
	retval text:='';
BEGIN
	FOR i IN 1..line_length
	LOOP
		retval := substr(line,i,1) || retval;
	END LOOP;
	RETURN retval;
END;
$$ LANGUAGE plpgsql IMMUTABLE STRICT;
