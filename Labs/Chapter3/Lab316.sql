/*
3.16 LAB - Multiple joins with aggregate (Sakila)
Refer to the film, actor, and film_actor tables of the Sakila database. The tables in this lab have the same columns and data types but fewer rows.

Write a query that:

Computes the average length of all films that each actor appears in.
Rounds average length to the nearest minute and renames the result column "average".
Displays last name, first name, and average, in that order, for each actor.
Sorts the result in descending order by average, then ascending order by last name.
The query should exclude films with no actors and actors that do not appear in films.

Hint: Use the ROUND() and AVG() functions.
  */


SELECT
  actor.last_name,
  actor.first_name,
  ROUND(AVG(COALESCE(film.length, 0))) AS average
FROM actor
JOIN film_actor ON actor.actor_id = film_actor.actor_id
JOIN film ON film_actor.film_id = film.film_id
GROUP BY actor.actor_id
ORDER BY average DESC, actor.last_name ASC;
