CREATE TABLE Movie (
   ID INT,
   Title VARCHAR(50),
   Genre VARCHAR(50),
   RatingCode VARCHAR(50),
   Year INT
);

ALTER TABLE Movie
ADD Producer VARCHAR(50);

ALTER TABLE Movie
DROP COLUMN Genre;

ALTER TABLE Movie
CHANGE COLUMN Year ReleaseYear SMALLINT;

/*
 The Movie table has the following columns:

ID - positive integer
Title - variable-length string
Genre - variable-length string
RatingCode - variable-length string
Year - integer
Write ALTER statements to make the following modifications to the Movie table:

Add a Producer column with VARCHAR data type (max 50 chars).
Remove the Genre column.
Change the Year column's name to ReleaseYear, and change the data type to SMALLINT.
 */