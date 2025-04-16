/*****************************************************************************************************************
NAME:    EC_IT143_6.3_fwf_s6_ba.sql
PURPOSE: Compare first name extraction results of the UDF vs. the ad hoc method.
MODIFICATION LOG:
Ver      Date        Author                 Description
-----   ----------   -------------------    -------------------------------------------------------------------------------
1.0     16/04/2024   Babatunde Adeoye       Built comparison script for first name extraction

RUNTIME: Xm Xs

NOTES: 
This script selects ContactName, extracts the first name using the UDF and the ad hoc query to check consistency.
******************************************************************************************************************/
-- Purpose: Compare the output of your UDF to the ad hoc query results.

-- I compares the UDF result with the ad hoc method for consistency.

SELECT
    ContactName,
    dbo.fn_GetFirstName(ContactName) AS FirstName_UDF,
    LEFT(ContactName, CHARINDEX(' ', ContactName + ' ') - 1) AS FirstName_AdHoc
FROM dbo.v_w3_schools_customers;
GO
