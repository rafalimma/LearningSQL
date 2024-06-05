-- EXISTS
-- desativando only full group by
SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));
-- se existe algum registro em uma subquery
USE employees;

SELECT * FROM salaries;

SELECT last_name, (
	SELECT SUM(salary)
    FROM salaries
    WHERE employees.emp_no = salaries.emp_no
) AS soma_salario
FROM employees
WHERE EXISTS (
	SELECT salary
    FROM salaries
    WHERE employees.emp_no = salaries.emp_no
    HAVING SUM(salary) > 2000000
);
