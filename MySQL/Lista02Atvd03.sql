CREATE DATABASE db_farmacia_do_bem;

USE db_farmacia_do_bem;

CREATE TABLE tb_categoria
(
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
tipo VARCHAR(100) NOT NULL,
formula ENUM ("GENÉRICO", "ORIGINAL")
);

CREATE TABLE tb_produto
(
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nome VARCHAR(100) NOT NULL,
preco DOUBLE,
estoque INT,
fk_categoria INT,
FOREIGN KEY (fk_categoria) REFERENCES tb_categoria(id)
);

INSERT INTO tb_categoria(tipo, formula)
VALUES ("COSMÉTICOS", "GENÉRICO"),
("COSMÉTICOS", "ORIGINAL"),
("ANTIBIÓTICOS ", "GENÉRICO"),
("ANTIBIÓTICOS ", "ORIGINAL"),
("ALIMENTO", NULL);

INSERT INTO tb_produto(nome, preco, estoque, fk_categoria)
VALUES("Batatinhas", 2.50, 45, 5),
("Bozzano", 14.98, 65, 2),
("Biocolor", 25, 39, 1),
("Condicionador", 17, 92, 1),
("Amoxicilina", 72.45, 120, 4),
("Benzetacil", 83.25, 255, 3),
("Sorvete", 18, 75, 5),
("Shampoo", 15.30, 58, 2);

SELECT * FROM tb_produto
WHERE preco > 50;

SELECT * FROM tb_produto
WHERE preco BETWEEN 3 AND 60;

SELECT * FROM tb_produto
WHERE nome LIKE 'B%';

-- INNER
SELECT tb_categoria.tipo, tb_produto.nome
FROM tb_categoria -- COLUNA ESQUERDA 
INNER  JOIN tb_produto -- COLUNA DIREITA
ON tb_categoria.id = tb_produto.fk_categoria;

SELECT tb_categoria.tipo, tb_produto.nome
FROM tb_categoria -- COLUNA ESQUERDA 
INNER  JOIN tb_produto -- COLUNA DIREITA
ON tb_categoria.id = tb_produto.fk_categoria
WHERE tb_categoria.tipo = "COSMÉTICOS";