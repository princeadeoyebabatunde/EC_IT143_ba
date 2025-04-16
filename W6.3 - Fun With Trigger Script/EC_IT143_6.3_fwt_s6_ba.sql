/*****************************************************************************************************************
NAME:    EC_IT143_6.3_fwt_s6_ba.sql
PURPOSE: Provide final verification and additional notes for the Employees trigger.
MODIFICATION LOG:
Ver      Date        Author                 Description
-----   ----------   -------------------    -------------------------------------------------------------------------------
1.0     16/04/2024   Babatunde Adeoye       Final verification script for EC IT440 trigger deliverable

RUNTIME: Xm Xs

NOTES: 
This script prints a note for manual verification to ensure that LastModifiedBy matches the current server login.
******************************************************************************************************************/

-- provides a final note, prompting manual verification of the updated trigger information.

-- Purpose: Final verification/notes for the trigger solution.

SELECT 
    'Please verify that LastModifiedBy equals the current server login (e.g., ' + SUSER_NAME() + ')' AS VerificationNote;
GO
