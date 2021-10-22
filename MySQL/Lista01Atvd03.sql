CREATE DATABASE estudantes;

USE estudantes;

CREATE TABLE tb_estudantes 
(
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nome VARCHAR(100) NOT NULL,
email VARCHAR(100),
data_aniversario DATE,
nota DOUBLE NULL
);

INSERT INTO tb_estudantes (nome, email, data_aniversario, nota)
VALUES ("maria" , "maria@Ggmail.com", "1998-01-05", 2500),
("Marcio" , "Marcio@Ggmail.com", "1998-01-05", 2500),
("felipe" , "felipe@Ggmail.com", "1998-01-05", 2500),
("jorge" , "jorge@Ggmail.com", "1998-01-05", 2500),
("douglas" , "douglas@Ggmail.com", "1998-01-05", 2500),
("joao" , "joao@Ggmail.com", "1998-01-05", 2500),
("joana" , "joana@Ggmail.com", "1998-01-05", 2500),
("juliana" , "juliana@Ggmail.com", "1998-01-05", 2500);

SELECT * FROM tb_estudantes
WHERE nota > 7;

SELECT * FROM tb_estudantes
WHERE nota < 7;

UPDATE tb_estudantes SET nota=8 WHERE id = 8;