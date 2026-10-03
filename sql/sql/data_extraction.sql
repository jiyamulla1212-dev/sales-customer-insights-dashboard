-- Sales Performance & Customer Insights
-- SQL Data Extraction Query

SELECT 
    t.TransactionID,
    t.Date AS TransactionDate,
    t.CustomerID,
    c.CustomerName,
    c.Segment AS CustomerSegment,
    c.JoinDate,
    c.IsChurned,
    t.ProductID,
    p.ProductName,
    p.Category AS ProductCategory,
    t.Quantity,
    t.UnitPrice,
    t.Discount,
    (t.Quantity * t.UnitPrice * (1 - t.Discount)) AS SalesAmount,
    (t.Quantity * t.UnitCost) AS TotalCost,
    ((t.Quantity * t.UnitPrice * (1 - t.Discount))
        - (t.Quantity * t.UnitCost)) AS ProfitAmount,
    g.Region,
    g.Country
FROM Transactions t
INNER JOIN Customers c
    ON t.CustomerID = c.CustomerID
INNER JOIN Products p
    ON t.ProductID = p.ProductID
INNER JOIN Geography g
    ON c.GeographyID = g.GeographyID
WHERE t.Date >= '2023-01-01';
