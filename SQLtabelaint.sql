USE teste_tipo_dados;
CREATE TABLE servidores (
	nome VARCHAR(100),
	espaco_disco INT(10),
    ligado BOOL
);
INSERT INTO servidores(nome, espaco_disco, ligado) VALUES (
	"deesp_producao", 8, 1
);
INSERT INTO servidores(nome, espaco_disco, ligado) VALUES (
	"rafa_producao", 4, 1
);

SELECT * FROM servidores;

DROP TABLE servidores1;