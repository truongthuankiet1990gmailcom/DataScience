USE Netflix;
GO

-- Create the SplitString function
CREATE FUNCTION dbo.SplitString (
    @string NVARCHAR(MAX),
    @delimiter CHAR(1)
)
RETURNS @output TABLE (
    ID INT IDENTITY(1,1),
    splitdata NVARCHAR(MAX)
)
AS
BEGIN
    DECLARE @start INT, @end INT;
    SELECT @start = 1, @end = CHARINDEX(@delimiter, @string);
    WHILE @start < LEN(@string) + 1
    BEGIN
        IF @end = 0 
            SET @end = LEN(@string) + 1;

        INSERT INTO @output (splitdata)
        VALUES(SUBSTRING(@string, @start, @end - @start));

        SET @start = @end + 1;
        SET @end = CHARINDEX(@delimiter, @string, @start);
    END
    RETURN;
END;
GO

-- Create the netflix_cast table
CREATE TABLE netflix_cast(
    show_id NVARCHAR(MAX),
    cast_1 NVARCHAR(MAX),
    cast_2 NVARCHAR(MAX),
    cast_3 NVARCHAR(MAX),
    cast_4 NVARCHAR(MAX),
    cast_5 NVARCHAR(MAX),
    cast_6 NVARCHAR(MAX),
    cast_7 NVARCHAR(MAX),
    cast_8 NVARCHAR(MAX),
    cast_9 NVARCHAR(MAX),
    cast_10 NVARCHAR(MAX),
    cast_11 NVARCHAR(MAX),
    cast_12 NVARCHAR(MAX),
    cast_13 NVARCHAR(MAX),
    cast_14 NVARCHAR(MAX),
    cast_15 NVARCHAR(MAX),
    cast_16 NVARCHAR(MAX),
    cast_17 NVARCHAR(MAX),
    cast_18 NVARCHAR(MAX),
    cast_19 NVARCHAR(MAX),
    cast_20 NVARCHAR(MAX),
    cast_21 NVARCHAR(MAX),
    cast_22 NVARCHAR(MAX),
    cast_23 NVARCHAR(MAX),
    cast_24 NVARCHAR(MAX),
    cast_25 NVARCHAR(MAX),
    cast_26 NVARCHAR(MAX),
    cast_27 NVARCHAR(MAX),
    cast_28 NVARCHAR(MAX),
    cast_29 NVARCHAR(MAX),
    cast_30 NVARCHAR(MAX),
    cast_31 NVARCHAR(MAX),
    cast_32 NVARCHAR(MAX),
    cast_33 NVARCHAR(MAX),
    cast_34 NVARCHAR(MAX),
    cast_35 NVARCHAR(MAX),
    cast_36 NVARCHAR(MAX),
    cast_37 NVARCHAR(MAX),
    cast_38 NVARCHAR(MAX),
    cast_39 NVARCHAR(MAX),
    cast_40 NVARCHAR(MAX),
    cast_41 NVARCHAR(MAX),
    cast_42 NVARCHAR(MAX),
    cast_43 NVARCHAR(MAX),
    cast_44 NVARCHAR(MAX),
    cast_45 NVARCHAR(MAX),
    cast_46 NVARCHAR(MAX),
    cast_47 NVARCHAR(MAX),
    cast_48 NVARCHAR(MAX),
    cast_49 NVARCHAR(MAX),
    cast_50 NVARCHAR(MAX)
);

