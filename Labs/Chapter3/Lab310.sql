-- Your SELECT statement goes here
SELECT Year, COUNT(*) AS TotalMovies
FROM Movie
GROUP BY Year;
/*
 3.10 LAB - Select number of movies grouped by year
The Movie table has the following columns:

ID - integer, primary key
Title - variable-length string
Genre - variable-length string
RatingCode - variable-length string
Year - integer
Write a SELECT statement to select the year and the total number of movies for that year.

Hint: Use the COUNT() function and GROUP BY clause.
 */