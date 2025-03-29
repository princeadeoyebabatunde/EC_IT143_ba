-- EC_IT143_W4.2_hello_world_s4_BA.sql
-- Creating a view to encapsulate the employee count query
CREATE VIEW vw_EmployeeCount AS
SELECT COUNT(*) AS EmployeeCount FROM Employees;
GO
