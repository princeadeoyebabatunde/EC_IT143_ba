-- Creating a view to encapsulate the city count query
CREATE VIEW vw_CityCount AS
SELECT COUNT(*) AS CityCount FROM Cities;
GO
