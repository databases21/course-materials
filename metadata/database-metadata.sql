--Общая информация по всем базам данных
--select * from pg_database;
----Select * from pg_stat_database;

--Информация по фоновой записи на диск из буфера
--select * from pg_stat_bgwriter;

--Активность баз данных и блокирование(locks)
----select * from pg_stat_activity;
----select * from pg_locks;
----select * from pg_locks join pg_stat_activity on pg_locks.pid=pg_stat_activity.pid;
------каждая строка представляет одно подключение
------pid это id процесса для подлкючения

--Метаданные для конкретной базы данных
--select * from pg_stat_user_tables;
--select * from pg_statio_user_tables;--I/O data to understand why data processed to long, combine with anylyze
--select * from pg_stat_user_indexes;
--select * from pg_statio_user_indexes;
--select * from pg_class;

--insert into foo values (123,'sdhsdh');
--select * from pg_locks join pg_class on pg_locks.relation=pg_class.oid

select * from information_schema.columns;
--select * from information_schema.tables;
