CREATE PROCEDURE usp_LoadCityCount
AS
BEGIN
    SET NOCOUNT ON;
    
    -- Clear the table and reload data from the view
    TRUNCATE TABLE dbo.CityCountTable;
    INSERT INTO dbo.CityCountTable (CityCount)
    SELECT CityCount FROM vw_CityCount;
    
    SELECT 'City count table reloaded successfully.' AS Status;
END;
GO
