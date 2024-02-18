SELECT RegisteredName, Height, BirthDate
FROM Horse
WHERE (Height BETWEEN 15.0 AND 16.0)
    OR (BirthDate >= '2020-01-01')