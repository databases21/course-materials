CREATE TABLE bar (c1 integer,c2 boolean);
INSERT INTO bar
	SELECT i,i%2=1
	FROM generate_series(1,500000) AS i;
ANALYSE bar;
