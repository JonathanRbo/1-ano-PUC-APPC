create database praticar2;

# Exercício 1 – Cadastro de Alunos
create table ALUNOS (
 id_aluno int primary key,
 nome varchar(100),
 idade int,
 cidade varchar(50)  
);

INSERT INTO ALUNOS (id_aluno, nome, idade, cidade) VALUES 
(1, 'pedrinho', 12, 'São Paulo'),
(2, 'joãozinho', 19, 'Campinas'),
(3, 'henrique', 18, 'Pedreira');

UPDATE ALUNOS
SET cidade = 'Rio de Janeiro'
WHERE id_aluno = 1;

DELETE FROM ALUNOS
WHERE idade < 18;

SELECT * FROM ALUNOS;


# Exercício 2 – Cadastro de Produtos

create table PRODUTOS(
	id_produto int primary key,
    nome_produto varchar(100),
    preco float,
    estoque int
);

INSERT INTO PRODUTOS (id_produto, nome_produto, preco, estoque) VALUES
(1, 'sabão em pó', 29.00, 10),
(2, 'traquinas', 7.00, 2000),
(3, 'monitor', 8000.00, 0),
(4, 'energetico', 20.00, 70);

UPDATE PRODUTOS
SET preco = preco * 1.10
WHERE id_produto = 1;

DELETE FROM PRODUTO
WHERE estoque = 0;

SELECT * FROM ALUNOS;


# Exercício 3 – Cadastro de Funcionários

create table FUNCIONARIOS (
	id_funcionario int primary key,
    nome varchar(100),
    cargo varchar(50),
    salario float
);

INSERT INTO FUNCIONARIOS (id_funcionario, nome, cargo, salario) VALUES 
(1, 'harthur', 'Pedreiro',  6),
(2, 'leandrinho', 'cozinheiro',  7),
(3, 'davizinho', 'padeiro',  8),
(4, 'henzinho', 'peixeiro',  9),
(5, 'rodriguinho', 'analista',  10);

UPDATE FUNCIONARIO
SET preco = preco * 1.10
WHERE id_produto = 1;

DELETE FROM PRODUTO
WHERE estoque = 0;




# Exercício 4 –



# Exercício 5 –





