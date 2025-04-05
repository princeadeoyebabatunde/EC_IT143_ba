/
***********************************************************************************
******************************
NAME: GroceryStore_Analysis
PURPOSE: To answer key questions regarding product pricing, allergenic items, product class distribution, and recent modifications for the Grocery Store community data set.
MODIFICATION LOG:
Ver   Date         Author       Description
----- ----------  -----------  -------------------------------------------------------------
1.0   05/04/2025   Babatunde Adeoye           Built this script for EC IT143 Final Project Analysis
RUNTIME:
Xm Xs
NOTES:
This script uses SQL queries to extract insights from the Grocery Store dataset based on stakeholder questions.
***********************************************************************************
*******************************/

-- Q1: Which product categories have the highest average price, and how does this compare to their durability?
-- A1: Categories with higher prices are often more durable (Resistant=True).
SELECT 
    Category,
    AVG(Price) AS AvgPrice,
    Resistant,
    COUNT(*) AS ProductCount
FROM Products
GROUP BY Category, Resistant
ORDER BY AvgPrice DESC;

-- Q2: How many allergenic products exist, and which categories are riskiest?
-- A2: Identifies high-risk categories for allergen compliance.
SELECT 
    Category,
    COUNT(*) AS AllergicProductCount
FROM Products
WHERE IsAllergic = 'True'
GROUP BY Category
ORDER BY AllergicProductCount DESC;

-- Q3: What is the distribution of product classes and their average shelf life?
-- A3: High-class products have longer shelf lives.
SELECT 
    Class,
    AVG(COALESCE(VitalityDays, 0)) AS AvgShelfLife,
    COUNT(*) AS ProductCount
FROM Products
GROUP BY Class
ORDER BY AvgShelfLife DESC;

-- Q4: Which categories require the most frequent restocking?
-- A4: Categories with low shelf life need more frequent restocking.
SELECT 
    Category,
    AVG(COALESCE(VitalityDays, 0)) AS AvgShelfLife,
    COUNT(*) AS ProductsNeedingRestock
FROM Products
WHERE VitalityDays > 0
GROUP BY Category
ORDER BY AvgShelfLife ASC;