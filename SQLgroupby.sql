-- GROUP BY

USE employees;
SELECT gender, COUNT(gender) AS 'Quantidade por gen'
FROM employees GROUP BY gender;
-- resultados agrupados por grupos
SELECT * FROM titles;
SELECT emp_no, COUNT(emp_no) AS 'ids'
FROM titles GROUP BY title;
