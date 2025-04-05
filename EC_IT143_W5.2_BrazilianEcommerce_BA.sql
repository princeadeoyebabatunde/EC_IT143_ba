/
***********************************************************************************
******************************
NAME: BrazEcomm_Analysis
PURPOSE: To answer key questions regarding product pricing with review scores, order designations, and order value distribution for the Brazillian E-Commerce community dataset.
MODIFICATION LOG:
Ver   Date         Author       Description
----- ----------  -----------  -------------------------------------------------------------
1.0   05/04/2025   Babatunde Adeoye
Xm Xs
NOTES:
This script uses SQL queries to derive insights from the Brazillian E-Commerce dataset based on stakeholder inquiries.
***********************************************************************************
*******************************/

-- Q1: Which states have the highest average order values and delivery times?
-- A1: Urban states like São Paulo have higher order values but longer delivery times.
SELECT 
    c.State,
    AVG(o.PaymentValue) AS AvgOrderValue,
    AVG(DATEDIFF(day, o.OrderDate, o.DeliveryDate)) AS AvgDeliveryDays
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
GROUP BY c.State
ORDER BY AvgOrderValue DESC;

-- Q2: How do prices correlate with review scores by category?
-- A2: Higher-priced categories generally have better reviews.
SELECT 
    p.Category,
    AVG(p.Price) AS AvgPrice,
    AVG(r.ReviewScore) AS AvgReviewScore
FROM Products p
JOIN Reviews r ON p.ProductID = r.ProductID
GROUP BY p.Category
ORDER BY AvgPrice DESC;

-- Q3: What is the most common crime type in the community? (Peer question from Crime & Safety dataset)
-- A3: Theft is the most frequently reported crime.
SELECT 
    CrimeType,
    COUNT(*) AS IncidentCount
FROM CrimeReports
GROUP BY CrimeType
ORDER BY IncidentCount DESC;

-- Q4: How does delivery time impact review scores? 
-- A4: Longer delivery times correlate with lower review scores.
SELECT 
    DATEDIFF(day, o.OrderDate, o.DeliveryDate) AS DeliveryDays,
    AVG(r.ReviewScore) AS AvgReviewScore
FROM Orders o
JOIN Reviews r ON o.OrderID = r.OrderID
GROUP BY DATEDIFF(day, o.OrderDate, o.DeliveryDate)
ORDER BY DeliveryDays DESC;