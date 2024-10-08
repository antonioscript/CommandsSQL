--Sintax:
SELECT 
    column_name(s)
FROM 
    table1
FULL OUTER JOIN 
    table2
ON table1.column_name = table2.column_name
WHERE 
    condition;

--1. 
SELECT 
    Customers.CustomerName, 
    Orders.OrderID
FROM 
    Customers
FULL OUTER JOIN Orders ON Customers.CustomerID=Orders.CustomerID
ORDER BY Customers.CustomerName;