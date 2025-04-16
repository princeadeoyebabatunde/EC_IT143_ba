/*****************************************************************************************************************
NAME:    EC_IT143_6.3_fwt_s5_ba.sql
PURPOSE: Test the modification trigger on dbo.Employees.
MODIFICATION LOG:
Ver      Date        Author                 Description
-----   ----------   -------------------    -------------------------------------------------------------------------------
1.0     16/04/2024   Babatunde Adeoye       Script to test trigger functionality for EC IT440

RUNTIME: Xm Xs

NOTES: 
This script executes a dummy update to fire the trigger and then queries the modified row to display LastModifiedDate and LastModifiedBy.
******************************************************************************************************************/
-- to tests the trigger by updating a row and querying it to verify the new values.
-- Purpose: Test the trigger by performing an update and verifying that the LastModified columns are updated correctly.


-- Perform an update to trigger the AFTER UPDATE trigger

UPDATE dbo.Employees
SET ContactName = ContactName  -- dummy update to simulate modification
WHERE EmployeeID = 1;
GO

-- Verify that LastModifiedDate and LastModifiedBy were updated
SELECT EmployeeID, ContactName, LastModifiedDate, LastModifiedBy
FROM dbo.Employees
WHERE EmployeeID = 1;
GO
