CREATE OR ALTER VIEW dbo.emp_salary_view
AS
SELECT 
    e.emp_id,
    e.emp_name,
    d.dept_name,
    s.basic_salary,
    s.bonus,
    (s.basic_salary + s.bonus) AS total_salary
FROM dbo.employee e
JOIN dbo.department d
    ON e.dept_id = d.dept_id
JOIN dbo.salary s
    ON e.emp_id = s.emp_id;
GO
