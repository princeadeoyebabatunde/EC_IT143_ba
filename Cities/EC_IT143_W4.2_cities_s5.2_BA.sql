-- Altering the table to add a primary key
ALTER TABLE dbo.CityCountTable
ADD CityCountID INT IDENTITY(1,1) PRIMARY KEY;
GO
