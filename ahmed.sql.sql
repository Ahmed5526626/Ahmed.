
CREATE TABLE Employee (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    DOB DATE,
    salary DECIMAL(10,2),
    Street VARCHAR(100),
    No VARCHAR(10)
);

CREATE TABLE Project (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    budget DECIMAL(12,2)
);

CREATE TABLE WorksFor (
    emp_id INT,
    project_id INT,
    startDate DATE,
    PRIMARY KEY (emp_id, project_id),
    FOREIGN KEY (emp_id) REFERENCES Employee(id),
    FOREIGN KEY (project_id) REFERENCES Project(id)
);


INSERT INTO Employee VALUES 
(1, 'Ali Ahmed', '1990-05-10', 7000.00, 'Tahrir St', '12'),
(2, 'Sara Ibrahim', '1992-08-20', 7500.00, 'ElNasr St', '5'),
(3, 'Omar Nabil', '1988-12-01', 6800.00, 'Dokki St', '20'),
(4, 'Laila Hassan', '1987-07-15', 7200.00, 'Garden St', '8'),
(5, 'Mohamed Ali', '1991-11-11', 6900.00, 'Heliopolis St', '15'),
(6, 'Nour El-Din', '1985-03-05', 7300.00, 'Maadi St', '22'),
(7, 'Sara Khaled', '1993-09-23', 7100.00, 'Zamalek St', '9'),
(8, 'Tarek Samir', '1989-06-10', 7000.00, 'Mohandessin St', '18'),
(9, 'Aya Mostafa', '1994-12-30', 6800.00, 'Dokki St', '14'),
(10, 'Youssef Adel', '1990-04-25', 6950.00, 'Nasr City', '7');


INSERT INTO Project VALUES
(101, 'AI System', 150000.00),
(102, 'Mobile App', 50000.00),
(103, 'Web Portal', 70000.00),
(104, 'E-commerce', 90000.00),
(105, 'Cloud Service', 200000.00),
(106, 'CRM System', 120000.00),
(107, 'Data Analytics', 110000.00),
(108, 'Mobile Game', 40000.00),
(109, 'Blockchain App', 130000.00),
(110, 'IoT System', 95000.00);

INSERT INTO WorksFor VALUES
(1, 101, '2022-01-01'),
(2, 101, '2023-02-15'),
(2, 102, '2024-03-20'),
(3, 102, '2023-10-10'),
(4, 103, '2023-01-01'),
(5, 104, '2023-03-15'),
(6, 105, '2023-05-20'),
(7, 106, '2023-06-10'),
(8, 107, '2023-07-05'),
(9, 108, '2023-08-15'),
(10, 109, '2023-09-25'),
(1, 110, '2023-10-30'),
(3, 103, '2023-11-10');


SELECT * FROM Employee
WHERE name LIKE '%Omar%';

SELECT AVG(salary) AS average_salary FROM Employee;

SELECT * FROM Project
ORDER BY budget ASC;

SELECT * FROM Employee
ORDER BY DOB DESC;

SELECT project_id, COUNT(emp_id) AS employee_count
FROM WorksFor
GROUP BY project_id;
