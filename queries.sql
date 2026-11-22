-- 1. Filter and sort employee records using SELECT, WHERE, and ORDER BY
SELECT
    employee_id,
    full_name,
    job_role,
    performance_rating,
    hire_date,
    status
FROM employees
WHERE status = 'Active'
  AND performance_rating >= 4.0
ORDER BY performance_rating DESC, full_name ASC;

-- 2. Retrieve employee and payroll information together
SELECT
    e.employee_id,
    e.full_name,
    e.job_role,
    e.performance_rating,
    p.pay_period_month,
    p.basic_salary,
    p.bonus,
    p.deductions,
    p.net_pay
FROM employees e
INNER JOIN payroll_records p
    ON e.employee_id = p.employee_id
ORDER BY p.net_pay DESC;

-- 3. Combine employee, department, and payroll data using JOINs
SELECT
    e.employee_id,
    e.full_name,
    d.department_name,
    d.location,
    e.job_role,
    p.pay_period_month,
    p.net_pay
FROM employees e
INNER JOIN departments d
    ON e.department_id = d.department_id
INNER JOIN payroll_records p
    ON e.employee_id = p.employee_id
ORDER BY d.department_name ASC, p.net_pay DESC;

-- 4. Generate department-wise salary and payroll reports using GROUP BY and aggregate functions
SELECT
    d.department_name,
    COUNT(e.employee_id) AS employee_count,
    ROUND(AVG(e.performance_rating), 2) AS avg_performance_rating,
    SUM(p.basic_salary) AS total_basic_salary,
    SUM(p.bonus) AS total_bonus,
    SUM(p.deductions) AS total_deductions,
    SUM(p.net_pay) AS total_net_salary
FROM departments d
LEFT JOIN employees e
    ON d.department_id = e.department_id
LEFT JOIN payroll_records p
    ON e.employee_id = p.employee_id
GROUP BY d.department_name
ORDER BY total_net_salary DESC;
