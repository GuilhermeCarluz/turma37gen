CREATE DATABASE rh;
CREATE TABLE tb_funcionarios(
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nome VARCHAR (100) NOT NULL,
endereco VARCHAR (10),
data_aniversario DATE , 
salario INT
);
USE rh;

INSERT INTO tb_funcionarios(nome, endereco, data_aniversario, salario)
VALUES ("Guilherme", "150A","1998-11-21", 1000), 
 ("Carlos", "110A","2000-01-12", 3000), 
 ("Luz", "200A","2001-06-04", 2500),
 ("Heytor", "300A","2003-08-07", 3500);
 
 SELECT * FROM tb_funcionarios
 WHERE salario>2000;
  SELECT * FROM tb_funcionarios
 WHERE salario<2000;
 
 UPDATE tb_funcionarios SET salario = 5000
 WHERE ID = 2;
