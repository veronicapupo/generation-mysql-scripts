CREATE DATABASE db_escola_generation;
USE db_escola_generation;

CREATE TABLE tb_alunes( 
  
  id bigint auto_increment primary key,
  nome varchar(250),
  data_nascimento date,
  turma int,
  nota decimal(4,2)
);

SELECT * FROM tb_alunes;

INSERT INTO tb_alunes(nome,data_nascimento,turma,nota)VALUES("Flavio Mendes", "1992-04-12", 57, 7.4);

SELECT * FROM tb_alunes;

SELECT * FROM tb_alunes WHERE nota > 7;

SELECT * FROM tb_alunes WHERE nota < 7;

UPDATE tb_alunes SET nota = 6.50 WHERE id = 3;