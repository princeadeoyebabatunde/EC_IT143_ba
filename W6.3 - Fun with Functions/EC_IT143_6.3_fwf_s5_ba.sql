/*****************************************************************************************************************
NAME:    EC_IT143_6.3_fwf_s5_ba.sql
PURPOSE: Create a scalar user-defined function to extract the first name from ContactName.
MODIFICATION LOG:
Ver      Date        Author                 Description
-----   ----------   -------------------    -------------------------------------------------------------------------------
1.0     16/04/2024   Babatunde Adeoye       Created UDF for first name extraction for EC IT440

RUNTIME: Xm Xs

NOTES: 
The function dbo.fn_GetFirstName accepts a ContactName, then returns the first name using CASE logic.
******************************************************************************************************************/

--Purpose: Create a scalar function (UDF) for extracting the first name.
---I wraps this logic in a scalar UDF (fn_GetFirstName).


CREATE FUNCTION dbo.fn_GetFirstName (@ContactName VARCHAR(255))
RETURNS VARCHAR(255)
AS
BEGIN
    DECLARE @FirstName VARCHAR(255);
    SET @FirstName = CASE 
                         WHEN CHARINDEX(' ', @ContactName) > 0 
                             THEN LEFT(@ContactName, CHARINDEX(' ', @ContactName) - 1)
                         ELSE @ContactName
                     END;
    RETURN @FirstName;
END;
GO
