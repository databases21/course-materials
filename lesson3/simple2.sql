DO $$
DECLARE
	foo integer NOT NULL :=0 --не пустое
	bar CONSTANT text :=42 -- менять значение нельзя
BEGIN
	bar:=bar+1; --ошибка
END;
$$;