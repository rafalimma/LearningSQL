-- HAVING
USE employees;

SELECT hire_date, COUNT(hire_date) AS 'Data de contratação'
FROM employees
GROUP BY hire_date
HAVING COUNT(hire_date) > 80
ORDER BY COUNT(hire_date) DESC;

SELECT title, COUNT(title) AS 'titulos'
FROM titles
group by title
HAVING COUNT(title) > 100000;