/*****************************************************************************************************************
NAME:    EC_IT143_6.3_fwf_s1_ba.sql
PURPOSE: Define the question for extracting the first name from ContactName.
MODIFICATION LOG:
Ver      Date        Author                 Description
-----   ----------   -------------------    -------------------------------------------------------------------------------
1.0     16/04/2025   Babatunde Adeoye       Built this script for EC IT440

RUNTIME: Xm Xs

NOTES: 
This file does not execute any code; it documents the question and serves as the introductory note for the approach.
******************************************************************************************************************/

-- This document is for the question and outline approach.
--Purpose: Define the question – “How can I extract the first name from the ContactName field in v_w3_schools_customers?”

-- Q1: How can I extract the first name from the ContactName field (e.g., 'John Doe' becomes 'John')?
-- A1: We will use T-SQL string functions (LEFT and CHARINDEX) to extract the first name.
SELECT GETDATE() AS my_date; -- Test query to check the environment (example only)
