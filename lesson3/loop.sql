CREATE OR REPLACE  FUNCTION reverse_loop (line text) RETURNS text
AS $$
DECLARE
	line_length CONSTANT int :=length(line);
	i int := 1;
	retval text:='';
BEGIN
	<<main_loop>>
	LOOP
		EXIT main_loop WHEN i > line_length;
		retval := substr(reverse_loop.line,i,1) || retval;
		i :=i+1;
	END LOOP;
	RETURN retval;
END;
$$ LANGUAGE plpgsql IMMUTABLE STRICT;