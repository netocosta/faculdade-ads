SET SERVEROUTPUT ON

/* exemplo de declaração de variáveis */

DECLARE
 MYNAME VARCHAR2(20) := 'John';
BEGIN
 MYNAME := 'Steven';
 DBMS_OUTPUT.PUT_LINE('My name is: ' || MYNAME);
END; 
