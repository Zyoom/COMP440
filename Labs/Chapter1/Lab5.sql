
CREATE TABLE Movie (
  ID INT AUTO_INCREMENT,
  Title VARCHAR(100),
  Rating CHAR(5) CHECK (Rating IN ('G', 'PG', 'PG-13', 'R')),
  ReleaseDate DATE,
  PRIMARY KEY (ID)
);

-- Write your INSERT statement here:
INSERT INTO Movie (Title, Rating, ReleaseDate) VALUES
('Raiders of the Lost Ark', 'PG',	'1981-06-15'),
('The Godfather', 'R',	'1972-03-24'),
('The Pursuit of Happyness',	'PG-13',	'2006-12-15');



SELECT *
FROM Movie;

/*
 The given SQL creates a Movie table with an auto-incrementing ID column.

Write a single INSERT statement immediately after the CREATE TABLE statement that inserts the following movies:

Title	Rating	Release Date
Raiders of the Lost Ark	PG	June 15, 1981
The Godfather	R	March 24, 1972
The Pursuit of Happyness	PG-13	December 15, 2006

Note that dates above need to be converted into 'YYYY-MM-DD' format (with single quotes) in the INSERT statement.

Run your solution and verify the movies in the result table have the auto-assigned IDs 1, 2, and 3.
 */