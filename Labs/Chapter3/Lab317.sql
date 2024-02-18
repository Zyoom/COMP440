/*
 3.17 LAB - Nested aggregates (Sakila)
Refer to the film and inventory tables of the Sakila database. The tables in this lab have the same columns and data types but fewer rows.

Write a query that lists the titles of films with the fewest rows in the inventory table.

This query requires a subquery that computes the minimum of counts by film_id:

SELECT MIN(count_film_id)
FROM ( SELECT COUNT(film_id) AS count_film_id
       FROM inventory
       GROUP BY film_id )
AS temp_table;
This subquery is provided in the template.
 */

SELECT film.title
FROM film
JOIN (
    SELECT film_id, COUNT(*) AS count_film_id
    FROM inventory
    GROUP BY film_id
) AS temp_table ON film.film_id = temp_table.film_id
WHERE temp_table.count_film_id = (
    SELECT MIN(count_film_id)
    FROM (
        SELECT COUNT(film_id) AS count_film_id
        FROM inventory
        GROUP BY film_id
    ) AS min_temp_table
);