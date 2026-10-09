CREATE OR REPLACE FUNCTION CHECK_ACC_STATUS (p_acno IN NUMBER) 
RETURN VARCHAR2 IS
    v_bal ACCOUNT.BALANCE%TYPE;
BEGIN
    SELECT BALANCE INTO v_bal 
    FROM ACCOUNT 
    WHERE ACNO = p_acno;
    
    RETURN 'Account #' || p_acno || ' has a balance of: Rs. ' || TO_CHAR(v_bal);
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'Error: Account #' || p_acno || ' does not exist.';
END;
/
