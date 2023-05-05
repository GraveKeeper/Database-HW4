-- Find the film_title of all films which feature both KIRSTEN PALTROW and WARREN NOLTE
-- Order the results by film_title in descending order.

SELECT film.film_title
FROM film, actor, film_actor
WHERE 
	film_id IN (	SELECT film.film_id
			FROM film, actor, film_actor
			WHERE film.film_id = film_actor.film_id
				AND film_actor.actor_id = actor.actor_id
				AND actor.first_name = "KIRSTEN"
				AND actor.last_name = "PALTROW"
				AND film_id IN (	SELECT film_id
						FROM film, actor, film_actor
						WHERE film.film_id = film_actor.film_id
						AND film_actor.actor_id = actor.actor_id
						AND actor.first_name = "WARREN"
						AND actor.last_name = "NOLTE"))
ORDER BY film_title DESC;
						