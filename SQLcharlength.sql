USE sakila;

SELECT * FROM actor LIMIT 40;
SELECT first_name, CHAR_LENGTH(first_name), last_name,
CHAR_LENGTH(last_name) AS qtd_chars FROM actor WHERE CHAR_LENGTH(first_name) > 10;