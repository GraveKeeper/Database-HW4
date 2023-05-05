-- Find the actor_id first_name, last_name and total_combined_film_length 
-- of Sci-Fi films for every actor.
-- That is the result should list the actor ids, names of all of the actors(even if an actor has not been in any Sci-Fi films) 
-- and the total length of Sci-Fi films they have been in.
-- Look at the category table to figure out how to filter data for Sci-Fi films.
-- Order your results by the actor_id in descending order.
-- Put query for Q3 here

SELECT actor_id, first_name, last_name, SUM (length)
FROM actor. film, category, film_category
WHERE
	actor.actor_id = film_actor.actor_id
	AND film_actor.film_id = film.film_id
	AND film_category.category_id = category.category_id
	AND category_id IN (SELECT category_id
			   FROM category
			   Where category_name = "Sci Fi")
GROUP BY film.film_id
ORDER BY actor_id DESC;