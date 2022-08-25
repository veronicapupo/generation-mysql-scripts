CREATE DATABASE db_cidade_das_carnes;
USE db_cidade_das_carnes;

CREATE TABLE tb_categorias(
 
  id bigint auto_increment primary key, 
  tipo varchar(255),
  peso int
);

CREATE TABLE tb_produtos(
id bigint auto_increment primary key,
corte varchar(255),
preco decimal(6,2),
quantidade int,
categoria_id bigint, 

FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id)
);
SELECT * FROM tb_categorias;
SELECT * FROM tb_produtos;

INSERT INTO tb_categorias(tipo,peso)VALUES("Peixe",1);

INSERT INTO tb_produtos(corte,preco,quantidade,categoria_id)VALUES("Bacalhau",194.00,2,4);

SELECT * FROM tb_produtos WHERE preco > 50.00;
SELECT * FROM tb_produtos WHERE preco >= 50 AND preco <= 150;

SELECT * FROM tb_produtos WHERE corte LIKE "%c%";

SELECT * FROM tb_produtos  INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria_id;
SELECT * FROM tb_produtos  INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria_id WHERE tb_produtos.quantidade = 2;
