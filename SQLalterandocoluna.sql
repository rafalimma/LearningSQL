-- modificando uma coluna
ALTER TABLE funcionarios ADD COLUMN data_Nascimento VARCHAR(100);

SELECT * FROM funcionarios;

ALTER TABLE funcionarios MODIFY COLUMN data_nascimento DATE;

