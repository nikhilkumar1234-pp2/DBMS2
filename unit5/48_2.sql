DECLARE
    v_id EMP.EMPNO%TYPE := 7788;
    v_status VARCHAR2(5);
BEGIN
    SEARCH_EMP(v_id, v_status);
    IF v_status = 'YES' THEN
        DBMS_OUTPUT.PUT_LINE('Employee ' || v_id || ' exists in the system.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Employee ' || v_id || ' was not found.');
    END IF;
END;
/
