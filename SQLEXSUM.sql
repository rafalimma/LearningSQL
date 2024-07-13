USE employees;

SELECT MIN(salary) AS menor_salario,
MAX(salary) AS maior_salario 
FROM salaries;

-- SUM soma de valores de uma comula
USE sakila;
SELECT SUM(amount) AS soma_pagamentos FROM payment;
