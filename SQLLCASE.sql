-- IN STR
-- retorna a posição da letra na string alvo
USE sakila;
USE employees;
USE empresa;
SELECT email, INSTR(email, "org") FROM customer;

-- LCASE
-- transforma o testo em letras minúsculas
SELECT first_name, last_name, LCASE(CONCAT(first_name, " ", last_name)) 
AS nome_completo FROM customer;
