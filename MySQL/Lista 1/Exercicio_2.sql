CREATE DATABASE db_loja;

USE db_loja;

CREATE TABLE tb_produto (
	id_produto INT AUTO_INCREMENT,
    produto VARCHAR(50) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    ativo BOOLEAN,
    tipo VARCHAR(20),
    PRIMARY KEY (id_produto)    
);

INSERT INTO tb_produto (produto, preco, ativo, tipo) VALUES ("Processador", 1540.00, true, "Componente");
INSERT INTO tb_produto (produto, preco, ativo, tipo) VALUES ("Placa de vídeo", 7012.00, true, "Componente");
INSERT INTO tb_produto (produto, preco, ativo, tipo) VALUES ("Xbox", 2749.00, true, "Console");
INSERT INTO tb_produto (produto, preco, ativo, tipo) VALUES ("Teclado", 580.00, false, "Periférico");
INSERT INTO tb_produto (produto, preco, ativo, tipo) VALUES ("SSD", 420.00, true, "Componente");
INSERT INTO tb_produto (produto, preco, ativo, tipo) VALUES ("Mouse", 340.00, false, "Periférico");
INSERT INTO tb_produto (produto, preco, ativo, tipo) VALUES ("HeadSet", 970.00, true, "Periférico");
INSERT INTO tb_produto (produto, preco, ativo, tipo) VALUES ("Playstation", 6420.00, true, "Console");

SELECT * FROM tb_produto WHERE preco > 500;

SELECT * FROM tb_produto WHERE preco < 500;

UPDATE tb_produto SET ativo = true WHERE id_produto = 4;
UPDATE tb_produto SET ativo = true WHERE id_produto = 6;