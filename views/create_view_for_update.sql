CREATE OR REPLACE VIEW actor_film_rating AS
SELECT film.*,actor.first_name,actor.last_name,
	(SELECT avg(f.user_rating) 
	 FROM film as f,film_actor as fa 
	 where f.film_id=fa.film_id and actor.actor_id=fa.actor_id) as actor_avg_rating
FROM film,film_actor,actor
WHERE film.film_id=film_actor.film_id and film_actor.actor_id=actor.actor_id;