CREATE OR REPLACE  FUNCTION reverse_while (line text) RETURNS text
AS $$
DECLARE
	line_length CONSTANT int :=length(line);
	i int := 1;
	retval text:='';
BEGIN
	WHILE i<=line_length
	LOOP
		retval := substr(line,i,1) || retval;
		i :=i+1;
	END LOOP;
	RETURN retval;
END;
$$ LANGUAGE plpgsql IMMUTABLE STRICT;