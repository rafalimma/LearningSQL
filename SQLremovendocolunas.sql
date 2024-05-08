-- removendo colunas
SELECT * FROM funcionarios;
ALTER TABLE funcionarios ADD COLUMN f_ativo CHAR(11);

ALTER TABLE funcionarios DROP COLUMN f_ativo;

USE empresa;
ALTER TABLE pessoas DROP COLUMN descricao;