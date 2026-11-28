-- Day 2: ORDER BY (with WHERE and LIMIT)
-- Practice table: students

DROP TABLE IF EXISTS students;

CREATE TABLE students (
    id INTEGER PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(20),
    city VARCHAR(30),
    age INT,
    cgpa DECIMAL(3,1)
);

INSERT INTO students (id, name, department, city, age, cgpa) VALUES
(1,  'Ananya',  'CSE',  'Hyderabad', 21, 9.1),
(2,  'Rahul',   'IT',   'Chennai',   22, 7.8),
(3,  'Priya',   'CSE',  'Bengaluru', 21, 8.6),
(4,  'Kiran',   'ECE',  'Hyderabad', 23, 7.2),
(5,  'Sneha',   'IT',   'Hyderabad', 22, 8.9),
(6,  'Arjun',   'Mech', 'Pune',      24, 6.9),
(7,  'Divya',   'CSE',  'Chennai',   21, 9.4),
(8,  'Varun',   'ECE',  'Bengaluru', 22, 8.1),
(9,  'Meghana', 'IT',   'Pune',      21, 8.3),
(10, 'Rohit',   'CSE',  'Hyderabad', 23, 7.6),
(11, 'Lakshmi', 'Mech', 'Chennai',   22, 7.9),
(12, 'Teja',    'ECE',  'Hyderabad', 21, 8.7);

-- Query 1: sort by CGPA, lowest first (ASC is the default)
SELECT name, cgpa FROM students ORDER BY cgpa;

-- Query 2: sort by CGPA, highest first
SELECT name, cgpa FROM students ORDER BY cgpa DESC;

-- Query 3: sort names A to Z
SELECT name FROM students ORDER BY name ASC;

-- Query 4 (WHERE + ORDER BY): CSE students, highest CGPA first
SELECT name, cgpa FROM students WHERE department = 'CSE' ORDER BY cgpa DESC;

-- Query 5 (WHERE + ORDER BY): Hyderabad students, youngest first
SELECT name, age FROM students WHERE city = 'Hyderabad' ORDER BY age ASC;

-- Query 6 (two columns): department A to Z, then highest CGPA first inside each department
SELECT name, department, cgpa FROM students ORDER BY department ASC, cgpa DESC;

-- Query 7 (two columns): city A to Z, then name A to Z
SELECT name, city FROM students ORDER BY city ASC, name ASC;

-- Query 8 (WHERE + ORDER BY): CGPA above 8, oldest first
SELECT name, age, cgpa FROM students WHERE cgpa > 8 ORDER BY age DESC;

-- Query 9 (LIMIT): top 3 students by CGPA
SELECT name, cgpa FROM students ORDER BY cgpa DESC LIMIT 3;

-- Query 10 (NOT + ORDER BY + LIMIT): top 5 CGPA students who are not from Pune
SELECT name, city, cgpa FROM students WHERE NOT city = 'Pune' ORDER BY cgpa DESC LIMIT 5;
