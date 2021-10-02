DO $$
DECLARE
	code text := (fmt('3842128506')).code;
BEGIN
	CASE
		WHEN code IN ('495','499') THEN
			RAISE NOTICE '% - Moscow', code;
		WHEN code IN ('812') THEN
			RAISE NOTICE '% - Petersburg', code;
		WHEN code IN ('384') THEN
			RAISE NOTICE '% - Kemerovo', code;
		ELSE
			RAISE NOTICE 'Else';
	END CASE;
END;
$$;