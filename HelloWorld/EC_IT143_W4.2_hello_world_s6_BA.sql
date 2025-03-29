-- EC_IT143_W4.2_hello_world_s6_BA.sql
TRUNCATE TABLE dbo.EmployeeCountTable;
INSERT INTO dbo.EmployeeCountTable (EmployeeCount)
SELECT EmployeeCount FROM vw_EmployeeCount;
GO
