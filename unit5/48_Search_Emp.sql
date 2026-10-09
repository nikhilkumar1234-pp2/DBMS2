CREATE OR REPLACE PROCEDURE SEARCH_EMP (
    p_empno IN EMP.EMPNO%TYPE,
    p_found OUT VARCHAR2
) AS
    v_count NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_count 
    FROM EMP 
    WHERE EMPNO = p_empno;
    
    IF v_count > 0 THEN
        p_found := 'YES';
    ELSE
        p_found := 'NO';
    END IF;
END;
/
