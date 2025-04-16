/*****************************************************************************************************************
NAME:    EC_IT143_6.3_fwf_s8_ba.sql
PURPOSE: Extract the last name from ContactName and create a corresponding UDF.
MODIFICATION LOG:
Ver      Date        Author                 Description
-----   ----------   -------------------    -------------------------------------------------------------------------------
1.0     16/04/2024   Babatunde Adeoye       Created ad hoc query and UDF for last name extraction

RUNTIME: Xm Xs

NOTES: 
For names with at least one space, the last name is defined as the substring after the first space.
******************************************************************************************************************/
-- Purpose: I Extract the last name – both an ad hoc query and a UDF solution for the last name extraction.
-- I demonstrates how to extract the last name by both an ad hoc query and a scalar UDF (fn_GetLastName).
-- Ad hoc Query for Last Name Extraction:

SELECT
    ContactName,
    CASE 
         WHEN CHARINDEX(' ', ContactName) > 0 
         THEN SUBSTRING(ContactName, CHARINDEX(' ', ContactName) + 1, LEN(ContactName))
         ELSE NULL
    END AS LastName_AdHoc
FROM dbo.v_w3_schools_customers;
GO

-- Create UDF for Last Name Extraction:
CREATE FUNCTION dbo.fn_GetLastName (@ContactName VARCHAR(255))
RETURNS VARCHAR(255)
AS
BEGIN
    DECLARE @LastName VARCHAR(255);
    SET @LastName = CASE 
                        WHEN CHARINDEX(' ', @ContactName) > 0 
                        THEN SUBSTRING(@ContactName, CHARINDEX(' ', @ContactName) + 1, LEN(@ContactName))
                        ELSE NULL
                    END;
    RETURN @LastName;
END;
GO

-- Compare UDF to ad hoc method for Last Name:
SELECT
    ContactName,
    dbo.fn_GetLastName(ContactName) AS LastName_UDF,
    CASE 
         WHEN CHARINDEX(' ', ContactName) > 0 
         THEN SUBSTRING(ContactName, CHARINDEX(' ', ContactName) + 1, LEN(ContactName))
         ELSE NULL
    END AS LastName_AdHoc
FROM dbo.v_w3_schools_customers;
GO
