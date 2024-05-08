-- ORDER BY

SELECT * FROM salaries ORDER BY salary DESC;
SELECT * FROM salaries ORDER BY emp_no;
SELECT * FROM salaries ORDER BY salary ASC;

SELECT * FROM titles ORDER BY title DESC;

-- LIMIT
SELECT * FROM salaries LIMIT 10;
SELECT * FROM salaries ORDER BY salary DESC LIMIT 10;
SELECT * FROM employees ORDER BY birth_date LIMIT 15; 

SELECT * FROM titles ORDER BY title LIMIT 5;

