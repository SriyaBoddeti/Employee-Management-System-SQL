/* =========================================================
   Attendance Table
   ========================================================= */
CREATE TABLE dbo.attendance (
    attendance_id INT IDENTITY(1,1) PRIMARY KEY,
    emp_id INT NOT NULL,
    attendance_date DATE NOT NULL,
    status VARCHAR(10) NOT NULL
        CHECK (status IN ('Present', 'Absent')),
    CONSTRAINT fk_attendance_employee
        FOREIGN KEY (emp_id) REFERENCES dbo.employee(emp_id)
);
GO


/* =========================================================
   Insert sample attendance data
   ========================================================= */
INSERT INTO dbo.attendance (emp_id, attendance_date, status) VALUES
(101, '2024-02-01', 'Present'),
(102, '2024-02-01', 'Absent'),
(103, '2024-02-01', 'Present');
GO
