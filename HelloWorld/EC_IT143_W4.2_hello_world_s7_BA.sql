-- EC_IT143_W4.2_hello_world_s7_BA.sql
CREATE PROCEDURE usp_LoadEmployeeCount
AS
BEGIN
    SET NOCOUNT ON;
    
    -- Clear and load EmployeeCountTable
    TRUNCATE TABLE dbo.EmployeeCountTable;
    INSERT INTO dbo.EmployeeCountTable (EmployeeCount)
    SELECT EmployeeCount FROM vw_EmployeeCount;
    
    SELECT 'Employee count table reloaded successfully.' AS Status;
END;
GO
