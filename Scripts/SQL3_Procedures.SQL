--VERIFICANDO SE EXISTE PROCEDURE J� CRIADA NA BASE DE DADOS
--SE TIVER A PROCEDURE NA BASE IR� APAGAR PARA CRIAR NOVAMENTE
IF EXISTS (SELECT 1 FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'SP_CONSULTAR_CLIENTES')
	BEGIN
		DROP PROCEDURE SP_CONSULTAR_CLIENTES
	END
GO

--STORED PROCEDURE SIMPLES SEM PARAMETROS
CREATE PROCEDURE SP_CONSULTAR_CLIENTES
AS
SELECT * FROM CLIENTES
GO

--COMANDO PARA EXECUTAR A PROCEDURE
EXEC SP_CONSULTAR_CLIENTES





--VERIFICANDO SE EXISTE PROCEDURE J� CRIADA NA BASE DE DADOS
--SE TIVER A PROCEDURE NA BASE IR� APAGAR PARA CRIAR NOVAMENTE
IF EXISTS (SELECT 1 FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'SP_CONSULTAR_VENDAS_CLIENTES')
	BEGIN
		DROP PROCEDURE SP_CONSULTAR_VENDAS_CLIENTES
	END
GO

--STORED PROCEDURE SEM PARAMETROS E COM RELACIONAMENTO DE TABELAS
CREATE PROCEDURE SP_CONSULTAR_VENDAS_CLIENTES
AS
SELECT * FROM CLIENTES A(NOLOCK)
INNER JOIN VENDAS B(NOLOCK) ON (B.ID_CLIENTE=A.ID_CLIENTE)
GO

--COMANDO PARA EXECUTAR A PROCEDURE
EXEC SP_CONSULTAR_VENDAS_CLIENTES




--VERIFICANDO SE EXISTE PROCEDURE J� CRIADA NA BASE DE DADOS
--SE TIVER A PROCEDURE NA BASE IR� APAGAR PARA CRIAR NOVAMENTE
IF EXISTS (SELECT 1 FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'SP_CONSULTAR_CLIENTES_POR_ID')
	BEGIN
		DROP PROCEDURE SP_CONSULTAR_CLIENTES_POR_ID
	END
GO

--STORED PROCEDURE SIMPLES COM PARAMETROS
CREATE PROCEDURE SP_CONSULTAR_CLIENTES_POR_ID
@ID_CLIENTE		INTEGER
AS
SELECT * FROM CLIENTES (NOLOCK)
WHERE ID_CLIENTE = @ID_CLIENTE
GO

--COMANDO PARA EXECUTAR A PROCEDURE
EXEC SP_CONSULTAR_CLIENTES_POR_ID 2 --Observe que aqui est� sendo passado um par�metro (2)







--VERIFICANDO SE EXISTE PROCEDURE J� CRIADA NA BASE DE DADOS
--SE TIVER A PROCEDURE NA BASE IR� APAGAR PARA CRIAR NOVAMENTE
IF EXISTS (SELECT 1 FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'SP_CONSULTAR_VENDAS_PERIODO')
	BEGIN
		DROP PROCEDURE SP_CONSULTAR_VENDAS_PERIODO
	END
GO

--STORED PROCEDURE COM RELACIONAMENTO E COM PARAMETROS
CREATE PROCEDURE SP_CONSULTAR_VENDAS_PERIODO
@DATA_INICIAL		DATE,
@DATA_FINAL			DATE,
@ID_CLIENTE			INTEGER
AS
SELECT * FROM CLIENTES A (NOLOCK)
INNER JOIN VENDAS B(NOLOCK) ON (B.ID_CLIENTE = A.ID_CLIENTE)
WHERE B.DATA_VENDA BETWEEN @DATA_INICIAL AND @DATA_FINAL
AND A.ID_CLIENTE = @ID_CLIENTE
GO

--COMANDO PARA EXECUTAR A PROCEDURE
EXEC SP_CONSULTAR_VENDAS_PERIODO '2022-07-01','2022-07-31',2