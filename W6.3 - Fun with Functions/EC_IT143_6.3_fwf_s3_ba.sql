/*****************************************************************************************************************
NAME:    EC_IT143_6.3_fwf_s3_ba.sql
PURPOSE: Ad hoc query to extract the first name from ContactName in v_w3_schools_customers.
MODIFICATION LOG:
Ver      Date        Author                 Description
-----   ----------   -------------------    -------------------------------------------------------------------------------
1.0     16/04/2025   Babatunde Adeoye       Built ad hoc query for first name extraction

RUNTIME: Xm Xs

NOTES: 
This script uses the LEFT and CHARINDEX functions to extract the first name. The trick of concatenating a space helps handle cases where no space exists.
******************************************************************************************************************/
-- Purpose: I Create an ad hoc query to extract the first name using the view v_w3_schools_customers.
--- I runs an ad hoc query using basic string functions to extract the first name from ContactName in v_w3_schools_customers.

SELECT
    ContactName,
    LEFT(ContactName, CHARINDEX(' ', ContactName + ' ') - 1) AS FirstName_AdHoc
FROM dbo.v_w3_schools_customers;
GO
