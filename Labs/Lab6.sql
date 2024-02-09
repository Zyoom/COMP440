CREATE TABLE Album (
  ID INT,
  Title VARCHAR(60),
  ReleaseYear INT,
  PRIMARY KEY (ID)
);

CREATE TABLE Song (
  ID INT,
  Title VARCHAR(60),
  Artist VARCHAR(60),
  AlbumID INT,
  PRIMARY KEY (ID),
  FOREIGN KEY (AlbumID) REFERENCES Album(ID)
);

SHOW COLUMNS
FROM Album;

SHOW COLUMNS
FROM Song;
/*
 The given SQL creates an Album table and a Song table. The CREATE TABLE statements do not specify primary or foreign key constraints. The SHOW COLUMNS queries show information about the Album and Song table columns.

Add three constraint clauses that specify primary and foreign keys, as follows:

Add a primary key constraint to the Album table's ID column.
Add a primary key constraint to the Song table's ID column.
Add a foreign key constraint to the Song table. This constraint specifies that the AlbumID column refers to the Album table's ID column.
After the constraint clauses are added, the SHOW COLUMNS result tables will show "PRI" in the Key column to indicate which Album and Song columns are primary keys, and "MUL" to indicate which Song column is the foreign key.
 */