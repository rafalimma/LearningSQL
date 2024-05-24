USE employees;
SELECT * FROM employees;

SELECT hire_date, COUNT(hire_date) AS 'trabalhadores'
FROM employees GROUP BY hire_date
ORDER BY COUNT(hire_date) DESC;