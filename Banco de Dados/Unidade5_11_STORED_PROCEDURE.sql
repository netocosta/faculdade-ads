/*
Stored procedure
Ex: passagem de parâmetros em procedimentos
*/
CREATE OR REPLACE PROCEDURE TESTA_PARAMETROS
    (X IN NUMBER,
     Y OUT NUMBER,
     Z IN OUT NUMBER)
IS
BEGIN
    Y := X * 2;
    Y := Y + Z;
    Z := Y + X + Z;
END TESTA_PARAMETROS;

/* EXECUTANDO */
SET SERVEROUTPUT ON

DECLARE
    VAR1 NUMBER;
    VAR2 NUMBER;
    VAR3 NUMBER;
BEGIN
    VAR1 := 30;
    VAR2 := 40;
    VAR3 := 50;
    DBMS_OUTPUT.PUT_LINE(VAR1 || '-' || VAR2 || '-' || VAR3);
    TESTA_PARAMETROS(VAR1, VAR2, VAR3);
    DBMS_OUTPUT.PUT_LINE(VAR1 || '-' || VAR2 || '-' || VAR3);
END;