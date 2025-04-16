/*****************************************************************************************************************
NAME:    EC_IT143_6.3_fwt_s3_ba.sql
PURPOSE: Run an ad hoc update on dbo.Employees to simulate a modification.
MODIFICATION LOG:
Ver      Date        Author                 Description
-----   ----------   -------------------    -------------------------------------------------------------------------------
1.0     16/04/2024   Babatunde Adeoye       Simulated an update to test later trigger behavior

RUNTIME: Xm Xs

NOTES: 
This script performs a dummy update (setting ContactName to itself) to see which rows would be affected.
******************************************************************************************************************/


-- I simulates an update that you intend to capture with a trigger.
--Purpose: Test an ad hoc update on the Employees table to simulate a modification (before creating the trigger).


UPDATE dbo.Employees
SET ContactName = ContactName  -- dummy update to simulate a modification event
WHERE EmployeeID = 1;
GO
