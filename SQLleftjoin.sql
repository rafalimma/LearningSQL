-- LEFT JOIN

USE constraints;
INSERT INTO pessoas (nome, idade) VALUES ("Jose", 55);
SELECT * FROM pessoas;

SELECT pessoas.nome, enderecos.*
FROM pessoas
LEFT JOIN enderecos ON pessoas.id = enderecos.pessoa_id
-- vai trazer tudo de enderecos e apenas o que você falar pra traser, de pessoas