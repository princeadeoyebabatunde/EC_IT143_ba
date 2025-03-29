-- Altering the table to add a primary key
ALTER TABLE dbo.EmployeeCountTable
ADD EmployeeCountID INT IDENTITY(1,1) PRIMARY KEY;
GO
