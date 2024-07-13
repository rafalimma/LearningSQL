-- FRLOOR arredonda para baixo

USE sakila;
SELECT amount, CEIL(amount) AS para_cima, FLOOR(amount) AS para_baixo FROM payment;

-- MAX retorna o mair valor de uma coluna

SELECT MAX(amount) AS maior_pagamento,
MIN(amount) AS menor_pagamento
FROM payment;

-- MIN retorna o menor valor de uma coluna

