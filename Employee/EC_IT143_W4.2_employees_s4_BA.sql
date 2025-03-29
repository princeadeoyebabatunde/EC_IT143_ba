-- Creating a view to encapsulate the employee count query
CREATE VIEW vw_EmployeeCount AS
SELECT COUNT(*) AS EmployeeCount FROM Employees;
GO
