/*
Cursores
*/
SET SERVEROUTPUT ON

DECLARE
    CURSOR C_EMPLOYEE IS
        SELECT EMPLOYEE_ID, LAST_NAME FROM EMPLOYEES
        WHERE DEPARTMENT_ID = 30;
    
    V_EMP_NO EMPLOYEES.EMPLOYEE_ID%TYPE;
    V_NAME EMPLOYEES.LAST_NAME%type;
BEGIN
    OPEN C_EMPLOYEE;
    LOOP
        FETCH C_EMPLOYEE INTO V_EMP_NO, V_NAME;
        EXIT WHEN C_EMPLOYEE%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(V_EMP_NO || ' ' || V_NAME);
    END LOOP;
    CLOSE C_EMPLOYEE;
END;
