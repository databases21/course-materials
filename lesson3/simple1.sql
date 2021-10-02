DO $$
DECLARE
	--однострочный комментарий
	/*это
	Многострочный комментарий*/
	foo text;
	bar text := 'World'; -- можно bar text DEFAULT ‘World’
BEGIN
	foo:='Hello';
	RAISE NOTICE '%, %!', foo, bar; -- вывод сообщения
END;
$$;