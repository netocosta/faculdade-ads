/* 
  Atualizando o sal�rio para 800 para todos que possuem o cargo = ST_CLERK
*/
SET SERVEROUTPUT ON

DECLARE 
    SAL_INCREASE EMPLOYEES.SALARY%TYPE := 800; 
BEGIN
    UPDATE EMPLOYEES
    SET SALARY = SALARY + SAL_INCREASE
    WHERE JOB_ID = 'ST_CLERK';
END;