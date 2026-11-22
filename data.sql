INSERT INTO departments (department_id, department_name, location) VALUES
(1, 'Engineering', 'Nagpur'),
(2, 'Operations', 'Nagpur'),
(3, 'Finance', 'Mumbai'),
(4, 'Human Resources', 'Pune');

INSERT INTO employees (employee_id, full_name, department_id, job_role, hire_date, performance_rating, status) VALUES
(101, 'Aarav Deshmukh', 1, 'Database Executive', '2024-01-15', 4.6, 'Active'),
(102, 'Sneha Kulkarni', 1, 'Data Analyst', '2024-03-10', 4.2, 'Active'),
(103, 'Rohan Joshi', 2, 'Operations Coordinator', '2023-07-01', 3.8, 'Active'),
(104, 'Pooja Verma', 3, 'Accounts Analyst', '2023-11-20', 4.5, 'Active'),
(105, 'Vikram Patil', 2, 'Logistics Executive', '2024-05-05', 3.5, 'Active'),
(106, 'Neha Gupta', 4, 'HR Associate', '2023-09-12', 4.0, 'Active'),
(107, 'Karan Sawant', 1, 'Junior SQL Analyst', '2025-02-01', 4.4, 'Active'),
(108, 'Meera Nair', 3, 'Payroll Specialist', '2022-06-18', 4.7, 'Active');

INSERT INTO payroll_records (payroll_id, employee_id, pay_period_month, basic_salary, bonus, deductions, net_pay) VALUES
(1, 101, '2026-10', 32000.00, 4000.00, 2500.00, 33500.00),
(2, 102, '2026-10', 30000.00, 2500.00, 2000.00, 30500.00),
(3, 103, '2026-10', 26000.00, 1500.00, 1800.00, 25700.00),
(4, 104, '2026-10', 34000.00, 3500.00, 2600.00, 34900.00),
(5, 105, '2026-10', 25000.00, 1000.00, 1500.00, 24500.00),
(6, 106, '2026-10', 28000.00, 2000.00, 1900.00, 28100.00),
(7, 107, '2026-10', 29000.00, 3000.00, 2100.00, 29900.00),
(8, 108, '2026-10', 38000.00, 5000.00, 3000.00, 40000.00);
