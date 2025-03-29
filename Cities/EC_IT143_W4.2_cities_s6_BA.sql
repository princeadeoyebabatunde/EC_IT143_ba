TRUNCATE TABLE dbo.CityCountTable;

INSERT INTO dbo.CityCountTable (CityCount)
SELECT CityCount FROM vw_CityCount;
GO
