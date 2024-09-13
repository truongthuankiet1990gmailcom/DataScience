use Netflix
go

CREATE TABLE netflix_listed_in_new (
    show_id NVARCHAR(MAX),
    category NVARCHAR(MAX)
);
GO 

INSERT INTO netflix_listed_in_new (show_id, category)
SELECT show_id, listed_in_1 AS category FROM dbo.netflix_listed_in WHERE listed_in_1 IS NOT NULL
UNION
SELECT show_id, listed_in_2 AS category FROM dbo.netflix_listed_in WHERE listed_in_2 IS NOT NULL
UNION
SELECT show_id, listed_in_3 AS category FROM dbo.netflix_listed_in WHERE listed_in_3 IS NOT NULL

select * from netflix_listed_in_new