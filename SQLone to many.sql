USE relacoes;
CREATE TABLE clientes (
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(100),
    data_nascimento DATE
);

CREATE TABLE pedidos (
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
	sku VARCHAR(10),
    tipo VARCHAR(20),
    cliente_id INT NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

ALTER TABLE pedidos
CHANGE sku quantidade VARCHAR(20);

ALTER TABLE pedidos
MODIFY COLUMN tipo tipo_s VARCHAR(50)

SELECT * FROM pedidos;

INSERT INTO clientes (nome, data_nascimento) VALUES ("Roberto", "2005-04-11");
INSERT INTO pedidos (quantidade, tipo, cliente_id) VALUES (3, "Chocolates", 3);
SELECT * FROM pedidos;
SELECT pedidos.cliente_id, clientes.nome, pedidos.quantidade, pedidos.tipo
FROM clientes
INNER JOIN pedidos ON clientes.id = pedidos.cliente_id;