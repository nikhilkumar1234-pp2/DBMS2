CREATE OR REPLACE PROCEDURE UPDATE_EMP_COMMISSION AS
BEGIN
    -- Automatically assigns a standard commission to salespeople lacking one
    UPDATE EMP
    SET COMM = 500
    WHERE JOB = 'SALESMAN' AND COMM IS NULL;
    
    DBMS_OUTPUT.PUT_LINE('Employee commissions updated successfully.');
END;
/
