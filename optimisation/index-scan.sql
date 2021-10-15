CREATE INDEX ON foo(c2 text_pattern_ops);
EXPLAIN (ANALYSE) SELECT * from foo
	WHERE c2 LIKE 'abc%';