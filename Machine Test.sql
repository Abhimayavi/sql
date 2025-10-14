CREATE DATABASE Machine_Test
--    create database 

CREATE TABLE Employee(
id  INT PRIMARY KEY AUTO_INCREMENT,
Name VARCHAR(100) NOT NULL,
Department VARCHAR(50),
Leave INT);

INSERT INTO employee VALUES
(1, 'Raju', 'sales', 1),
(2, 'Sangeetha', 'sales', 3),
(3, 'Vinay', 'operations', 8),
(4, 'Abey', 'packing', 2),
(5, 'Thomas', 'packing', 1),
(6, 'Muneer', 'operations', 7),
(7, 'Aparna', 'sales', 3),
(8, 'Abid', 'operations', 9),
(9, 'Fathima', 'sales', 11),
(10, 'Varghese', 'operations', 14);
    -- first table..

CREATE TABLE Exam (
    id INT PRIMARY KEY AUTO_INCREMENT,
    Employee_id INT,
    exam_status VARCHAR(10),
    FOREIGN KEY (Employee_id)REFERENCES Employee(id) 
);
INSERT INTO exam VALUES
(1, 2, 'pass'),
(2, 5, 'fail'),
(3, 1, 'fail'),
(4, 8, 'pass'),
(5, 3, 'pass'),
(6, 1, 'pass'),
(7, 6, 'fail'),
(8, 9, 'pass'),
(9, 10, 'pass');

    --  second table...


SELECT Name FROM employee WHERE Department='Sales' AND Leave_Count>5;

SELECT COUNT(*) 
FROM Employee
WHERE Department = 'Operations';

SELECT Department, COUNT(*) 
FROM Employee
GROUP BY Department;


SELECT department ,sum(leave_Count)
FROM employee 
GROUP BY department 
HAVING SUM(leave_Count) > 10;


SELECT name
FROM employee
WHERE id IN (
    SELECT employee_id
    FROM exam
    WHERE exam_status = 'pass'
);


SELECT name 
FROM employee 
WHERE id NOT IN (SELECT employee_id FROM exam);
--   employee who are not attend the exam in employee table from exam(employee_id)

SELECT e.name
FROM employee e
JOIN exam ex ON e.id = ex.employee_id
WHERE ex.exam_status = 'pass';

SELECT e.nameFROM employee e
LEFT JOIN exam ex ON e.id = ex.employee_id
WHERE ex.employee_id IS NULL;