-- Insert into netflix_cast table, including rows with NULL cast values
INSERT INTO netflix_cast (
    show_id, cast_1, cast_2, cast_3, cast_4, cast_5, cast_6, cast_7, cast_8, cast_9, cast_10,
    cast_11, cast_12, cast_13, cast_14, cast_15, cast_16, cast_17, cast_18, cast_19, cast_20,
    cast_21, cast_22, cast_23, cast_24, cast_25, cast_26, cast_27, cast_28, cast_29, cast_30,
    cast_31, cast_32, cast_33, cast_34, cast_35, cast_36, cast_37, cast_38, cast_39, cast_40,
    cast_41, cast_42, cast_43, cast_44, cast_45, cast_46, cast_47, cast_48, cast_49, cast_50
)
SELECT 
    show_id,
    MAX(CASE WHEN ID = 1 THEN splitdata END) AS cast_1,
    MAX(CASE WHEN ID = 2 THEN splitdata END) AS cast_2,
    MAX(CASE WHEN ID = 3 THEN splitdata END) AS cast_3,
    MAX(CASE WHEN ID = 4 THEN splitdata END) AS cast_4,
    MAX(CASE WHEN ID = 5 THEN splitdata END) AS cast_5,
    MAX(CASE WHEN ID = 6 THEN splitdata END) AS cast_6,
    MAX(CASE WHEN ID = 7 THEN splitdata END) AS cast_7,
    MAX(CASE WHEN ID = 8 THEN splitdata END) AS cast_8,
    MAX(CASE WHEN ID = 9 THEN splitdata END) AS cast_9,
    MAX(CASE WHEN ID = 10 THEN splitdata END) AS cast_10,
    MAX(CASE WHEN ID = 11 THEN splitdata END) AS cast_11,
    MAX(CASE WHEN ID = 12 THEN splitdata END) AS cast_12,
    MAX(CASE WHEN ID = 13 THEN splitdata END) AS cast_13,
    MAX(CASE WHEN ID = 14 THEN splitdata END) AS cast_14,
    MAX(CASE WHEN ID = 15 THEN splitdata END) AS cast_15,
    MAX(CASE WHEN ID = 16 THEN splitdata END) AS cast_16,
    MAX(CASE WHEN ID = 17 THEN splitdata END) AS cast_17,
    MAX(CASE WHEN ID = 18 THEN splitdata END) AS cast_18,
    MAX(CASE WHEN ID = 19 THEN splitdata END) AS cast_19,
    MAX(CASE WHEN ID = 20 THEN splitdata END) AS cast_20,
    MAX(CASE WHEN ID = 21 THEN splitdata END) AS cast_21,
    MAX(CASE WHEN ID = 22 THEN splitdata END) AS cast_22,
    MAX(CASE WHEN ID = 23 THEN splitdata END) AS cast_23,
    MAX(CASE WHEN ID = 24 THEN splitdata END) AS cast_24,
    MAX(CASE WHEN ID = 25 THEN splitdata END) AS cast_25,
    MAX(CASE WHEN ID = 26 THEN splitdata END) AS cast_26,
    MAX(CASE WHEN ID = 27 THEN splitdata END) AS cast_27,
    MAX(CASE WHEN ID = 28 THEN splitdata END) AS cast_28,
    MAX(CASE WHEN ID = 29 THEN splitdata END) AS cast_29,
    MAX(CASE WHEN ID = 30 THEN splitdata END) AS cast_30,
    MAX(CASE WHEN ID = 31 THEN splitdata END) AS cast_31,
    MAX(CASE WHEN ID = 32 THEN splitdata END) AS cast_32,
    MAX(CASE WHEN ID = 33 THEN splitdata END) AS cast_33,
    MAX(CASE WHEN ID = 34 THEN splitdata END) AS cast_34,
    MAX(CASE WHEN ID = 35 THEN splitdata END) AS cast_35,
    MAX(CASE WHEN ID = 36 THEN splitdata END) AS cast_36,
    MAX(CASE WHEN ID = 37 THEN splitdata END) AS cast_37,
    MAX(CASE WHEN ID = 38 THEN splitdata END) AS cast_38,
    MAX(CASE WHEN ID = 39 THEN splitdata END) AS cast_39,
    MAX(CASE WHEN ID = 40 THEN splitdata END) AS cast_40,
    MAX(CASE WHEN ID = 41 THEN splitdata END) AS cast_41,
    MAX(CASE WHEN ID = 42 THEN splitdata END) AS cast_42,
    MAX(CASE WHEN ID = 43 THEN splitdata END) AS cast_43,
    MAX(CASE WHEN ID = 44 THEN splitdata END) AS cast_44,
    MAX(CASE WHEN ID = 45 THEN splitdata END) AS cast_45,
    MAX(CASE WHEN ID = 46 THEN splitdata END) AS cast_46,
    MAX(CASE WHEN ID = 47 THEN splitdata END) AS cast_47,
    MAX(CASE WHEN ID = 48 THEN splitdata END) AS cast_48,
    MAX(CASE WHEN ID = 49 THEN splitdata END) AS cast_49,
    MAX(CASE WHEN ID = 50 THEN splitdata END) AS cast_50
FROM 
(
    SELECT show_id, splitdata, ROW_NUMBER() OVER(PARTITION BY show_id ORDER BY ID) AS ID
    FROM 
        dbo.netflix_titles
    CROSS APPLY dbo.SplitString(cast, ', ')
    WHERE cast IS NOT NULL
) AS Splitted
GROUP BY show_id;

-- Insert rows with NULL cast values directly
INSERT INTO netflix_cast (show_id, cast_1)
SELECT show_id, NULL
FROM dbo.netflix_titles
WHERE cast IS NULL;

-- Select from netflix_cast table
SELECT * FROM dbo.netflix_cast ORDER BY show_id asc;
