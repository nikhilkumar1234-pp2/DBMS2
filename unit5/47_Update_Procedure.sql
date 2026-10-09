CREATE OR REPLACE PROCEDURE UPDATE_SAL_FLAT (
    p_deptno IN EMP.DEPTNO%TYPE,
    p_amount IN NUMBER
) AS
BEGIN
    UPDATE EMP
    SET SAL = SAL + p_amount
    WHERE DEPTNO = p_deptno;
    
    DBMS_OUTPUT.PUT_LINE('Flat salary increase applied to Department: ' || p_deptno);
END;
/
