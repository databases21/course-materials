-- Просмотр информации о текущих подключениях
SELECT usename, client_addr, backend_start, query FROM pg_stat_activity WHERE datname = 'Имя базы';

-- Сброс всех подключений, кроме подключения сервера СУБД
SELECT pg_terminate_backend(pid) FROM pg_stat_activity WHERE pid <> pg_backend_pid() AND datname = 'Имя базы';