-- FORMAT
USE sakila;
SELECT customer_id, amount, FORMAT(amount, 2) FROM payment;