CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tab_categorias(

  id bigint auto_increment primary key, 
  tipo varchar(255),
  tamanho varchar(255),
  precisareceita boolean

);

CREATE TABLE tab_produtos(
id bigint auto_increment primary key,
nome varchar(255),
preco decimal(6,2),
quantidade int,
categoria_id bigint, 

FOREIGN KEY(categoria_id) REFERENCES tab_categorias(id)

);


SELECT * FROM tab_categorias;
SELECT * FROM tab_produtos;

INSERT INTO tab_categorias(tipo,tamanho,precisareceita)VALUES("Gel","Media",false);

SELECT * FROM tab_produtos WHERE preco > 40.00;
SELECT * FROM tab_produtos WHERE preco > 50.00;
SELECT * FROM tab_produtos WHERE preco >= 5.00 AND preco <= 60.00;
SELECT * FROM tab_produtos WHERE nome LIKE "%c%";

SELECT * FROM tab_produtos  INNER JOIN tab_categorias ON tab_categorias.id = tab_produtos.categoria_id;


SELECT * FROM tab_produtos  INNER JOIN tab_categorias ON tab_categorias.id = tab_produtos.categoria_id WHERE tab_categorias.precisareceita = "True";