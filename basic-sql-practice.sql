CREATE DATABASE practice_company;
USE practice_company;

CREATE TABLE employees (
	emp_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    salary DECIMAL(10,2),
    department_id INT,
    manager_id INT
);

CREATE TABLE departments (
	department_id INT PRIMARY KEY,
    department_name VARCHAR(50),
    location VARCHAR(50)
);

INSERT INTO departments VALUES 
(1, 'IT', 'New York'),
(2, 'HR', 'Chicago'),
(3, 'Sales', 'Los Angeles'),
(4, 'Marketing', 'Boston');

INSERT INTO employees VALUES
(1, 'John', 'Smith', 'john.smith@email.com', 65000, 1, NULL),
(2, 'Mary', 'Johnson', 'mary.j@email.com', 55000, 2, 1),
(3, 'James', 'Wilson', 'james.wilson@email.com', 52000, 1, 1),
(4, 'Patricia', 'Williams', 'pat.w@email.com', 48000, 2, 2),
(5, 'Mary', 'Wilson', 'mary.w@email.com', 51000, 3, 1),
(6, 'John', 'Davis', 'john.d@email.com', NULL, 3, 5);

SELECT * FROM employees WHERE department_id = 1;
SELECT first_name, last_name, salary FROM employees WHERE salary > 50000;

SELECT * FROM employees WHERE salary IS NULL;
SELECT * FROM employees WHERE salary IS NOT NULL;

SELECT DISTINCT first_name FROM employees;
SELECT DISTINCT location FROM departments;

SELECT *
FROM employees
WHERE salary > 50000 AND department_id = 1;

SELECT *
FROM employees
WHERE salary IS NULL OR salary < 50000;

SELECT DISTINCT 
	first_name,
    department_id
FROM
	employees;

SELECT *
FROM departments;

SELECT DISTINCT 
	department_name,
    location
FROM
	departments;
    
SELECT DISTINCT
	first_name,
    salary
FROM
	employees;
    
SELECT first_name, COUNT(DISTINCT salary) AS different_salaries
FROM employees
GROUP BY first_name
HAVING COUNT(DISTINCT salary) >1;

SELECT first_name, COUNT(*) as count
FROM employees
GROUP BY first_name;

SELECT
	department_id,
    COUNT(*) AS employee_count
FROM employees
GROUP BY department_id;

SELECT 
	department_id, 
    AVG(salary) AS avg_salary
FROM
	employees
GROUP BY 
	department_id;
    
SELECT
	department_id,
    COUNT(*) AS num_employees,
    AVG(salary) AS avg_salary,
    MAX(salary) AS highest_salary,
    MIN(salary) AS lowest_salary,
    SUM(salary) AS total_salary
FROM 
	employees
GROUP BY
	department_id;

SELECT
	department_id,
    COUNT(*) AS num_employees
FROM
	employees
GROUP BY
	department_id
HAVING
	COUNT(*) > 2;
    
SELECT
	department_id,
    AVG(salary) AS avg_salary
FROM employees
GROUP BY department_id
HAVING AVG(salary)>51000;

SELECT
	first_name,
    COUNT(*) AS count
FROM 
	employees
GROUP BY
	first_name;

SELECT * FROM employees;

SELECT 
	department_id,
    MAX(salary) AS highest_salary
FROM
	employees
GROUP BY
	department_id
HAVING
	MAX(salary)>60000;
    
SELECT
	first_name,
    COUNT(*) AS count
FROM 
	employees
GROUP BY
	first_name
HAVING
	COUNT(*)>1;
    
