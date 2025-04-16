/*****************************************************************************************************************
NAME:    EC_IT143_6.3_fwf_s4_ba.sql
PURPOSE: Test a solution that extracts the first name from ContactName with CASE logic.
MODIFICATION LOG:
Ver      Date        Author                 Description
-----   ----------   -------------------    -------------------------------------------------------------------------------
1.0     16/04/2024   Babatunde Adeoye       Improved logic for cases with or without spaces in the name

RUNTIME: Xm Xs

NOTES: 
This script applies a CASE expression. If a space exists, extract the left part; otherwise return the full ContactName.
******************************************************************************************************************/
-- Purpose: Research and test an improved solution for first name extraction (handles names without a space).
-- I improves the query using a CASE expression to gracefully handle names without spaces.

SELECT
    ContactName,
    CASE 
        WHEN CHARINDEX(' ', ContactName) > 0 
             THEN LEFT(ContactName, CHARINDEX(' ', ContactName) - 1)
        ELSE ContactName
    END AS FirstName_Test
FROM dbo.v_w3_schools_customers;
GO
