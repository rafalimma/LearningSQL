-- OR possibilita um das condições na query
USE employees;

SELECT * FROM titles WHERE title = "Senior Engineer" OR title = "Staff" OR emp_no > 12500
ORDER BY emp_no DESC;