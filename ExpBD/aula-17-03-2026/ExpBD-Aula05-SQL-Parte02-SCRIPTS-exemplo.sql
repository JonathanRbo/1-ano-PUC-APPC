######################################
# CRIANDO O ESQUEMA / BASE DE DADOS: #
######################################

CREATE DATABASE dbexemplo
DEFAULT CHARACTER SET utf8mb4; 

USE dbexemplo;

CREATE TABLE dbexemplo.departamento(
	codigo int not null, 
	nome varchar(50) not null,
    PRIMARY KEY (codigo)
) DEFAULT CHARSET = utf8mb4;

CREATE TABLE dbexemplo.funcionario(
	codigo int not null auto_increment, 
	nome varchar(50) not null,
	endereco varchar(150) not null,
    sexo enum('F', 'M'),
    peso decimal(4,2),
    altura decimal(3,2),
    nacionalidade varchar(20) default 'Brasil',
	PRIMARY KEY (codigo)
) DEFAULT CHARSET = utf8mb4;

########################
# ALTERANDO O ESQUEMA: #
########################

ALTER TABLE dbexemplo.funcionario
ADD COLUMN (data_nascimento date);

ALTER TABLE dbexemplo.funcionario
DROP COLUMN endereco;

###############################
# INSERINDO DADOS NO ESQUEMA: #
###############################

INSERT INTO dbexemplo.funcionario
(codigo, nome, sexo, peso, altura, nacionalidade, data_nascimento) 
VALUES 
('1000', 'Fulano da Silva', 'M',  '80.0', '1.82', 'USA', '1979-04-19');

INSERT INTO dbexemplo.funcionario
(nome, sexo, peso, altura, nacionalidade, data_nascimento) 
VALUES 
('Ciclano da Silva', 'M',  '82.0', '1.80', 'Peru', '1983-04-19');

INSERT INTO dbexemplo.funcionario
(codigo, nome, sexo, peso, altura, nacionalidade, data_nascimento) 
VALUES 
(DEFAULT, 'Maria da Silva', 'F',  '62.0', '1.60', 'Brasil', '1985-01-19');

INSERT INTO dbexemplo.funcionario
VALUES 
(DEFAULT, 'Silvia da Silva', 'F',  '52.0', '1.50', 'Brasil', '1990-03-19');

INSERT INTO dbexemplo.funcionario
(codigo, nome, sexo, peso, altura, nacionalidade, data_nascimento) 
VALUES 
(DEFAULT, 'Pedro da Silva', 'M',  '92.0', '1.85', 'Brasil', '1991-03-19'),
(DEFAULT, 'Joaquim da Silva', 'M',  '99.0', '1.90', 'Brasil', '1992-03-19'),
(DEFAULT, 'João da Silva', 'M',  '80.0', '1.80', 'Brasil', '1993-03-19');

####################################
# DESCREVENDO ESTRUTRURA DA TABELA #
####################################

DESCRIBE dbexemplo.funcionario;

###############################
# CONSULTANDO DADOS DA TABELA #
###############################

SELECT * FROM dbexemplo.funcionario;

######################################################
# INSERINDO NOVA COLUNA NA TABELA (INSERINDO NO FIM) #
######################################################

ALTER TABLE dbexemplo.funcionario
ADD COLUMN profissao varchar(10);

SELECT * FROM dbexemplo.funcionario;

ALTER TABLE dbexemplo.funcionario
DROP COLUMN profissao;

SELECT * FROM dbexemplo.funcionario;

###############################################################
# INSERINDO NOVA COLUNA NA TABELA (INSERINDO APÓS UMA COLUNA) #
###############################################################

ALTER TABLE dbexemplo.funcionario
ADD COLUMN profissao varchar(10) AFTER nome;

SELECT * FROM dbexemplo.funcionario;

ALTER TABLE dbexemplo.funcionario
DROP COLUMN profissao;

SELECT * FROM dbexemplo.funcionario;

#########################################################
# INSERINDO NOVA COLUNA NA TABELA (INSERINDO NO INÍCIO) #
#########################################################

ALTER TABLE dbexemplo.funcionario
ADD COLUMN profissao varchar(10) FIRST;

SELECT * FROM dbexemplo.funcionario;

ALTER TABLE dbexemplo.funcionario
DROP COLUMN profissao;

SELECT * FROM dbexemplo.funcionario;

#########################################################
# MODIFICANDO DEFINIÇÃO DA COLUNA DA TABELA             #
#########################################################

ALTER TABLE dbexemplo.funcionario
MODIFY COLUMN peso decimal(5,2);

INSERT INTO dbexemplo.funcionario
VALUES 
(DEFAULT, 'Gerson da Silva', 'M',  '120.0', '1.80', 'Brasil', '1990-03-19');


###############################
# INSERINDO DADOS NO ESQUEMA: #
###############################

UPDATE `dbexemplo`.`funcionario` SET `data_nascimento` = '1981-03-19' WHERE (`codigo` = '1000');

UPDATE `dbexemplo`.`funcionario` SET `nome` = 'Maria', `sexo` = 'F'  WHERE (`codigo` = '1001');

UPDATE `dbexemplo`.`funcionario` SET `codigo` = '1000099'  WHERE (`codigo` = '100');

#########################################################
# EXCLUINDO LINHAS DA TABELA                            #
#########################################################

DELETE FROM dbexemplo.funcionario
WHERE codigo = '1001';

SELECT * FROM dbexemplo.funcionario;

SELECT * FROM dbexemplo.funcionario WHERE peso <= '80.0' AND sexo = 'F';









