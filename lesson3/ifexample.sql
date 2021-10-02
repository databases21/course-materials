CREATE OR REPLACE FUNCTION fmt (IN phone text, OUT code text, OUT num text)
AS $$
BEGIN
	IF phone ~ '^[0-9]*$' AND length(phone) =10 THEN
		code := substr(phone,1,3);
		num := substr(phone,4); 
	ELSE
		code:=NULL;
		num:=NULL;
	END IF;
END;
$$ LANGUAGE plpgsql IMMUTABLE;

SELECT fmt('8912112341');