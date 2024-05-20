--Sintaxe:
SELECT column_name(s)
FROM table1
INNER JOIN table2
ON table1.column_name = table2.column_name;

--1. 
SELECT 
    ProductID, 
    ProductName, 
    CategoryName
FROM 
    Products
INNER JOIN 
    Categories ON Products.CategoryID = Categories.CategoryID;

--1.1 - It is a good practice to include the table name when specifying columns in the SQL statement.
SELECT 
    Products.ProductID, 
    Products.ProductName, 
    Categories.CategoryName
FROM 
    Products
INNER JOIN 
    Categories ON Products.CategoryID = Categories.CategoryID;

--2. 
SELECT 
    Orders.OrderID, 
    Customers.CustomerName, 
    Orders.OrderDate
FROM 
    Orders
INNER JOIN 
    Customers ON Orders.CustomerID=Customers.CustomerID;


--Obs: JOIN or INNER JOIN
JOIN and INNER JOIN will return the same result.