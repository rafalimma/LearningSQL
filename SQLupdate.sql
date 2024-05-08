-- atualizando os dados UPDATE
SET SQL_SAFE_UPDATES = 0;


USE cadastro;
SELECT * FROM pessoas;
UPDATE pessoas SET limite = 8000 WHERE nome = 'Roberta';
UPDATE pessoas SET limite = 7000 WHERE nome = 'Jake';
