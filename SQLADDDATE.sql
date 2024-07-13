-- ADDDATE adiciona ou remove uma qtd de horas dias meses ou anos de uma data
USE sakila;

SELECT last_update, ADDDATE(last_update, "5 DAYS"),
ADDDATE(last_update, INTERVAL 2 MONTH),
ADDDATE(last_update, INTERVAL -3 YEAR)
FROM actor;
