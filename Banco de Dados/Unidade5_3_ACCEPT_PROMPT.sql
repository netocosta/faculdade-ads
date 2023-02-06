/* 
ACCEPT: armazena o retorno do prompt;
PROMPT: exibe uma mensagem na tela;
*/
ACCEPT EMP_NO PROMPT 'Digite o código do empregado' 

SET SERVEROUTPUT ON

DECLARE
    V_EMP_NO NUMBER(6) :=  &EMP_NO;
    V_EMP_SALARY NUMBER(8,2);
BEGIN
    SELECT SALARY INTO V_EMP_SALARY FROM employees WHERE employee_id = V_EMP_NO;
    DBMS_OUTPUT.PUT_LINE('O salário do funcionário ' || V_EMP_NO || ' é de ' || V_EMP_SALARY);
END;
