USE employee_management;
GO

-- =========================
-- Insert into Department
-- =========================
INSERT INTO dbo.department (dept_id, dept_name, location) VALUES
(1, 'HR', 'Hyderabad'),
(2, 'IT', 'Bangalore'),
(3, 'Finance', 'Chennai');
GO

-- =========================
-- Insert into Employee
-- =========================
INSERT INTO dbo.employee (emp_id, emp_name, email, phone, hire_date, dept_id) VALUES
(101, 'Anita', 'anita@gmail.com', '9876543210', '2023-01-15', 2),
(102, 'Rahul', 'rahul@gmail.com', '9876543222', '2022-08-10', 1),
(103, 'Sneha', 'sneha@gmail.com', '9876543233', '2021-06-20', 3);
GO

-- =========================
-- Insert into Salary
-- =========================
INSERT INTO dbo.salary (salary_id, emp_id, basic_salary, bonus) VALUES
(1, 101, 50000, 5000),
(2, 102, 45000, 4000),
(3, 103, 60000, 6000);
GO
