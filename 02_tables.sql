USE employee_management;
GO

-- =========================
-- Department Table
-- =========================
CREATE TABLE dbo.department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL,
    location VARCHAR(50)
);
GO

-- =========================
-- Employee Table
-- =========================
CREATE TABLE dbo.employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50) NOT NULL,
    email VARCHAR(50) UNIQUE,
    phone VARCHAR(15),
    hire_date DATE,
    dept_id INT,
    CONSTRAINT fk_employee_department
        FOREIGN KEY (dept_id) REFERENCES dbo.department(dept_id)
);
GO

-- =========================
-- Salary Table
-- =========================
CREATE TABLE dbo.salary (
    salary_id INT PRIMARY KEY,
    emp_id INT,
    basic_salary DECIMAL(10,2),
    bonus DECIMAL(10,2),
    CONSTRAINT fk_salary_employee
        FOREIGN KEY (emp_id) REFERENCES dbo.employee(emp_id)
);
GO
