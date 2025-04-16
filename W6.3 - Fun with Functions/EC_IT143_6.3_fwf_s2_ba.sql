/*****************************************************************************************************************
NAME:    EC_IT143_6.3_fwf_s2_ba.sql
PURPOSE: Document the starting point and plan the answer for extracting first names.
MODIFICATION LOG:
Ver      Date        Author                 Description
-----   ----------   -------------------    -------------------------------------------------------------------------------
1.0     16/04/2025   Babatunde Adeoye       Documented the thought process for EC IT440

RUNTIME: Xm Xs

NOTES: 
This script contains comments about the current journey. The idea is to use T-SQL string functions like LEFT and CHARINDEX.
******************************************************************************************************************/
-- This document is for the question and outline approach.
-- Purpose: To Document the current state of my solution and my planned approach for the answer

-- Q1: How can I extract the first name from the ContactName field?
-- A1: We will use a combination of string functions. For example, if ContactName = 'John Doe', then FIRSTNAME = 'John'.
SELECT GETDATE() AS my_date;  -- Test query; serves as a placeholder
