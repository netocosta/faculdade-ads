/*
Exception                   Oracle Error    SQLCODE Value

ACCESS_INTO_NULL            ORA-06530       -6530
CASE_NOT_FOUND              ORA-06592       -6592
COLLECTION_IS_NULL          ORA-06531       -6531
CURSOR_ALREADY_OPEN         ORA-06511       -6511
DUP_VAL_ON_INDEX            ORA-00001       -1
INVALID_CURSOR              ORA-01001       -1001
INVALID_NUMBER              ORA-01722       -1722
LOGIN_DENIED                ORA-01017       -1017
NO_DATA_FOUND               ORA-01403       100
NOT_LOGGED_ON               ORA-01012       -1012
PROGRAM_ERROR               ORA-06501       -6501
ROWTYPE_MISMATCH            ORA-06504       -6504
SELF_IS_NULL                ORA-30625       -30625
STORAGE_ERROR               ORA-06500       -6500
SUBSCRIPT_BEYOND_COUNT      ORA-06533       -6533
SUBSCRIPT_OUTSIDE_LIMIT     ORA-06532       -6532
SYS_INVALID_ROWID           ORA-01410       -1410
TIMEOUT_ON_RESOURCE         ORA-00051       -51
TOO_MANY_ROWS               ORA-01422       -1422
VALUE_ERROR                 ORA-06502       -6502
ZERO_DIVIDE                 ORA-01476       -1476


Exception                   Raised when ...

ACCESS_INTO_NULL            A program attempts to assign values to the attributes of an uninitialized object.
CASE_NOT_FOUND              None of the choices in the WHEN clauses of a CASE statement is selected, and there is no ELSE clause.
COLLECTION_IS_NULL          A program attempts to apply collection methods other than EXISTS to an uninitialized nested table or varray, or the program attempts to assign values to the elements of an uninitialized nested table or varray.
CURSOR_ALREADY_OPEN         A program attempts to open an already open cursor. A cursor must be closed before it can be reopened. A cursor FOR loop automatically opens the cursor to which it refers, so your program cannot open that cursor inside the loop.
DUP_VAL_ON_INDEX            A program attempts to store duplicate values in a database column that is constrained by a unique index.
INVALID_CURSOR              A program attempts a cursor operation that is not allowed, such as closing an unopened cursor.
INVALID_NUMBER              In a SQL statement, the conversion of a character string into a number fails because the string does not represent a valid number. (In procedural statements, VALUE_ERROR is raised.) This exception is also raised when the LIMIT-clause expression in a bulk FETCH statement does not evaluate to a positive number.
LOGIN_DENIED                A program attempts to log on to Oracle with an invalid username or password.
NO_DATA_FOUND               A SELECT INTO statement returns no rows, or your program references a deleted element in a nested table or an uninitialized element in an indexby table.Because this exception is used internally by some SQL functions to signal that they are finished, you should not rely on this exception being propagated if you raise it within a function that is called as part of a query.
NOT_LOGGED_ON               A program issues a database call without being connected to Oracle.
PROGRAM_ERROR               PL/SQL has an internal problem.
ROWTYPE_MISMATCH            The host cursor variable and PL/SQL cursor variable involved in an assignment have incompatible return types. For example, when an open host cursor variable is passed to a stored subprogram, the return types of the actual and formal parameters must be compatible.
SELF_IS_NULL                A program attempts to call a MEMBER method, but the instance of the object type has not been initialized. The built-in parameter SELF points to the object, and is always the first parameter passed to a MEMBER method.
STORAGE_ERROR               PL/SQL runs out of memory or memory has been corrupted.
SUBSCRIPT_BEYOND_COUNT      A program references a nested table or varray element using an index number larger than the number of elements in the collection.
SUBSCRIPT_OUTSIDE_LIMIT     A program references a nested table or varray element using an index number (-1 for example) that is outside the legal range.
SYS_INVALID_ROWID           The conversion of a character string into a universal rowid fails because the character string does not represent a valid rowid.
TIMEOUT_ON_RESOURCE         A time-out occurs while Oracle is waiting for a resource.
TOO_MANY_ROWS               A SELECT INTO statement returns more than one row.
VALUE_ERROR                 An arithmetic, conversion, truncation, or size-constraint error occurs. For example, when your program selects a column value into a character variable, if the value is longer than the declared length of the variable, PL/SQL aborts the assignment and raises VALUE_ERROR. In procedural statements, VALUE_ERROR is raised if the conversion of a character string into a number fails. (In SQL statements, INVALID_NUMBER is raised).
ZERO_DIVIDE                 A program attempts to divide a number by zero.
*/

/* usando as exceptions */
SET SERVEROUTPUT ON;

ACCEPT CD_UF PROMPT 'DIGITE A UF'
ACCEPT NM_UF PROMPT 'DIGITE O NOME'

BEGIN
    INSERT INTO TAB_ESTADO VALUES ('&CD_UF', '&NM_UF');
    COMMIT;
        DBMS_OUTPUT.PUT_LINE('Comando executado com sucesso');
EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN 
        DBMS_OUTPUT.PUT_LINE('ERRO!!! Código da uf já existente');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Erro ao cadastrar a uf');
END;



/* criando e usando uma exception */
SET SERVEROUTPUT ON
SET VERIFY OFF

DECLARE
    CODIGO NUMBER(10);
    NOME VARCHAR2(50);
    FISICA CHAR(1);
    SEXO CHAR(1);
    EST_CIV VARCHAR2(10);
    VALIDA_CAMPOS EXCEPTION;
 
BEGIN
    CODIGO := 10;
    NOME := 'NETO COSTA';
    FISICA := 'F';
    /*SEXO := 'M';*/
    /*EST_CIV := 'CASADO';*/
    
    IF (FISICA='F' AND (SEXO IS NULL OR EST_CIV IS NULL)) THEN
        RAISE VALIDA_CAMPOS;
    ELSIF (FISICA='J' AND (SEXO IS NOT NULL OR EST_CIV IS NOT NULL)) THEN
        RAISE VALIDA_CAMPOS;
    ELSE 
        /* CODIGO PARA INSERIR NA TABELA - INSERT INTO */
        DBMS_OUTPUT.PUT_LINE('CLIENTE CADASTRADO COM SUCESSO');
        COMMIT;
    END IF;
EXCEPTION
    WHEN VALIDA_CAMPOS THEN
        DBMS_OUTPUT.PUT_LINE('VERIFICAR CAMPOS SEXO OU ESTADO CIVIL PREENCHIDO INCORRETAMENTE');
    WHEN DUP_VAL_ON_INDEX THEN
        DBMS_OUTPUT.PUT_LINE('ERRO!!! CODIGO JA CADASTRADO, FAVOR CADASTRAR UM CODIGO DIFERENTE DE ' || CODIGO);
END;