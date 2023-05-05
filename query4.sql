-- Find the actor_id, first_name and last_name of all actors who have never been in a Sci-Fi film.
-- Order by the actor_id in ascending order.
-- Put your query for Q4 here
SELECT actor_id, first_name, last_name
FROM actor, film, category, film_category
WHERE actor_id NOT IN
	(actor.actor_id = film_actor.actor_id
	AND film_actor.film_id = film.film_id
	AND film_category.category_id = category.category_id
	AND category_id IN (SELECT category_id
			   FROM category
			   Where category_name = "Sci Fi"))
ORDER BY actor_id;