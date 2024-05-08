-- função SUM()

SELECT SUM(salary) AS soma_dos_salarios FROM salaries;
SELECT SUM(salary) AS soma_dos_salarios FROM salaries WHERE salary > 100000;
-- filtra apenas pelo WHERE

-- LIKE
SELECT * FROM employees WHERE last_name LIKE '%MC%';
-- sem % permite que não harera outra letra depois da string
SELECT * FROM employees WHERE last_name LIKE '%MC%' AND gender = 'F';

SELECT * FROM titles WHERE title LIKE '%engineer%';