-- SQL BASICS
CREATE DATABASE company;
SHOW DATABASES;
USE company;
SHOW TABLES;
-- CREATE TABLE
CREATE TABLE employees (
    id INT,
    name VARCHAR(50),
    age INT,
    salary INT
);
DESC employees;
--INSERT one 
INSERT INTO employees values(101,"RG",25,10000);
-- INSERT Many
INSERT INTO employees VALUES
(1, 'Rahul', 25, 30000),
(2, 'Priya', 28, 40000),
(3, 'Arun', 30, 50000),
(4, 'Sneha', 24, 25000),
(5, 'Kiran', 35, 60000);
-- READ
SELECT * FROM employees;
SELECT name, salary FROM employees;
-- UPDATE
UPDATE employees
SET salary = 35000
WHERE id = 1;
-- DELETE
DELETE FROM employees
WHERE id = 4;
-- MIN
SELECT MIN(salary) FROM employees;
-- MAX
SELECT MAX(salary) FROM employees;
-- SUM
SELECT SUM(salary) FROM employees;
-- AVG
SELECT AVG(salary) FROM employees;
