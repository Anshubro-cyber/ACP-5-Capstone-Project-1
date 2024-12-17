CREATE TABLE IF NOT EXISTS employees (
  employee_id TEXT PRIMARY KEY,
  name TEXT,
  department TEXT,
  city TEXT,
  salary REAL,
  hire_date TEXT,
  bonus REAL,
  commission_rate REAL,
  performance_rating INTEGER
);

INSERT INTO employees (employee_id, name, department, city, salary, hire_date, bonus, commission_rate, performance_rating) VALUES
  ('E1001', 'James Hoog', 'Sales', 'New York', 55000, '2015-03-20', 3000, 0.15, 5),
  ('E1002', 'Nail Knite', 'Marketing', 'Paris', 48000, '2016-07-10', NULL, 0.13, 4),
  ('E1003', 'Pit Alex', 'Sales', 'London', 45000, '2017-01-15', 2000, 0.12, 3),
  ('E1004', 'Mc Lyon', 'IT', 'Paris', 60000, '2018-04-25', 3500, 0.14, 5),
  ('E1005', 'Paul Adam', 'HR', 'Rome', 42000, '2019-02-10', NULL, 0.13, 4),
  ('E1006', 'Lausen Hen', 'IT', 'San Francisco', 53000, '2017-11-30', 1500, 0.11, 4),
  ('E1007', 'Brad Davis', 'Sales', 'New York', 70000, '2015-08-19', 4000, 0.16, 5),
  ('E1008', 'Julian Green', 'Marketing', 'London', 46000, '2016-06-22', 1000, 0.14, 3),
  ('E1009', 'Graham Zusi', 'HR', 'California', 48000, '2019-01-10', NULL, 0.12, 4),
  ('E1010', 'Geoff Cameron', 'Sales', 'Berlin', 52000, '2018-07-25', 3000, 0.13, 5);


SELECT * FROM employees;

SELECT DISTINCT department FROM employees;


SELECT * FROM employees WHERE city = 'New York';


SELECT * FROM employees WHERE salary > 50000;


SELECT * FROM employees WHERE performance_rating = 5;


SELECT * FROM employees WHERE bonus IS NOT NULL;


SELECT * FROM employees WHERE bonus IS NULL;

SELECT * FROM employees WHERE name LIKE 'J%';

SELECT * FROM employees WHERE salary BETWEEN 45000 AND 55000;

SELECT * FROM employees WHERE commission_rate BETWEEN 0.12 AND 0.15;

SELECT * FROM employees WHERE department IN ('Sales', 'Marketing') AND city = 'New York';


SELECT * FROM employees WHERE hire_date > '2017-01-01';

SELECT * FROM employees WHERE name LIKE '%Green%';

SELECT * FROM employees WHERE performance_rating IS NULL;

SELECT * FROM employees WHERE commission_rate >= 0.14;


SELECT * FROM employees WHERE salary > 50000 AND performance_rating >= 4;


SELECT * FROM employees WHERE performance_rating IN (3, 4);


SELECT department, COUNT(*) AS num_employees FROM employees GROUP BY department;


SELECT * FROM employees WHERE salary = (SELECT MAX(salary) FROM employees);


SELECT * FROM employees WHERE salary = (SELECT MIN(salary) FROM employees);


SELECT * FROM employees WHERE performance_rating = 5 ORDER BY salary DESC;


SELECT AVG(salary) AS avg_salary FROM employees;


SELECT * FROM employees WHERE hire_date < '2017-01-01' AND salary > 50000;

SELECT * FROM employees WHERE department != 'IT';

SELECT * FROM employees WHERE bonus > 1000 AND city = 'New York';


SELECT * FROM employees WHERE name LIKE '%Smith%' AND department = 'Finance';


SELECT * FROM employees WHERE commission_rate > 0 AND bonus IS NULL;


SELECT * FROM employees WHERE salary > 60000 AND performance_rating >= 4;
