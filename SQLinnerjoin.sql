-- JOIN
-- INNER JOIN vai resultas nas colunas que fazem relação entre as tabelas
SELECT * FROM titles LIMIT 30;
SELECT * FROM salaries LIMIT 30;

USE employees;
SELECT employees.first_name, employees.last_name, salaries.salary AS salario
FROM employees
INNER JOIN salaries ON employees.emp_no = salaries.emp_no
WHERE salaries.salary BETWEEN 10000 AND 100000
ORDER BY salaries.salary DESC; 

SELECT employees.first_name, employees.gender, titles.title AS cargo
FROM employees
INNER JOIN titles ON titles.emp_no = employees.emp_no
WHERE titles.title LIKE '%Engineer%';