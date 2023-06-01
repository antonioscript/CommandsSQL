USE NERDOSDADOS

IF EXISTS (SELECT 1 FROM SYS.OBJECTS WHERE TYPE = 'U' AND NAME = 'CLIENTES')
	BEGIN
		DROP TABLE CLIENTES
	END
GO

CREATE TABLE CLIENTES(
ID_CLIENTE		INTEGER IDENTITY(1,1) PRIMARY KEY,
NOME			VARCHAR(100),
DATA_NASCIMENTO	DATE,
ENDERECO		VARCHAR(100),
BAIRRO			VARCHAR(100),
CIDADE			VARCHAR(100),
CEP				VARCHAR(09),
ESTADO			VARCHAR(02),
CELULAR			VARCHAR(20),
EMAIL			VARCHAR(50),
RG				VARCHAR(20),
CPF_CNPJ		VARCHAR(20),
TIPO_PESSOA		VARCHAR(01))



IF EXISTS (SELECT 1 FROM SYS.OBJECTS WHERE TYPE = 'U' AND NAME = 'PRODUTOS')
	BEGIN
		DROP TABLE PRODUTOS
	END
GO


CREATE TABLE PRODUTOS(
ID_PRODUTO		INTEGER IDENTITY(1,1) PRIMARY KEY,
DESCRICAO		VARCHAR(100),
VALOR			NUMERIC(18,2))


IF EXISTS (SELECT 1 FROM SYS.OBJECTS WHERE TYPE = 'U' AND NAME = 'VENDAS')
	BEGIN
		DROP TABLE VENDAS
	END
GO

CREATE TABLE VENDAS (
ID_VENDA		INTEGER IDENTITY(1,1) PRIMARY KEY,
ID_CLIENTE		INTEGER FOREIGN KEY REFERENCES CLIENTES(ID_CLIENTE),
ID_PRODUTO		INTEGER FOREIGN KEY REFERENCES PRODUTOS(ID_PRODUTO),
QUANTIDADE		INTEGER,
VALOR_TOTAL		NUMERIC(18,2),
DATA_VENDA		DATE)

--Inserts
INSERT INTO CLIENTES VALUES ('JOAQUIM DA SILVA','1970-10-05','RUA DOS PINHEIROS, 30','PINHEIROS','S�O PAULO','99999-888','SP','(11) 99999-9999','joaquimsilva@gmail.com','3445659-9','99999999999','F')
INSERT INTO CLIENTES VALUES ('JOSE DA SILVA','1970-10-05','RUA DOS PINHEIROS, 30','PINHEIROS','S�O PAULO','99999-888','SP','(11) 99999-9999','joaquimsilva@gmail.com','3445659-9','99999999999','F')
INSERT INTO CLIENTES VALUES ('MARIA DA SILVA','1970-10-05','RUA DOS PINHEIROS, 30','PINHEIROS','S�O PAULO','99999-888','SP','(11) 99999-9999','joaquimsilva@gmail.com','3445659-9','99999999999','F')
INSERT INTO CLIENTES VALUES ('ALBERTO DA SILVA','1970-10-05','RUA DOS PINHEIROS, 30','PINHEIROS','S�O PAULO','99999-888','SP','(11) 99999-9999','joaquimsilva@gmail.com','3445659-9','99999999999','F')

INSERT INTO PRODUTOS VALUES ('REGRIGERANTE',12)
INSERT INTO PRODUTOS VALUES ('CHOCOLATE',8)
INSERT INTO PRODUTOS VALUES ('REQUEIJ�O',7)
INSERT INTO PRODUTOS VALUES ('ARROZ',15)
INSERT INTO PRODUTOS VALUES ('FEIJ�O',18)
INSERT INTO PRODUTOS VALUES ('BATATA',5)
INSERT INTO PRODUTOS VALUES ('BANANA',6)
INSERT INTO PRODUTOS VALUES ('TOMATE',9)

INSERT INTO VENDAS VALUES (1,1,1,12,'2022-07-25')
INSERT INTO VENDAS VALUES (2,2,1,8,'2022-07-25')
INSERT INTO VENDAS VALUES (3,3,1,7,'2022-07-25')

--CONSULTAR SQL UTILIZANDO INNER JOIN / LEFT JOIN E RIGHT JOIN


--CONSULTANDO TODOS OS DADOS DAS 3 TABELAS
SELECT * FROM VENDAS A(NOLOCK)
INNER JOIN CLIENTES B(NOLOCK) ON (B.ID_CLIENTE=A.ID_CLIENTE)
INNER JOIN PRODUTOS C(NOLOCK) ON (C.ID_PRODUTO=A.ID_PRODUTO)

--CONSULTANDO SOMENTE OS DADOS QUE QUEREMOS VER
SELECT
B.ID_CLIENTE,
B.NOME,
B.CELULAR,
A.DATA_VENDA,
C.DESCRICAO,
A.QUANTIDADE,
C.VALOR,
A.VALOR_TOTAL
FROM VENDAS A(NOLOCK)
INNER JOIN CLIENTES B(NOLOCK) ON (B.ID_CLIENTE=A.ID_CLIENTE)
INNER JOIN PRODUTOS C(NOLOCK) ON (C.ID_PRODUTO=A.ID_PRODUTO)



--TODOS CLIENTES
SELECT * FROM CLIENTES A(NOLOCK)
LEFT JOIN VENDAS B(NOLOCK) ON (B.ID_CLIENTE=A.ID_CLIENTE)


