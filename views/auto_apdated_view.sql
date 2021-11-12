CREATE OR REPLACE VIEW comedy_films AS
SELECT title,description FROM film
WHERE film.title LIKE 'A%'
