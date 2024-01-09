CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
classeId BIGINT auto_increment,
nomeClasse VARCHAR(255),
tipoDePoder VARCHAR(255),
PRIMARY KEY (id)
);

CREATE TABLE tb_personagens(
id BIGINT auto_increment,
nome VARCHAR(255),
classeID BIGINT,
podeDeDefesa BIGINT,
podeDeAtaque BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (classeId) REFERENCES tb_classes(classeId)
);

INSERT INTO tb_classe(nomeClasse, tipoDePoder)
VALUES
("Guerreiro","Forca"),
("Mago","Magia"),
("Arqueiro","Precisao"),
("Suporte","Cura"),
("Assasino","Furtividade");

INSERT INTO tb_personagens(nome, classeId, podeDeAtaque, poderDeDefesa)
VALUES
("Luis", 1, 3000, 5000),
("Geandro", 2, 5000, 3000),
("Daniel", 4, 5000, 5000),
("Marcelo", 5, 1000, 1000),
("Marcos", 1, 2000, 1500),
("Davi", 3, 500, 3000),
("Matheus", 2, 2000, 500),
("Louise", 4, 1000, 2000);


SELECT * FROM tb_personagens WHERE poderDeAtaque > 2000;

SELECT * FROM tb_personagens WHERE poderDeDefesa BETWEEN 1000 AND 2000;

SELECT * FROm tb_personagens WHERE nome LIKE "%c%";

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classeId = tb_classes.classeId;

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classeId = tb_classes.classeId WHERE tb_classes.nome = 'Arqueiro';

