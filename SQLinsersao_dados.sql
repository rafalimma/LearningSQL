USE pizzaria;

INSERT INTO status (tipo) VALUES ("Em produção");
INSERT INTO status (tipo) VALUES ("Em entrega");
INSERT INTO status (tipo) VALUES ("Concluido");
SELECT * FROM status;

INSERT INTO massas (tipo) VALUES ("Massa comum");
INSERT INTO massas (tipo) VALUES ("Massa temperada");
INSERT INTO massas (tipo) VALUES ("Massa integral");
SELECT * FROM massas;

INSERT INTO bordas (tipo) VALUES ("Cheddar");
INSERT INTO bordas (tipo) VALUES ("Catupiry");
INSERT INTO bordas (tipo) VALUES ("Chocolate");
SELECT * FROM bordas;

SELECT * FROM sabores;
INSERT INTO sabores (sabor) VALUES ("Mexicana");
SELECT * FROM sabores WHERE sabor = 'Mexicana';
DELETE FROM sabores WHERE id = 32;


