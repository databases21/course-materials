SET work_mem TO '100MB';
EXPLAIN (ANALYSE)
	SELECT * FROM foo LEFT JOIN bar ON foo.c1=bar.c1;