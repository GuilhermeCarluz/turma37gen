CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classe
(
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
funcao VARCHAR(100) NOT NULL,
tipo VARCHAR(100) NOT NULL
);

CREATE TABLE tb_personagem
(
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nome VARCHAR(100) NOT NULL,
ataque DOUBLE,
defesa DOUBLE,
fk_classe INT,
FOREIGN KEY (fk_classe) REFERENCES tb_classe(id)
);

INSERT INTO tb_classe(funcao, tipo)
VALUES ("arqueiro", "vermelho"),
("caçador", "rosa"),
("lutador", "roxo"),
("bruxo", "amarelo"),
("observador", "laranja");

INSERT INTO tb_personagem(nome, ataque, defesa, fk_classe)
VALUES ("Carlos", 2200, 1350, 1),
("Anderson", 3000, 1500, 2),
("Edcleidson", 3150, 2500, 3),
("Taldo", 1800, 300, 4),
("Bruna", 1845, 1999, 5),
("Dean", 1524, 1001, 1),
("Reuri", 4000, 1085, 3),
("Valdemir", 200, 150, NULL);

SELECT * FROM tb_personagem
WHERE ataque > 2000;

SELECT * FROM tb_personagem
WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagem
WHERE nome LIKE 'C%';

-- INNER
SELECT tb_classe.funcao, tb_personagem.nome
FROM tb_classe -- COLUNA ESQUERDA 
INNER  JOIN tb_personagem -- COLUNA DIREITA
ON tb_classe.id = tb_personagem.fk_classe;

SELECT tb_classe.funcao, tb_personagem.nome
FROM tb_classe -- COLUNA ESQUERDA 
INNER  JOIN tb_personagem -- COLUNA DIREITA
ON tb_classe.id = tb_personagem.fk_classe
WHERE tb_classe.funcao = "arqueiro";