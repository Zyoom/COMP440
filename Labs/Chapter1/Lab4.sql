CREATE TABLE Song (
  ID INT,
  Title VARCHAR(60),
  Artist VARCHAR(60),
  ReleaseYear INT
);

INSERT INTO Song VALUES
  (100, 'Blinding Lights', 'The Weeknd', 2019),
  (200, 'One', 'U2', 1991),
  (300, 'You\'ve Lost That Lovin\' Feeling', 'The Righteous Brothers', 1964),
  (400, 'Johnny B. Goode', 'Chuck Berry', 1958);

-- Write your UPDATE statements here:
UPDATE Song
Set Title = 'With Or Without You'
WHERE ID = 100;

UPDATE Song
SET Artist = 'Aretha Franklin'
WHERE ID = 300;

UPDATE Song
SET ReleaseYear = 2021
WHERE ReleaseYear > 1990;


SELECT *
FROM Song;
/*
 he given SQL creates a Song table and inserts three songs.

Write three UPDATE statements to make the following changes:

Change the title from 'One' to 'With Or Without You'.
Change the artist from 'The Righteous Brothers' to 'Aretha Franklin'.
Change the release years of all songs after 1990 to 2021.
Run your solution and verify the songs in the result table reflect the changes above.
 */