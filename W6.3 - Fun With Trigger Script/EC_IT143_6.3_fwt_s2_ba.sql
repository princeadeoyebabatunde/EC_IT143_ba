/*****************************************************************************************************************
NAME:    EC_IT143_6.3_fwt_s2_ba.sql
PURPOSE: Document the plan for building the trigger to track modifications on the Employees table.
MODIFICATION LOG:
Ver      Date        Author                 Description
-----   ----------   -------------------    -------------------------------------------------------------------------------
1.0     16/04/2024   Babatunde Adeoye       Documented trigger plan for EC IT440

RUNTIME: Xm Xs

NOTES: 
Our approach uses an AFTER UPDATE trigger to update LastModifiedDate and LastModifiedBy using GETUTCDATE() and SUSER_NAME().
******************************************************************************************************************/
-- This document shows the requirement and approach for tracking modifications on the Employees table

-- Purpose: Document your current status and the planned approach for the trigger solution.
-- Q1: How do I update modification details automatically?
-- A1: Create an AFTER UPDATE trigger on dbo.Employees that sets LastModifiedDate and LastModifiedBy.
SELECT GETDATE() AS my_date;  -- Placeholder for testing the environment
