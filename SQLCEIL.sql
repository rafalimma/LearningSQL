-- CEIL arredonda numeros para cima ^
-- 25.8 > 26

SELECT amount, CEIL(amount) FROM payment;

-- COUNT conta o numero de ocorrencias de uma determinada coluna

SELECT COUNT(*) FROM payment;

-- execicio

SELECT COUNT(*) AS quantidade FROM customer;

