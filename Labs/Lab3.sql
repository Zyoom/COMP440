CREATE TABLE Movie (
  ID INT AUTO_INCREMENT,
  Title VARCHAR(100),
  Rating CHAR(5) CHECK (Rating IN ('G', 'PG', 'PG-13', 'R')),
  ReleaseDate DATE,
  PRIMARY KEY (ID)
);

INSERT INTO Movie (Title, Rating, ReleaseDate) VALUES
  ('Casablanca', 'PG', '1943-01-23'),
  ('Bridget Jones\'s Diary', 'PG-13', '2001-04-13'),
  ('The Dark Knight', 'PG-13', '2008-07-18'),
  ('Hidden Figures', 'PG', '2017-01-06'),
  ('Toy Story', 'G', '1995-11-22'),
  ('Rocky', 'PG', '1976-11-21'),
  ('Crazy Rich Asians', 'PG-13', '2018-08-15');

-- Modify the SELECT statement:
SELECT *
FROM Movie
WHERE (ReleaseDate >= '2008-01-01' AND  Title = 'PG-13');

/*
 The given SQL creates a Movie table and inserts some movies. The SELECT statement selects all movies released before January 1, 2000.

Modify the SELECT statement to select the title and release date of PG-13 movies that are released after January 1, 2008.

Run your solution and verify the result table shows just the titles and release dates for The Dark Knight and Crazy Rich Asians.
 */