-- Creating a view to encapsulate the employee count query
IF OBJECT_ID('dbo.vw_EmployeeCount', 'V') IS NOT NULL
    DROP VIEW dbo.vw_EmployeeCount;
GO

CREATE VIEW dbo.vw_EmployeeCount
AS
    SELECT COUNT(*) AS TotalEmployees
    FROM Employees;
GO
