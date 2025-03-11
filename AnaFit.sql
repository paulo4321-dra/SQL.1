-- Criando o banco de dados
CREATE DATABASE anafit;

-- Criando a primeira tabela
CREATE TABLE cliente (
cpf BIGINT(11) PRIMARY KEY, 
primeironome VARCHAR(50) NOT NULL,
sobrenome VARCHAR(50) NOT NULL,
datanasc DATE NOT NULL,
peso DECIMAL(5,2),
altura FLOAT,
whatsapp VARCHAR(15) NOT NULL,
email VARCHAR(100) UNIQUE,
rua VARCHAR(100) NOT NULL,
numero INT(6) NOT NULL,
complemento VARCHAR(100), 
cep VARCHAR(8) NOT NULL
);

-- Inserindo dados na tabela de clientes
INSERT INTO cliente(cpf, primeironome, sobrenome, datanasc, peso, altura, whatsapp, email, rua, numero, complemento, cep)
VALUES(12345678910, "Ana Claudia", "Cunha", "2014-09-17", 63.50, 1.73, "+55119898989898", "ana.cscunha1@senacsp.edu.br", "Rua Dr. Antônio Bento", 393, "", "04750000");

-- Criando a tabela treino
CREATE TABLE treino (
diadasemana DATE NOT NULL,
horario TIME NOT NULL,
tipo VARCHAR(50) NOT NULL
);

--DELETAR UMA TABELA

DROP TABLE treino;

DROP TABLE cliente;

--DELETANDO O BANCO DE DADOS
DROP DATABASE anafit;