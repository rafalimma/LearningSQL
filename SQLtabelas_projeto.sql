USE pizzaria;


select * FROM bordas;
SELECT * FROM massas;

CREATE TABLE pizzas (
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    borda_id INT NOT NULL,
    massa_id INT NOT NULL,
    FOREIGN KEY (borda_id) REFERENCES bordas(id),
    FOREIGN KEY (massa_id) REFERENCES massas(id)
);
SELECT * FROM pizzas;

CREATE TABLE pizza_sabor (
	id INT PRIMARY KEY NOT NULL,
    pizzas_id INT,
    sabores_id INT,
    FOREIGN KEY (pizzas_id) REFERENCES pizzas(id),
    FOREIGN KEY (sabores_id) REFERENCES sabores(id)
);

ALTER TABLE
pizza_sabor MODIFY COLUMN id INT AUTO_INCREMENT;
ALTER TABLE
pizza_sabor MODIFY COLUMN sabores_id INT NOT NULL;

SELECT * FROM pizza_sabor;

ALTER TABLE
pizzas ADD COLUMN
pizza_sabores_id INT NOT NULL;

ALTER TABLE pizzas
ADD CONSTRAINT pizza_sabores_id
FOREIGN KEY (pizza_sabores_id) REFERENCES pizza_sabor(pizzas_id);

SELECT CONSTRAINT_NAME
FROM information_schema.KEY_COLUMN_USAGE
WHERE TABLE_NAME = 'pizzas' AND COLUMN_NAME = 'pizza_sabores_id';

CREATE TABLE status (
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    tipo VARCHAR(100)
);

CREATE TABLE pedidos (
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome_cliente VARCHAR(100),
    pizzas_id INT NOT NULL,
    status_id INT NOT NULL,
    FOREIGN KEY (pizzas_id) REFERENCES pizzas(id),
    FOREIGN KEY (status_id) REFERENCES status(id)
);




