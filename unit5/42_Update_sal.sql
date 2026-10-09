CREATE OR REPLACE PROCEDURE UPDATE_SAL_PCT (
    p_deptno IN EMP.DEPTNO%TYPE,
    p_percent IN NUMBER
) AS
BEGIN
    UPDATE EMP
    SET SAL = SAL + (SAL * (p_percent / 100))
    WHERE DEPTNO = p_deptno;
    
    DBMS_OUTPUT.PUT_LINE('Salaries updated successfully for Department: ' || p_deptno);
END;
/
