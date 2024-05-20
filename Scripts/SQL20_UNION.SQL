--Sintax:
SELECT 
    column_name(s) 
    FROM 
        table1
    UNION
SELECT 
    column_name(s) 
    FROM 
        table2;

--1. 
SELECT 
    City 
FROM 
    Customers
UNION
SELECT 
    City 
    FROM 
    Suppliers
ORDER BY City;