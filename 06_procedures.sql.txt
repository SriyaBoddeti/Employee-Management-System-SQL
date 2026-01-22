/* =========================================================
   Procedure 1: Get all employees
   ========================================================= */
CREATE OR ALTER PROCEDURE dbo.GetAllEmployees
AS
BEGIN
    SELECT 
        emp_id,
        emp_name,
        email,
        phone,
        hire_date,
        dept_id
    FROM dbo.employee;
END;
GO


/* =========================================================
   Procedure 2: Get employees by department name
   ========================================================= */
CREATE OR ALTER PROCEDURE dbo.GetEmployeesByDepartment
    @DeptName VARCHAR(50)
AS
BEGIN
    SELECT 
        e.emp_id,
        e.emp_name,
        d.dept_name
    FROM dbo.employee e
    JOIN dbo.department d
        ON e.dept_id = d.dept_id
    WHERE d.dept_name = @DeptName;
END;
GO


/* =========================================================
   Procedure 3: Get salary details of an employee
   ========================================================= */
CREATE OR ALTER PROCEDURE dbo.GetEmployeeSalary
    @EmpId INT
AS
BEGIN
    SELECT 
        e.emp_name,
        d.dept_name,
        s.basic_salary,
        s.bonus,
        (s.basic_salary + s.bonus) AS total_salary
    FROM dbo.employee e
    JOIN dbo.department d
        ON e.dept_id = d.dept_id
    JOIN dbo.salary s
        ON e.emp_id = s.emp_id
    WHERE e.emp_id = @EmpId;
END;
GO
