/*****************************************************************************************************************
NAME:    EC_IT143_6.3_fwt_s1_ba.sql
PURPOSE: Define the trigger-related question for tracking modifications.
MODIFICATION LOG:
Ver      Date        Author                 Description
-----   ----------   -------------------    -------------------------------------------------------------------------------
1.0     16/04/2024   Babatunde Adeoye       Initiated trigger question document for EC IT440

RUNTIME: Xm Xs

NOTES: 
This script contains only comments describing the problem and desired outcome for the trigger.
******************************************************************************************************************/
-- This document shows the requirement and approach for tracking modifications on the Employees table

---Purpose: Define the trigger question – “How do I automatically track the last modification details on the Employees table?

-- Q1: How do I automatically update LastModifiedDate and LastModifiedBy 
-- when a row in dbo.Employees is updated?
-- A1: We will create an AFTER UPDATE trigger that uses the inserted pseudo table.
SELECT GETDATE() AS my_date; -- Placeholder test query
