CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes(
 id bigint auto_increment primary key, 
   tipo varchar(255),
   tamanho int
  
);


CREATE TABLE tb_personagens(
id bigint auto_increment primary key,
 forca varchar(255),
 luta boolean,
 vooa boolean,
categoria_id bigint, 
FOREIGN KEY(categoria_id) REFERENCES tb_classes(id)
);


SELECT * FROM tb_classes;
SELECT * FROM tb_personagens;

INSERT INTO tb_classes(tipo,tamanho) VALUES("deuses",4);
INSERT INTO tb_personagens(forca,luta,vooa,categoria_id) VALUES("maxima", true, true,4);

SELECT * FROM tb_personagens WHERE forca = "maxima";
SELECT * FROM tb_personagens WHERE forca = "mediana";
SELECT * FROM tb_classes WHERE tipo LIKE "%a%";
SELECT * FROM tb_personagens  INNER JOIN tb_classes ON tb_classes.id = tb_personagens.categoria_id;

SELECT * FROM tb_personagens  INNER JOIN tb_classes ON tb_classes.id = tb_personagens.categoria_id WHERE tb_classes.tipo = "mago";