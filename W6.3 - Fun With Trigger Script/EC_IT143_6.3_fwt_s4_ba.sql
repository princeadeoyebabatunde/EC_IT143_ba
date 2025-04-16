/*****************************************************************************************************************
NAME:    EC_IT143_6.3_fwt_s4_ba.sql
PURPOSE: Create an AFTER UPDATE trigger on dbo.Employees to automatically update modification info.
MODIFICATION LOG:
Ver      Date        Author                 Description
-----   ----------   -------------------    -------------------------------------------------------------------------------
1.0     16/04/2024   Babatunde Adeoye       Created trigger to capture LastModifiedDate and LastModifiedBy for EC IT440

RUNTIME: Xm Xs

NOTES: 
This trigger uses the inserted pseudo table to update the corresponding row's LastModifiedDate (using GETUTCDATE()) and LastModifiedBy (using SUSER_NAME()). It also prevents recursion by checking TRIGGER_NESTLEVEL().
******************************************************************************************************************/

-- defines an AFTER UPDATE trigger that sets LastModifiedDate (to the current UTC time) and LastModifiedBy (to the server login) for updated rows.

--- Purpose: Create the AFTER UPDATE trigger for dbo.Employees to update LastModifiedDate and LastModifiedBy.



CREATE TRIGGER dbo.trg_Employees_AfterUpdate
ON dbo.Employees
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;
    
    -- Prevent the trigger from firing recursively
    IF (TRIGGER_NESTLEVEL() > 1)
        RETURN;
    
    UPDATE e
    SET LastModifiedDate = GETUTCDATE(),
        LastModifiedBy = SUSER_NAME()  -- captures the current server login
    FROM dbo.Employees e
    INNER JOIN inserted i ON e.EmployeeID = i.EmployeeID;
END;
GO
