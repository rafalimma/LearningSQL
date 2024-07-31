USE relacoes;

CREATE TABLE materias (
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(100)
);

SELECT * FROM estudantes;

CREATE TABLE estudantes_materias (
	estudante_id INT NOT NULL,
    materia_id INT NOT NULL,
    FOREIGN KEY (estudante_id) REFERENCES estudantes(id),
    FOREIGN KEY (materia_id) REFERENCES materias(id)
);

INSERT INTO materias (nome) VALUES ("História");
SELECT * FROM materias;
SELECT * FROM estudantes;
SELECT * FROM estudantes_materias;
SELECT turma, COUNT(*) AS alunos FROM estudantes GROUP BY turma;
INSERT INTO estudantes (nome, turma) VALUES ("José", "8B");

INSERT INTO estudantes_materias (estudante_id, materia_id) VALUES (2, 3);

SELECT * FROM estudantes
INNER JOIN estudantes_materias ON estudantes.id = estudantes_materias.estudante_id
AND estudantes_materias.materia_id = 2;

