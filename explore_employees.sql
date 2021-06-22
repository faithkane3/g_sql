SHOW DATABASES;

USE employees;

SHOW TABLES;

-- emp_no, birth_date, first_name, last_name, gender, hire_date
-- 300_024 rows in total, 300_024 unique emp_id
DESCRIBE employees;
SELECT *
FROM employees;
SELECT DISTINCT emp_no
FROM employees;

-- dept_no, dept_name
-- 9 rows in total, 9 unique dept_no
DESCRIBE departments;
SELECT *
FROM departments;
SELECT DISTINCT dept_no
FROM departments;

-- emp_no, dept_no, from_date, to_date
-- 331_603 rows in total, 300_024 unique emp_id
DESCRIBE dept_emp;
SELECT *
FROM dept_emp;
SELECT DISTINCT emp_no
FROM dept_emp;

-- emp_no, dept_no, from_date, to_date
-- 24 ROWS IN total, 24 unique emp_no
DESCRIE dept_manager;
SELECT *
FROM dept_manager;
SELECT DISTINCT emp_no
FROM dept_manager;

-- emp_no, dept_no, from_date, to_date
-- 2_844_047 rows in total, 300_024 unique emp_no
DESCRIBE salaries;
SELECT *
FROM salaries;
SELECT DISTINCT emp_no
FROM salaries;

-- emp_no, salary, from_date, to_date
-- 443_308 rows in total, 300_024 unique emp_no
DESCRIBE titles;
SELECT *
FROM titles;
SELECT DISTINCT emp_no
FROM titles;

