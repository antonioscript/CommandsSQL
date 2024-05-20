--Sintaxe:
SELECT 
    column_name(s)
FROM 
    table_name
WHERE 
    condition
GROUP BY 
    column_name(s)
ORDER BY 
    column_name(s);

--1. 
SELECT 
    fruit
FROM 
    sample_table
GROUP BY 
    fruit;