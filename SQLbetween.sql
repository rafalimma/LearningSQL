USE employees;
-- BETWEEN pega uma faixa de valores

SELECT * FROM dept_emp WHERE dept_no BETWEEN 'd003' AND 'd005' ORDER BY dept_no DESC;

SELECT * FROM salaries WHERE salary BETWEEN 125000 AND 175000 ORDER BY salary DESC;