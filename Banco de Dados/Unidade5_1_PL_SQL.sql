SET SERVEROUTPUT ON

/* exemplo de declara��o de vari�veis */
DECLARE
    MYNAME VARCHAR2(20);
BEGIN
    DBMS_OUTPUT.PUT_LINE('My name is: ' || MYNAME);
    MYNAME := 'John';
    DBMS_OUTPUT.PUT_LINE('My name is: ' || MYNAME);
END;