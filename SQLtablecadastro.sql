CREATE DATABASE cadastro;
USE cadastro;
CREATE TABLE pessoas (
	nome VARCHAR(100),
    rg VARCHAR(7),
    cpf VARCHAR(11),
    limite INT(10)
);
DESCRIBE pessoas;

INSERT INTO pessoas (nome, rg, cpf, limite) VALUES ("Rafael", "9283948", "00399329239", 9000);
INSERT INTO pessoas (nome, rg, cpf, limite) VALUES ("Roberta", "923338", "0039930909", 5000);
INSERT INTO pessoas (nome, rg, cpf, limite) VALUES ("Olivia", "5007794", "008877659", 400);

SELECT * FROM pessoas WHERE nome LIKE 'Rafael';