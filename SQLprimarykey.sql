-- PRIMARY KEY
USE constraints;
CREATE TABLE produtos (
	id INT NOT NULL,
    nome VARCHAR(255),
    sku VARCHAR(10),
    PRIMARY KEY (id)
);
INSERT INTO produtos VALUES ("Micro-ondas", "12345");
SELECT * FROM produtos;