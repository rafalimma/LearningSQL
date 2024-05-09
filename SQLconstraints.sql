CREATE DATABASE constraints;
USE constraints;

CREATE TABLE pessoas(
	nome VARCHAR(100) NOT NULL,
    idade INT
);

INSERT INTO pessoas (nome, idade) VALUES ("Rafael", 18);
SELECT * FROM pessoas;
INSERT INTO pessoas (nome, idade) VALUES (NULL, 18);
