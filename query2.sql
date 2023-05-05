-- We want to find out how many of each category of film ED CHASE has starred in.

-- So return a table with "category_name" and the count of the "number_of_films" that ED was in that category.

-- Your query should return every category even if ED has been in no films in that category

-- Order by the category name in ascending order.

SELECT film_category.category_name, COUNT (*)
FROM film_category, film_actor, actor
WHERE film_category.film_id = film_actor.film_id
	AND film_actor.actor_id = actor.actor_id
	AND actor.first_name = "ED" and actor.last_name = "CHASE"
GROUP BY category_name
ORDER BY category_name;
