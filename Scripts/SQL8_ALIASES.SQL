--Alias Syntax

--1 Criando a tabela

CREATE TABLE CUSTOMERS (
	ID INT NOT NULL, 
	NAME VARCHAR (20) NOT NULL, 
	AGE INT NOT NULL, 
	ADDRESS CHAR (25), 
	SALARY DECIMAL (18,2),
	PRIMARY KEY (ID)
);

-- 2 Inserindo valores na tabela
insert INTO CUSTOMERS VALUES(1, 'Ramesh', 32, 'Ahmedabad', 2000.00);
insert INTO CUSTOMERS VALUES(2, 'Khilan', 25, 'Delhi', 1500.00);
insert INTO CUSTOMERS VALUES(3, 'kaushik', 23, 'Kota', 2000.00);
insert INTO CUSTOMERS VALUES(4, 'Chaitali', 25, 'Mumbai', 6500.00);
insert INTO CUSTOMERS VALUES(5, 'Hardik', 27, 'Bhopal', 8500.00);
insert INTO CUSTOMERS VALUES(6, 'Komal', 22, 'MP', 4500.00);
insert INTO CUSTOMERS VALUES(7, 'Muffy', 24, 'Indore', 10000.00);

--3 Criando tabela ORDERS
CREATE TABLE ORDERS (
   OID INT NOT NULL,
   DATES DATETIME NOT NULL,
   CUSTOMER_ID INT NOT NULL,
   AMOUNT INT NOT NULL,      
   PRIMARY KEY (OID)
);


insert INTO ORDERS VALUES(102, '2009-10-08 00:00:00', 3, 3000);
insert INTO ORDERS VALUES(100, '2009-10-08 00:00:00', 3, 1500);
insert INTO ORDERS VALUES(101, '2009-10-08 00:00:00', 3, 1500);
insert INTO ORDERS VALUES(104, '2009-10-08 00:00:00', 4, 2500)
insert INTO ORDERS VALUES(103, '2008-05-20 00:00:00', 4, 2060);
insert INTO ORDERS VALUES(105, '2009-10-08 00:00:00', 3, 3000);
insert INTO ORDERS VALUES(106, '2009-10-08 00:00:00', 6, 3000);


/*4 - Now, the following query shows the usage of a table alias. 
The customers table is aliased as 'C' and the orders table is aliased as 'O' − */
SELECT C.ID, C.NAME, C.AGE, C.SALARY
FROM CUSTOMERS AS C, ORDERS AS O
WHERE C.ID = O.CUSTOMER_ID


/* Em resumo, ele selecionou os dados da tabela CUSTOMERS 
onde o Id da Tabela é igual ao CUSTOMER_ID da tabela de ORDERS 
Ou seja, apenas os clientes que tem algum pedido
*/

--5 Refazendo na base NerdDosDados
USE NERDOSDADOS

SELECT * FROM CLIENTES
SELECT * FROM PRODUTOS
SELECT * FROM VENDAS

--6 Vou fazer a mesma coisa, pegar apenas os clientes que estão cadastrados em alguma venda
SELECT C.ID_CLIENTE, C.NOME, C.DATA_NASCIMENTO
FROM CLIENTES AS C, VENDAS AS V
WHERE C.ID_CLIENTE = V.ID_CLIENTE

--7 Pegando os clientes que não estão em nenhuma venda
SELECT C.ID_CLIENTE, C.NOME, C.DATA_NASCIMENTO
FROM CLIENTES AS C, VENDAS AS V
WHERE C.ID_CLIENTE != V.ID_CLIENTE

--8 Ainda posso renomear as coluans se quiser
SELECT C.ID_CLIENTE AS ID, C.NOME AS NOME_CLIENTE, C.DATA_NASCIMENTO AS DT_NASCIMENTO
FROM CLIENTES AS C, VENDAS AS V
WHERE C.ID_CLIENTE = V.ID_CLIENTE