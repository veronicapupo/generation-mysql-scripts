CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;
CREATE TABLE tb_categorias(
 
  id bigint auto_increment primary key, 
  descricao varchar(255),
  tamanho varchar(255),
  borda_recheada boolean
);

CREATE TABLE tb_pizzas(
id bigint auto_increment primary key,
sabor varchar(255),
preco decimal(6,2),
massa varchar(255),
quantidade int,
categoria_id bigint, 

FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id)
);

SELECT * FROM tb_categorias;
SELECT * FROM tb_pizzas;

INSERT INTO tb_categorias(descricao,tamanho,borda_recheada)VALUES("Vegana","Broto",false);

INSERT INTO tb_pizzas(sabor,preco,massa,quantidade,categoria_id)VALUES("Carne de Jaca", 26.39,"Frita",2,15);

SELECT * FROM tb_pizzas WHERE preco > 45.00;
SELECT * FROM tb_pizzas WHERE preco < 45.00;
SELECT * FROM tb_pizzas WHERE preco >= 50 AND preco <= 100;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;
SELECT sabor FROM tb_pizzas WHERE preco BETWEEN 40 AND 60;

SELECT * FROM tb_pizzas WHERE sabor LIKE "%m%";
SELECT * FROM tb_pizzas WHERE sabor LIKE "c%";

SELECT * FROM tb_pizzas  INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categoria_id;
SELECT  tb_pizzas.sabor FROM tb_pizzas  INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categoria_id WHERE tb_categorias.descricao = "Salgada";