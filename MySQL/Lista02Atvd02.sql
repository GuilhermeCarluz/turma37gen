CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categoria 
(
id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
tipo VARCHAR(100) NOT NULL,
retirada ENUM ("VIAGEM", "LOCAL")
);

CREATE TABLE tb_pizza 
(
id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
sabor VARCHAR(100) NOT NULL,
preco DOUBLE,
borda VARCHAR(100) NOT NULL,
fk_categoria INT,
FOREIGN KEY (fk_categoria) REFERENCES tb_categoria(id)
);

INSERT INTO tb_categoria(tipo, retirada)
VALUES ("salgada", "LOCAL"),
("salgada", "VIAGEM"),
("doce", "LOCAL"),
("doce", "VIAGEM"),
("misto", "LOCAL"),
("misto", "VIAGEM");

INSERT INTO tb_pizza(sabor, preco, borda, fk_categoria)
VALUES ("Muçarela", 25, "Cheddar", 1),
("Calabresa", 30, "catupiry", 2),
("Camarão", 35, "chocolate", 5),
("Bacon", 15, "Brigadeiro", 6),
("Picanha", 40, "catupiry", 2),
("Portuguesa", 50, "Cheddar", 1),
("brigadeiro", 48, "bem-casado", 3),
("nutella", 75, "ninho", 4);

SELECT * FROM tb_pizza
WHERE preco > 45;

SELECT * FROM tb_pizza
WHERE preco BETWEEN 29 AND 60;

SELECT * FROM tb_pizza
WHERE sabor LIKE 'C%';

-- INNER
SELECT tb_categoria.tipo, tb_pizza.sabor
FROM tb_categoria -- COLUNA ESQUERDA 
INNER  JOIN tb_pizza -- COLUNA DIREITA
ON tb_categoria.id = tb_pizza.fk_categoria;

SELECT tb_categoria.tipo, tb_pizza.sabor
FROM tb_categoria -- COLUNA ESQUERDA 
INNER  JOIN tb_pizza -- COLUNA DIREITA
ON tb_categoria.id = tb_pizza.fk_categoria
WHERE tb_categoria.tipo = "doce";