CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL,
    location VARCHAR(100) NOT NULL
);

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    full_name VARCHAR(120) NOT NULL,
    department_id INT,
    job_role VARCHAR(100) NOT NULL,
    hire_date DATE NOT NULL,
    performance_rating DECIMAL(3, 1),
    status VARCHAR(20) DEFAULT 'Active',
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

CREATE TABLE payroll_records (
    payroll_id INT PRIMARY KEY,
    employee_id INT NOT NULL,
    pay_period_month VARCHAR(20) NOT NULL,
    basic_salary DECIMAL(10, 2) NOT NULL,
    bonus DECIMAL(10, 2) DEFAULT 0.00,
    deductions DECIMAL(10, 2) DEFAULT 0.00,
    net_pay DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);
