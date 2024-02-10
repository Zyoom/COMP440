-- Delete the horse with ID 5
DELETE FROM Horse
WHERE ID = 5;

-- Delete all horses with breed Holsteiner or Paint
DELETE FROM Horse
WHERE Breed IN ('Holsteiner', 'Paint');

-- Delete all horses born before March 13, 2013
DELETE FROM Horse
WHERE BirthDate < '2013-03-13';
/*
 2.18 LAB - Delete rows from Horse table
The Horse table has the following columns:

ID - integer, auto increment, primary key
RegisteredName - variable-length string
Breed - variable-length string
Height - decimal number
BirthDate - date
Delete the following rows:

Horse with ID 5.
All horses with breed Holsteiner or Paint.
All horses born before March 13, 2013.
 */