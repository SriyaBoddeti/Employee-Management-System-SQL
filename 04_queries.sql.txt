USE employee_management;
GO

-- =========================
-- 1. View all employees
-- =========================
SELECT * 
FROM dbo.employee;
GO

-- =========================
-- 2. View all departments
-- =========================
SELECT * 
FROM dbo.department;
GO

-- =========================
-- 3. Employees with their departments (JOIN)
-- =========================
SELECT e.emp_id,
       e.emp_name,
       d.dept_name
FROM dbo.employee e
JOIN dbo.department d
     ON e.dept_id = d.dept_id;
GO

-- =========================
-- 4. Employee salary details (JOIN)
-- =========================
SELECT e.emp_name,
       s.basic_salary,
       s.bonus,
       (s.basic_salary + s.bonus) AS total_salary
FROM dbo.employee e
JOIN dbo.salary s
     ON e.emp_id = s.emp_id;
GO

-- =========================
-- 5. Employees working in IT department (Subquery)
-- =========================
SELECT emp_name
FROM dbo.employee
WHERE dept_id = (
    SELECT dept_id
    FROM dbo.department
    WHERE dept_name = 'IT'
);
GO

-- =========================
-- 6. Number of employees in each department (GROUP BY)
-- =========================
SELECT d.dept_name,
       COUNT(e.emp_id) AS total_employees
FROM dbo.department d
LEFT JOIN dbo.employee e
     ON d.dept_id = e.dept_id
GROUP BY d.dept_name;
GO

-- =========================
-- 7. Employees hired after 2022
-- =========================
SELECT emp_name, hire_date
FROM dbo.employee
WHERE hire_date > '2022-01-01';
GO

-- =========================
-- 8. Highest paid employee
-- =========================
SELECT TOP 1 e.emp_name,
       (s.basic_salary + s.bonus) AS total_salary
FROM dbo.employee e
JOIN dbo.salary s
     ON e.emp_id = s.emp_id
ORDER BY total_salary DESC;
GO
