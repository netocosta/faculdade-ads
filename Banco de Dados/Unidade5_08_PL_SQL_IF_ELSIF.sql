/* 
  If/else IF
*/
SET SERVEROUTPUT ON

DECLARE
    MY_AGE NUMBER := 45;
BEGIN
    IF MY_AGE < 11 THEN
        DBMS_OUTPUT.PUT_LINE('Sou criança');
    ELSIF MY_AGE < 20 THEN 
        DBMS_OUTPUT.PUT_LINE('Sou jovem');
    ELSIF MY_AGE < 30 THEN
        DBMS_OUTPUT.PUT_LINE('Estou na casa dos vinte...');
    ELSIF MY_AGE < 40 THEN
        DBMS_OUTPUT.PUT_LINE('Estou na casa dos trinta');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Serei sempre jovem...');
    END IF;
END;