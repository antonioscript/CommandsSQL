--Sintaxe:
--Retorna a média
SELECT 
    AVG(column_name)
FROM 
    table_name
WHERE 
    condition;

--1. 
SELECT 
    AVG(salary)
FROM
    employees;

--2. Pra ter uma médida exata, talvez seja interessante fazer um distinct
SELECT 
    AVG(DISTINCT salary)
FROM
    employees;