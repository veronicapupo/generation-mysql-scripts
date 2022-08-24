CREATE DATABASE db_rh;
USE db_rh;
CREATE TABLE tb_rh(
    id bigint auto_increment primary key,
	nome varchar(255),
    periodo varchar(50),
    funcao varchar(100),
    salario decimal(5,3)
);
ALTER TABLE tb_rh MODIFY COLUMN salario decimal(6,2);
delete from tb_rh;
SELECT * FROM tb_rh;

INSERT INTO tb_rh(nome,periodo,funcao,salario)VALUES("Rose","Noturno","Controladora",1800);


DELETE FROM tb_rh WHERE id = 12;

SELECT * FROM  tb_rh WHERE salario > 2000;

SELECT * FROM tb_rh WHERE salario < 2000;

UPDATE tb_rh SET nome = "Ana" WHERE id = 16;