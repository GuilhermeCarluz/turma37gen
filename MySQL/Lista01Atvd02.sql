CREATE DATABASE produto;

USE produto;

CREATE TABLE tb_produto
(
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nome VARCHAR(100) NOT NULL,
categoria VARCHAR(100),
validade DATE null,
preco DOUBLE NOT NULL
);

INSERT INTO tb_produto(nome, categoria, validade, preco)
values("copo" , "cozinha", null, 22),
("jarro" , "quintaal", null, 19),
("doce" , "alimento", "2022-02-11", 50),
("pão" , "alimento", "2021-11-01", 3),
("iphone" , "eletronicos", null, 2500),
("Mac book" , "eletronicos", null, 4500),
("computador" , "eletronicos", null, 3500),
("sabonete" , "limpeza", "2022-05-20", 20);

SELECT * FROM tb_produto
WHERE preco < 500;

SELECT * FROM tb_produto
 WHERE preco > 500;

UPDATE tb_produto SET validade = "2022-09-10" WHERE id = 8;