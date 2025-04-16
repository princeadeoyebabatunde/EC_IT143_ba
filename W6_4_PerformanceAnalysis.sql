-- Context: AdventureWorks2022
USE AdventureWorks2022;
GO

-- Stats for comparison
SET STATISTICS TIME ON;
SET STATISTICS IO ON;
GO

-- DEMO 1: Person.Person on MiddleName
SELECT BusinessEntityID, FirstName, LastName
  FROM Person.Person
 WHERE MiddleName = 'Ann';
-- Missing‑index appears in plan

-- Create if not exists
IF NOT EXISTS (
    SELECT 1
      FROM sys.indexes
     WHERE object_id = OBJECT_ID(N'Person.Person')
       AND name = N'IX_Person_MiddleName'
)
BEGIN
    CREATE NONCLUSTERED INDEX IX_Person_MiddleName
      ON Person.Person (MiddleName);
END
GO

-- Re‑test performance
SELECT BusinessEntityID, FirstName, LastName
  FROM Person.Person
 WHERE MiddleName = 'Ann';
GO

-- DEMO 2: Sales.SalesOrderHeader on OnlineOrderFlag
SELECT SalesOrderID, OrderDate, TotalDue
  FROM Sales.SalesOrderHeader
 WHERE OnlineOrderFlag = 1;
-- Missing‑index suggestion

-- Create if not exists
IF NOT EXISTS (
    SELECT 1
      FROM sys.indexes
     WHERE object_id = OBJECT_ID(N'Sales.SalesOrderHeader')
       AND name = N'IX_SOH_OnlineOrderFlag'
)
BEGIN
    CREATE NONCLUSTERED INDEX IX_SOH_OnlineOrderFlag
      ON Sales.SalesOrderHeader (OnlineOrderFlag);
END
GO

-- Re‑test performance
SELECT SalesOrderID, OrderDate, TotalDue
  FROM Sales.SalesOrderHeader
 WHERE OnlineOrderFlag = 1;
GO
