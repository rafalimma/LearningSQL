-- NOT iverte uma clausula

SELECT * FROM titles WHERE NOT title = 'Staff' AND NOT title = 'Senior Engineer';
SELECT * FROM titles WHERE NOT title LIKE '%Staff%';
