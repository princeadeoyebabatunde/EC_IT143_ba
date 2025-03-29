CREATE PROCEDURE usp_LoadEmployeeCount
AS
BEGIN
    SET NOCOUNT ON;
    
    -- Clear the table and reload data from the view
    TRUNCATE TABLE dbo.EmployeeCountTable;
    INSERT INTO dbo.EmployeeCountTable (EmployeeCount)
    SELECT EmployeeCount FROM vw_EmployeeCount;
    
    SELECT 'Employee count table reloaded successfully.' AS Status;
END;
GO
