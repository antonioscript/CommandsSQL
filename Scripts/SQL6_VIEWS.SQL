USE AdventureWorksDW2022

--1 Criando uma view simples apenas com as informações que queremos

CREATE VIEW vmAtSimpleView AS
SELECT CustomerKey, FirstName, LastName, EmailAddress, Phone
FROM DimCustomer

SELECT * FROM vmAtSimpleView


--2 Criando uma view com algumas condições
CREATE VIEW vmAtBachelors2 AS
SELECT CustomerKey, FirstName, LastName, EmailAddress, Phone, EnglishEducation
FROM DimCustomer
WHERE EnglishEducation = 'Bachelors'
GO

SELECT * FROM vmAtBachelors2
GO

--3 Criando uma view com algumas condições e mudando o nome das colunas
CREATE VIEW vm_AT_MaterialStatus_PT_BR AS
SELECT CustomerKey AS CHAVE_FUNCIONARIO,
	   FirstName AS NOME,
	   LastName AS SOBRENOME,
	   EmailAddress AS EMAIL,
	   Phone AS TELEFONE,
	   EnglishEducation AS NIVREL_ACADEMICO
FROM DimCustomer
WHERE MaritalStatus = 'M'
GO

SELECT * FROM vm_AT_MaterialStatus_PT_BR
GO

--4 Criando uma view com dados de outro banco (Contoso)
USE AdventureWorksDW2022
GO

CREATE VIEW VM_AT_SisContoso_BR AS
SELECT 
	EmployeeKey as ID, 
	FirstName as NOME, 
	LastName as SOBRENOME,
	EmailAddress as EMAIL,
	Phone as TELEFONE

FROM ContosoRetailDW.dbo.DimEmployee


SELECT * FROM VM_AT_SisContoso_BR


--5 Criando uma view com dados de outro banco (Contoso) - ]
--Explicação do SET QUOTED_IDENTIFIER ON
SELECT [First Name] FROM Customer;

ou

SET QUOTED_IDENTIFIER ON;
SELECT "First Name" FROM Customer;
---------------------------------------------

--Continuando
USE AdventureWorksDW2022
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[VM_AT_SisContoso_BR_Colchete]
AS
SELECT
	C.[EmployeeKey] as [ID], 
	C.[FirstName] as [NOME], 
	C.[LastName] as [SOBRENOME],
	C.[EmailAddress] as [EMAIL],
	C.[Phone] as [TELEFONE]

FROM [ContosoRetailDW].[dbo].[DimEmployee] C WITH (NOLOCK)
-- FROM [ContosoRetailDW].[dbo].[DimEmployee] AS C WITH (NOLOCK) -- Poderia ser assim também

GO


SELECT * FROM [VM_AT_SisContoso_BR_Colchete]