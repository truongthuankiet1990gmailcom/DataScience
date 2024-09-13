USE Netflix;
GO

-- Create the new table structure
CREATE TABLE netflix_cast_new (
    show_id NVARCHAR(MAX),
    cast NVARCHAR(MAX)
);
GO

-- Insert data into the new table
INSERT INTO netflix_cast_new (show_id, cast)
SELECT show_id, cast_1 AS cast FROM dbo.netflix_cast WHERE cast_1 IS NOT NULL
UNION
SELECT show_id, cast_2 AS cast FROM dbo.netflix_cast WHERE cast_2 IS NOT NULL
UNION
SELECT show_id, cast_3 AS cast FROM dbo.netflix_cast WHERE cast_3 IS NOT NULL
UNION
SELECT show_id, cast_4 AS cast FROM dbo.netflix_cast WHERE cast_4 IS NOT NULL
UNION
SELECT show_id, cast_5 AS cast FROM dbo.netflix_cast WHERE cast_5 IS NOT NULL
UNION
SELECT show_id, cast_6 AS cast FROM dbo.netflix_cast WHERE cast_6 IS NOT NULL
UNION
SELECT show_id, cast_7 AS cast FROM dbo.netflix_cast WHERE cast_7 IS NOT NULL
UNION
SELECT show_id, cast_8 AS cast FROM dbo.netflix_cast WHERE cast_8 IS NOT NULL
UNION
SELECT show_id, cast_9 AS cast FROM dbo.netflix_cast WHERE cast_9 IS NOT NULL
UNION
SELECT show_id, cast_10 AS cast FROM dbo.netflix_cast WHERE cast_10 IS NOT NULL
UNION
SELECT show_id, cast_11 AS cast FROM dbo.netflix_cast WHERE cast_11 IS NOT NULL
UNION
SELECT show_id, cast_12 AS cast FROM dbo.netflix_cast WHERE cast_12 IS NOT NULL
UNION
SELECT show_id, cast_13 AS cast FROM dbo.netflix_cast WHERE cast_13 IS NOT NULL
UNION
SELECT show_id, cast_14 AS cast FROM dbo.netflix_cast WHERE cast_14 IS NOT NULL
UNION
SELECT show_id, cast_15 AS cast FROM dbo.netflix_cast WHERE cast_15 IS NOT NULL
UNION
SELECT show_id, cast_16 AS cast FROM dbo.netflix_cast WHERE cast_16 IS NOT NULL
UNION
SELECT show_id, cast_17 AS cast FROM dbo.netflix_cast WHERE cast_17 IS NOT NULL
UNION
SELECT show_id, cast_18 AS cast FROM dbo.netflix_cast WHERE cast_18 IS NOT NULL
UNION
SELECT show_id, cast_19 AS cast FROM dbo.netflix_cast WHERE cast_19 IS NOT NULL
UNION
SELECT show_id, cast_20 AS cast FROM dbo.netflix_cast WHERE cast_20 IS NOT NULL
UNION
SELECT show_id, cast_21 AS cast FROM dbo.netflix_cast WHERE cast_21 IS NOT NULL
UNION
SELECT show_id, cast_22 AS cast FROM dbo.netflix_cast WHERE cast_22 IS NOT NULL
UNION
SELECT show_id, cast_23 AS cast FROM dbo.netflix_cast WHERE cast_23 IS NOT NULL
UNION
SELECT show_id, cast_24 AS cast FROM dbo.netflix_cast WHERE cast_24 IS NOT NULL
UNION
SELECT show_id, cast_25 AS cast FROM dbo.netflix_cast WHERE cast_25 IS NOT NULL
UNION
SELECT show_id, cast_26 AS cast FROM dbo.netflix_cast WHERE cast_26 IS NOT NULL
UNION
SELECT show_id, cast_27 AS cast FROM dbo.netflix_cast WHERE cast_27 IS NOT NULL
UNION
SELECT show_id, cast_28 AS cast FROM dbo.netflix_cast WHERE cast_28 IS NOT NULL
UNION
SELECT show_id, cast_29 AS cast FROM dbo.netflix_cast WHERE cast_29 IS NOT NULL
UNION
SELECT show_id, cast_30 AS cast FROM dbo.netflix_cast WHERE cast_30 IS NOT NULL
UNION
SELECT show_id, cast_31 AS cast FROM dbo.netflix_cast WHERE cast_31 IS NOT NULL
UNION
SELECT show_id, cast_32 AS cast FROM dbo.netflix_cast WHERE cast_32 IS NOT NULL
UNION
SELECT show_id, cast_33 AS cast FROM dbo.netflix_cast WHERE cast_33 IS NOT NULL
UNION
SELECT show_id, cast_34 AS cast FROM dbo.netflix_cast WHERE cast_34 IS NOT NULL
UNION
SELECT show_id, cast_35 AS cast FROM dbo.netflix_cast WHERE cast_35 IS NOT NULL
UNION
SELECT show_id, cast_36 AS cast FROM dbo.netflix_cast WHERE cast_36 IS NOT NULL
UNION
SELECT show_id, cast_37 AS cast FROM dbo.netflix_cast WHERE cast_37 IS NOT NULL
UNION
SELECT show_id, cast_38 AS cast FROM dbo.netflix_cast WHERE cast_38 IS NOT NULL
UNION
SELECT show_id, cast_39 AS cast FROM dbo.netflix_cast WHERE cast_39 IS NOT NULL
UNION
SELECT show_id, cast_40 AS cast FROM dbo.netflix_cast WHERE cast_40 IS NOT NULL
UNION
SELECT show_id, cast_41 AS cast FROM dbo.netflix_cast WHERE cast_41 IS NOT NULL
UNION
SELECT show_id, cast_42 AS cast FROM dbo.netflix_cast WHERE cast_42 IS NOT NULL
UNION
SELECT show_id, cast_43 AS cast FROM dbo.netflix_cast WHERE cast_43 IS NOT NULL
UNION
SELECT show_id, cast_44 AS cast FROM dbo.netflix_cast WHERE cast_44 IS NOT NULL
UNION
SELECT show_id, cast_45 AS cast FROM dbo.netflix_cast WHERE cast_45 IS NOT NULL
UNION
SELECT show_id, cast_46 AS cast FROM dbo.netflix_cast WHERE cast_46 IS NOT NULL
UNION
SELECT show_id, cast_47 AS cast FROM dbo.netflix_cast WHERE cast_47 IS NOT NULL
UNION
SELECT show_id, cast_48 AS cast FROM dbo.netflix_cast WHERE cast_48 IS NOT NULL
UNION
SELECT show_id, cast_49 AS cast FROM dbo.netflix_cast WHERE cast_49 IS NOT NULL
UNION
SELECT show_id, cast_50 AS cast FROM dbo.netflix_cast WHERE cast_50 IS NOT NULL;

-- Select from the new table to verify the results
SELECT * FROM netflix_cast_new;
