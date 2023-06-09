-- 1 Select com mais de uma condição
SELECT * FROM DimCustomer
WHERE MaritalStatus = 'M' AND EnglishEducation = 'Bachelors'

SELECT * FROM DimCustomer
WHERE MaritalStatus = 'M' OR EnglishEducation = 'Bachelors'

--2 - IS NOT NULL
SELECT * FROM DimCustomer
WHERE MiddleName IS NOT NULL

-- 3 - BETWEEN
SELECT FirstName, LastName, YearlyIncome 
FROM DimCustomer
WHERE YearlyIncome  BETWEEN 30000 AND 50000

--4 Aliases
SELECT 
	CustomerKey AS ID,  
	FirstName as NOME, 
	BirthDate AS DATA_NASCIMENTO, 
	EmailAddress AS EMAIL
FROM DimCustomer

--5 CriandO uma View a partir disso
CREATE VIEW VM_AT_ANIVERSARIANTES AS
SELECT 
	CustomerKey AS ID,  
	FirstName as NOME, 
	BirthDate AS DATA_NASCIMENTO, 
	EmailAddress AS EMAIL
FROM DimCustomer

SELECT * FROM VM_AT_ANIVERSARIANTES

