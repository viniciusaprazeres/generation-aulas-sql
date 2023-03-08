CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores (

	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    idade VARCHAR(255),
    sexo CHAR(1),
    cpf VARCHAR(11),
    ctps VARCHAR(255),
    serie VARCHAR(255),
    salario DECIMAL(10,2),
    
	PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores (nome, idade, sexo, cpf, ctps, serie, salario) VALUES
	
    ("Vinicius Prazeres", "26", "M", "12345678910", "012334", "00567-SP", 1000.00),
    ("Samuel Novais", "21", "M", "32344375408", "035426", "00542-SP", 3000.00),
    ("Erica Araújo", "27", "F", "23453276509", "022334", "00646-MA", 30000.00),
    ("Thayane Almeida", "19", "F", "13386526405", "022456", "00876-RJ", 25000.00),
    ("Brian Schneider", "28", "M", "56445332406", "012367", "00348-RS", 1500.00)

;

SELECT nome FROM tb_colaboradores WHERE salario > 2000.00;

SELECT nome FROM tb_colaboradores WHERE salario < 2000.00;

UPDATE tb_colaboradores SET nome = "Vinicius Alves Prazeres" WHERE id = 1;
