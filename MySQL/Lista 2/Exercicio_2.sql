CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categoria (
	id BIGINT AUTO_INCREMENT,
    alimento VARCHAR(255) NOT NULL,
    primary key (id)
);

CREATE TABLE tb_pizza (
	id INT AUTO_INCREMENT,
    sabor VARCHAR(255) NOT NULL,
    tamanho VARCHAR(255) NOT NULL,
    bordaRecheada BOOLEAN,
    valor DECIMAL(8,2),
    categoria_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

INSERT INTO tb_categoria (alimento) VALUES ("Pizza Doce");
INSERT INTO tb_categoria (alimento) VALUES ("Pizza Salgada");
INSERT INTO tb_categoria (alimento) VALUES ("Pizza Vegana");

INSERT INTO tb_pizza (sabor, tamanho, bordaRecheada, valor, categoria_id) VALUES ("Calabresa", "grande", true, 46, 3);
INSERT INTO tb_pizza (sabor, tamanho, bordaRecheada, valor, categoria_id) VALUES ("Romeu e Julieta", "grande", false, 70, 1);
INSERT INTO tb_pizza (sabor, tamanho, bordaRecheada, valor, categoria_id) VALUES ("Carne", "grande", true, 90, 2);
INSERT INTO tb_pizza (sabor, tamanho, bordaRecheada, valor, categoria_id) VALUES ("Portuguesa", "media", false, 60, 3);
INSERT INTO tb_pizza (sabor, tamanho, bordaRecheada, valor, categoria_id) VALUES ("Bacon com Catupiry", "grande", true, 80, 2);
INSERT INTO tb_pizza (sabor, tamanho, bordaRecheada, valor, categoria_id) VALUES ("Portuguesa", "grande", true, 70, 3);
INSERT INTO tb_pizza (sabor, tamanho, bordaRecheada, valor, categoria_id) VALUES ("Chocolate Branco", "grande", true, 70, 1);
INSERT INTO tb_pizza (sabor, tamanho, bordaRecheada, valor, categoria_id) VALUES ("Frango com Queijo", "grande", true, 75, 3);

SELECT * FROM tb_pizza WHERE valor > 70;
SELECT * FROM tb_pizza WHERE valor > 60 AND valor < 90;
SELECT * FROM tb_pizza WHERE sabor LIKE "M%";
SELECT * FROM tb_pizza INNER JOIN tb_categoria ON tb_pizza.categoria_id = tb_categoria.id;
SELECT * FROM tb_pizza WHERE categoria_id = 3;