-- UNION

USE employees;
SELECT dept_no FROM departments
UNION SELECT dept_no FROM dept_emp;
-- trás o resultado das duas consultas, sem dados duplicados

SELECT dept_no FROM departments;

INSERT INTO departments VALUES ('d010', 'SEO');