CREATE DATABASE db_quitanda; -- comando para criação do banco de dados

USE db_quitanda; -- comando que indica qual banco de dados está sendo usado

CREATE TABLE tb_produtos(
	
    id BIGINT AUTO_INCREMENT,
    nome_produto VARCHAR(255),
    preco DECIMAL(6,2), -- 6 números no total e 2 números decimais
	
    PRIMARY KEY(id) -- indica qual das colunas será a chave primária da tabela
);

SELECT * FROM tb_produtos; -- mostra todos os dados da tabela

INSERT INTO tb_produtos(nome_produto, preco) VALUES -- indica quais colunas serão preenchidas e quais valores serão inseridos

	("Uva", 6.00),
    ("Banana", 5.00)
    
;

SELECT nome_produto FROM tb_produtos; -- mostra as colunas indicadas depois do SELECT


SET SQL_SAFE_UPDATES = 0; -- desativa o modo seguro do MySQL e permite UPDATE e DELETE

UPDATE tb_produtos SET preco = 7.90 WHERE id = 3; -- atualiza um dado dentro da tabela