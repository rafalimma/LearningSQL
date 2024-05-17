-- JOIN com duas tabelas

SELECT * FROM employees.employees;
USE employees;
SELECT employees.first_name, salaries.salary, titles.title
FROM employees
INNER JOIN salaries ON employees.emp_no = salaries.emp_no
INNER JOIN titles ON employees.emp_no = titles.emp_no;

SELECT * FROM dept_manager;
SELECT employees.first_name, employees.gender, dept_manager.dept_no
FROM dept_manager
INNER JOIN employees ON employees.emp_no = dept_manager.emp_no;