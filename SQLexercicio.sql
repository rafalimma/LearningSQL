CREATE DATABASE gsacadastro;

USE gsacadastro;
CREATE TABLE usuario(
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100),
    sobrenome VARCHAR(100),
    saldo INT,
    data_nascimento DATE,
    PRIMARY KEY (id)
);

CREATE INDEX saldo_index
ON usuario(saldo);
INSERT INTO usuario (nome, sobrenome, saldo, data_nascimento)
VALUES ("Laura", "Souza", 6000, "1986-10-6");
SELECT * FROM usuario;