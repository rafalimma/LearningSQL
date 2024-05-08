-- alterando colunas
SELECT * FROM funcionarios;

ALTER TABLE funcionarios ADD COLUMN profissao VARCHAR(100);
INSERT INTO funcionarios (nome, idade, profissao) VALUES ("Rafael", 18, "programador");

ALTER TABLE funcionarios ADD COLUMN cpf CHAR(11);

INSERT INTO funcionarios (nome, idade, profissao, cpf) VALUES ("Maria", 17, "contadora", "9032988422");
UPDATE funcionarios SET cpf = "09502309952" WHERE id = 5;