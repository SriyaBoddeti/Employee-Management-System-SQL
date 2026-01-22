/* =========================================================
   Log table to store employee actions
   ========================================================= */
CREATE TABLE dbo.employee_log (
    log_id INT IDENTITY(1,1) PRIMARY KEY,
    emp_id INT,
    action VARCHAR(20),
    action_time DATETIME DEFAULT GETDATE()
);
GO


/* =========================================================
   Trigger: Log employee INSERT operations
   ========================================================= */
CREATE OR ALTER TRIGGER dbo.trg_employee_insert
ON dbo.employee
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO dbo.employee_log (emp_id, action)
    SELECT emp_id, 'INSERT'
    FROM inserted;
END;
GO
