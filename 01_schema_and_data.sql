CREATE DATABASE IF NOT EXISTS emp_payroll_analysis;
USE emp_payroll_analysis;

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL,
    location VARCHAR(50)
);

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100) NOT NULL,
    dept_id INT,
    hire_date DATE,
    base_salary DECIMAL(10, 2),
    performance_rating DECIMAL(3, 1),
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

CREATE TABLE payroll (
    payroll_id INT PRIMARY KEY,
    emp_id INT,
    pay_month VARCHAR(10),
    bonus DECIMAL(10, 2) DEFAULT 0.00,
    deductions DECIMAL(10, 2) DEFAULT 0.00,
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);

INSERT INTO departments VALUES
(10, 'Data & Analytics', 'Nagpur'),
(20, 'Software Engineering', 'Pune'),
(30, 'Sales & Marketing', 'Mumbai'),
(40, 'Human Resources', 'Nagpur');

INSERT INTO employees VALUES
(101, 'Amit Deshmukh', 10, '2023-06-15', 48000.00, 4.7),
(102, 'Sneha Kulkarni', 10, '2024-01-10', 42000.00, 4.3),
(103, 'Priya Nair', 20, '2022-11-20', 62000.00, 4.8),
(104, 'Karan Verma', 30, '2023-09-05', 36000.00, 4.5),
(105, 'Anjali Tiwari', 40, '2023-03-22', 38000.00, 4.4);

INSERT INTO payroll VALUES
(1, 101, '2026-01', 6000.00, 2000.00),
(2, 102, '2026-01', 4000.00, 1500.00),
(3, 103, '2026-01', 8000.00, 3000.00),
(4, 104, '2026-01', 5000.00, 1500.00),
(5, 105, '2026-01', 3500.00, 1200.00);
