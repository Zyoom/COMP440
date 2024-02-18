SELECT m.Title, m.Year, r.Description AS Rating_Description
FROM Movie m
LEFT JOIN Rating r ON m.RatingCode = r.Code;



/*
The Movie table has the following columns:

ID - integer, primary key
Title - variable-length string
Genre - variable-length string
RatingCode - variable-length string
Year - integer
The Rating table has the following columns:

Code - variable-length string, primary key
Description - variable-length string
Write a SELECT statement to select the Title, Year, and rating Description. Display all movies, whether or not a RatingCode is available.

Hint: Perform a LEFT JOIN on the Movie and Rating tables, matching the RatingCode and Code columns.

 */