use Netflix
go

CREATE TABLE netflix_listed_in (
    show_id nvarchar(255),
    listed_in_1 nVARCHAR(255),
    listed_in_2 nVARCHAR(255),
    listed_in_3 nVARCHAR(255)
);
INSERT INTO netflix_listed_in (show_id, listed_in_1, listed_in_2, listed_in_3)
SELECT 
    show_id,
    PARSENAME(REPLACE(listed_in, ', ', '.'), 1) AS listed_in_1,
    PARSENAME(REPLACE(listed_in, ', ', '.'), 2) AS listed_in_2,
    PARSENAME(REPLACE(listed_in, ', ', '.'), 3) AS listed_in_3
FROM 
    dbo.netflix_titles;

select * from dbo.netflix_listed_in