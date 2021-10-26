CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categoria
(
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
tipo ENUM ("FRUTA", "LEGUMES", "AVES", "QUEIJO", "PEIXE"),
origem ENUM ("NACIONAL", "IMPORTADA")
);

CREATE TABLE tb_produto
(
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nome VARCHAR(30) NOT NULL,
preco DOUBLE,
estoque INT,
fk_categoria INT,
FOREIGN KEY (fk_categoria) REFERENCES tb_categoria(id)
);

INSERT INTO tb_categoria(tipo, origem)
VALUES("FRUTA", "IMPORTADA"),
("LEGUMES", "NACIONAL"),
("AVES", "NACIONAL"),
("QUEIJO", "IMPORTADA"),
("PEIXE", "NACIONAL");

INSERT INTO tb_produto(nome, preco, estoque, fk_categoria)
VALUES("Maçâ", 15, 1500, 1),
("Cebolas", 25, 800, 2),
("Asinhas", 30, 700, 3),
("Peito de frango", 55, 500, 3),
("Coalho", 35, 950, 4),
("Gorgonzola", 75, 1000, 4),
("Salmão", 51, 250, 5),
("Banana", 5, 2000, 1);

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
WHERE tb_categoria.tipo = "AVES" OR tb_categoria.tipo = "LEGUMES";