CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (

	id_classe BIGINT AUTO_INCREMENT,
    nome_classe VARCHAR (255),
	faccao VARCHAR (255),
    raca VARCHAR(255),


	PRIMARY KEY (id_classe)
);

CREATE TABLE tb_personagens (

	id_personagem BIGINT AUTO_INCREMENT,
	nome_personagem VARCHAR (255),
    defesa INT,
    vitalidade DECIMAL(4,1),
    ataque INT,
    classe BIGINT,

	PRIMARY KEY (id_personagem),
    FOREIGN KEY (classe) REFERENCES tb_classes (id_classe)
);


INSERT INTO tb_classes (nome_classe, faccao, raca) VALUES

	("Guerreiro", "Horda", "Orc"),
	("Paladino", "Aliança", "Humano"),
	("Sacerdote", "Aliança", "Anão"),
	("Bruxo", "Horda", "Elfo"),
	("Druida", "Aliança", "Troll")

;

INSERT INTO tb_personagens (nome_personagem, defesa, vitalidade, ataque, classe) VALUES

	("Destruidor", 5000, 90.0, 9000, 1),
	("Natur", 1500, 88.5, 6000, 5),
	("Gentil", 4500, 85.0, 7800, 2),
	("Feiticeira", 2000, 67.5, 1200, 4),
	("Caçadora", 1300, 79.7, 8500, 1),
	("Sacer", 5400, 89.4, 6000, 3),
	("Florest", 1000, 40.6, 3400, 5),
	("Honrado", 2600, 33.3, 3200, 2)

;

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome_personagem LIKE "%c%";

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id_classe = tb_personagens.classe;

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id_classe = tb_personagens.classe WHERE nome_classe = "Paladino";