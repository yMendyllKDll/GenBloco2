-- DDL (LINGUAGEM DE DEFINIÇÃO DE DADOS)
-- CREATE
-- ALTER
-- DROP

CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_funcionarios(
	id_funcionario INT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(80) NOT NULL,
    funcao VARCHAR(50),
    salario DOUBLE NOT NULL,
    PRIMARY KEY (id_funcionario)
);

INSERT INTO tb_funcionarios (nome, email, funcao, salario) VALUES ("rafa", "rafa@email.com", "Desenvolvedor Júnior", 3100);
INSERT INTO tb_funcionarios (nome, email, funcao, salario) VALUES ("alessandra", "alessandra@email.com", "Trainee", 1500);
INSERT INTO tb_funcionarios (nome, email, funcao, salario) VALUES ("Renata ingrata", "renataingrata@email.com", "Desenvolvedora Sênior", 5600);
INSERT INTO tb_funcionarios (nome, email, funcao, salario) VALUES ("luca", "luca@email.com", "Estagiário", 2360);
INSERT INTO tb_funcionarios (nome, email, funcao, salario) VALUES ("Jade Picon", "jadepicon@email.com", "Trainee", 1500);

SELECT * FROM tb_funcionarios WHERE salario < 2000;

SELECT * FROM tb_funcionarios WHERE salario > 2000;

UPDATE tb_funcionarios SET funcao = "Desenvolvedor Senior", salario = 4200.00 WHERE id_funcionario = 1 ;