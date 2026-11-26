-- Day 1: WHERE with AND, OR, NOT
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

-- Query 1: students with CGPA above 8
SELECT * FROM students WHERE cgpa > 8;

-- Query 2: students from the CSE department
SELECT * FROM students WHERE department = 'CSE';

-- Query 3: students from Pune
SELECT * FROM students WHERE city = 'Pune';

-- Query 4 (AND): students from Hyderabad with CGPA of 8 or more
SELECT * FROM students WHERE city = 'Hyderabad' AND cgpa >= 8;

-- Query 5 (OR): students from CSE or IT
SELECT * FROM students WHERE department = 'CSE' OR department = 'IT';

-- Query 6 (NOT): students who are not from Hyderabad
SELECT * FROM students WHERE NOT city = 'Hyderabad';

-- Query 7 (AND): students aged 21 or 22
SELECT * FROM students WHERE age >= 21 AND age <= 22;

-- Query 8 (AND + OR with brackets): CSE or IT students with CGPA above 8.5
SELECT * FROM students
WHERE (department = 'CSE' OR department = 'IT') AND cgpa > 8.5;

-- Query 9 (NOT + AND): students from Chennai who are not in Mech
SELECT * FROM students WHERE NOT department = 'Mech' AND city = 'Chennai';

-- Query 10 (OR): students with CGPA below 7.5 or age 24 and above
SELECT * FROM students WHERE cgpa < 7.5 OR age >= 24;
