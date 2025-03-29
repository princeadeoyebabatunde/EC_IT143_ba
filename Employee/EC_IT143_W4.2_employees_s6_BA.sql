TRUNCATE TABLE dbo.EmployeeCountTable;

INSERT INTO dbo.EmployeeCountTable (EmployeeCount)
SELECT EmployeeCount FROM vw_EmployeeCount;
GO
