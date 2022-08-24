CREATE DATABASE db_ecommerce;
USE  db_ecommerce;

CREATE TABLE tb_ecommerce(
    id bigint auto_increment primary key,
	produto varchar(255),
    categoria varchar(200),
    valor decimal(6,2)
    );

INSERT INTO tb_ecommerce(produto,categoria,valor)VALUES("Tv", "eletronicos",2260);

SELECT * FROM tb_ecommerce;

SELECT * FROM tb_ecommerce WHERE valor > 500;

SELECT * FROM tb_ecommerce WHERE valor < 500;

UPDATE tb_ecommerce SET produto = "tablet" WHERE id = 3;