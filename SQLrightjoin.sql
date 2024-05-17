-- RIGHT JOIN

USE constraints;
INSERT INTO pessoas (nome, idade) VALUES ("Otávio", 16);

SELECT pessoas.nome, enderecos.rua
FROM pessoas
RIGHT JOIN enderecos ON pessoas.id = enderecos.pessoa_id;