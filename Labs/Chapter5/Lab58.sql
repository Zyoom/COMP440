/*
 5.8 LAB - Create index and explain (Sakila)
This lab illustrates the use of indexes and EXPLAIN to optimize query performance. Refer to EXPLAIN documentation for information about EXPLAIN result columns.

Refer to the film table of the Sakila database. Write and run seven SQL statements:

Explain the query SELECT * FROM film WHERE title = 'ALONE TRIP';.

In the EXPLAIN result, column key is null, indicating no index is available for the query. Column rows is 100, indicating all rows are read. The query executes a table scan.

Create an index idx_title on the title column.

Explain the query of step 1 again.

In the EXPLAIN result, column key has value idx_title, indicating the query uses the index on title. Column rows is 1, indicating only one table row is read. The query executes an index scan, which is faster that the table scan of step 1.

Explain the query SELECT * FROM film WHERE title > 'ALONE TRIP';.

In the EXPLAIN result, column key is null, indicating the query does not use the idx_title index. Column rows is 100, indicating all rows are read. The query ignores the index and executes a table scan.

Explain the query SELECT rating, count(*) FROM film GROUP BY rating;

In the EXPLAIN result, column key is null, indicating no index is available for the query. Column rows is 100, indicating all rows are read. The query executes a table scan.

Create an index idx_rating on the rating column.

Explain the query of step 5 again.

In the EXPLAIN result, column key has value idx_rating, indicating the query reads rating values from the index. The query executes an index scan, which is faster than the table scan of step 5.

NOTES:

For submit-mode testing, all seven statements must appear in the correct order. Submit-mode tests display multiple result tables as one table.

SELECT * FROM film; generates too many characters to display in the zyLab environment. However, statements with less output, such as SELECT title FROM film;, execute successfully.

To run this lab in the Sakila database of MySQL Workbench, drop the index idx_title from film prior to executing statement 1.
 */
EXPLAIN
SELECT *
FROM film
WHERE title = 'ALONE TRIP';
CREATE INDEX idx_title ON film (title);
EXPLAIN
SELECT *
FROM film
WHERE title = 'ALONE TRIP';
EXPLAIN
SELECT *
FROM film
WHERE title > 'ALONE TRIP';
EXPLAIN
SELECT rating, count(*)
FROM film
GROUP BY rating;
CREATE INDEX idx_rating ON film (rating);
EXPLAIN
SELECT rating, count(*)
FROM film
GROUP BY rating;
