CREATE DATABASE relacoes;
USE relacoes;
CREATE TABLE estudantes (
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(100),
    turma VARCHAR(5)
);

CREATE TABLE contatos (
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    telefone VARCHAR(20),
    instagram VARCHAR(20),
    estudante_id INT NOT NULL,
    FOREIGN KEY (estudante_id) REFERENCES estudantes(id)
);

ALTER TABLE contatos CHANGE instagram email VARCHAR(20);

SELECT * FROM relacoes.contatos;

INSERT INTO estudantes (nome, turma) VALUES ("Caio", "8B");
INSERT INTO estudantes (nome, turma) VALUES ("Olivia", "8A");
SELECT * FROM estudantes;
INSERT INTO contatos (telefone, email, estudante_id) VALUES ("994323-6932", "ttgsa@", 2);
SELECT * FROM contatos;

SELECT estudantes.nome, estudantes.turma, contatos.telefone, contatos.email
FROM estudantes
INNER JOIN contatos ON estudantes.id = contatos.estudante_id;