-- and tem que atender todas as possibilidades
SELECT * FROM salaries WHERE salary > 150000 AND from_date > "1998-12-12" AND emp_no > 12800;

SELECT * FROM salaries WHERE salary > 150000 OR from_date > "1998-12-12" OR emp_no > 12800;