--1. DISTINCT PARA UMA ÚNICA COLUNA
SELECT 
    DISTINCT Country 
FROM 
    Customers;
--Obs: Sempre colocar o Distinct na frente da culuna que você quer fazer a distinção

SELECT 
    DISTINCT salary
FROM
    employees
ORDER BY salary DESC;

--------------------------------------------------------------------------------------
--2. DISTINC PARA DUAS COLUNAS
SELECT DISTINCT
	Country, 
    PostalCode
FROM 
	Customers;
