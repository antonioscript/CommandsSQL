-- Criar a tabela
CREATE TABLE ExemploTabela (
    ID INT PRIMARY KEY,
    Nome VARCHAR(50),
    Idade INT,
    DataCadastro DATE,
    Email VARCHAR(100),
    Salario DECIMAL(10, 2),
    Ativo BIT
);

-- Inserir alguns registros
INSERT INTO ExemploTabela (ID, Nome, Idade, DataCadastro, Email, Salario, Ativo)
VALUES
    (1, 'João', 25, '2022-01-01', 'joao@email.com', 5000.50, 1),
    (2, 'Maria', 30, '2022-02-15', 'maria@email.com', 6000.75, 1),
    (3, 'Pedro', 22, '2022-03-10', 'pedro@email.com', 4500.00, 0);


--***PRIMEIRO CASO***
/*
	Alterar o tipo de dados, apagando os dados antigos
	Alterando Salario para FL_Salario alterando os valores antigos
*/

-- 1. Adicionar a nova coluna FL_Salario como BIT com um valor padrão de 0
ALTER TABLE ExemploTabela
ADD FL_Salario BIT DEFAULT 0;

-- 2. Atualizar os registros existentes com base na coluna Salario
UPDATE ExemploTabela
SET FL_Salario = CASE WHEN Salario > 0 THEN 1 ELSE 0 END;

-- 3. Remover a coluna antiga Salario
ALTER TABLE ExemploTabela
DROP COLUMN Salario;


-- 4. Renomear a nova coluna FL_Salario para Salario
EXEC sp_rename 'ExemploTabela.FL_Salario', 'Salario', 'COLUMN';


SELECT * FROM ExemploTabela

DROP TABLE ExemploTabela;

---------------------------------------------------------------------------------

---***SEGUNDO CASO***

--Adicionar uma nova coluna obrigatória e tratar os registros antigos

--1. Adicionar a nova coluna ReservaEmergencia como DECIMAL(10, 2) com um valor padrão de 0.00
ALTER TABLE ExemploTabela
ADD ReservaEmergencia DECIMAL(10, 2) NOT NULL DEFAULT 0.00;

--2.Atualizar os registros existentes com base em alguma condição
--2.1Neste exemplo, estou definindo ReservaEmergencia como 0.00 para todos os registros
UPDATE ExemploTabela
SET ReservaEmergencia = 0.00;

-- Agora, a tabela terá a nova coluna ReservaEmergencia e todos os registros terão um valor padrão

-- Se deseja remover completamente a tabela depois de realizar seus testes, use o seguinte comando:
DROP TABLE ExemploTabela;

SELECT * FROM ExemploTabela