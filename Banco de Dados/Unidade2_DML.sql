/* CRIANDO TABELA */
CREATE TABLE pais
(
    CD_PAIS             NUMBER(2),
    NM_PAIS             VARCHAR2(45),
    DS_NACIONALIDADE    VARCHAR2(35),
    CONSTRAINT PK_PAIS_CD_PAIS PRIMARY KEY (CD_PAIS),
    CONSTRAINT UK_PAIS_NM_PAIS UNIQUE (NM_PAIS)
)

/* INSERINDO DADOS */
INSERT INTO PAIS (CD_PAIS, NM_PAIS)
VALUES (1, 'BRASIL');

INSERT INTO PAIS (CD_PAIS, NM_PAIS, DS_NACIONALIDADE)
VALUES (2, 'ARGENTINA', NULL);

INSERT INTO PAIS
VALUES (4, 'CHILE', 'CHILENA');

INSERT INTO PAIS (NM_PAIS, DS_NACIONALIDADE, CD_PAIS)
VALUES ('EUA', 'AMERICANA', 3);

/* ATUALIZANDO DADOS */
UPDATE PAIS SET NM_PAIS='PORTUGAL', DS_NACIONALIDADE='PORTUG'
WHERE CD_PAIS=3;

UPDATE PAIS SET DS_NACIONALIDADE='PORTUGUESA'
WHERE CD_PAIS=3;

/* REMOVENDO DADOS */
DELETE FROM PAIS
WHERE CD_PAIS=3;


/* RENOMEANDO TABELA */
RENAME PAIS TO TB_PAIS;

/* DUPLICANDO TABELA CREATE TABLE AS SELECT */
CREATE TABLE TB_PAIS_COPIA AS SELECT * FROM TB_PAIS;

/* SELECIONANDO DADOS / MOSTRANDO */
SELECT * FROM DEPARTMENTS;

SELECT FIRST_NAME, EMAIL, HIRE_DATE FROM EMPLOYEES;

SELECT FIRST_NAME, EMAIL, SALARY, SALARY*12 FROM EMPLOYEES;

SELECT FIRST_NAME, EMAIL, SALARY "SALARIO", SALARY*12 "SALARIO_ANUAL" FROM EMPLOYEES;

SELECT FIRST_NAME, EMAIL, 'SALARIO: ' || SALARY "SALARIO", SALARY*12 "SALARIO_ANUAL"
FROM EMPLOYEES;

SELECT DISTINCT DEPARTMENT_ID FROM EMPLOYEES ORDER BY DEPARTMENT_ID;

/* CONDICAO WHERE */

SELECT FIRST_NAME, LAST_NAME, SALARY
FROM EMPLOYEES
WHERE SALARY BETWEEN 10000 AND 20000;

SELECT FIRST_NAME, LAST_NAME, SALARY, MANAGER_ID
FROM EMPLOYEES
WHERE MANAGER_ID IN (101, 145, 149);

SELECT FIRST_NAME, LAST_NAME, SALARY
FROM EMPLOYEES
WHERE FIRST_NAME LIKE 'S%';

SELECT FIRST_NAME, LAST_NAME, SALARY, MANAGER_ID
FROM EMPLOYEES
WHERE MANAGER_ID IS NULL;

SELECT FIRST_NAME, LAST_NAME, SALARY
FROM EMPLOYEES
WHERE SALARY NOT BETWEEN 10000 AND 20000;

SELECT FIRST_NAME, LAST_NAME, SALARY, MANAGER_ID
FROM EMPLOYEES
WHERE MANAGER_ID NOT IN (101, 145, 149);

SELECT FIRST_NAME, LAST_NAME, SALARY
FROM EMPLOYEES
WHERE FIRST_NAME NOT LIKE 'S%';

SELECT FIRST_NAME, LAST_NAME, SALARY, MANAGER_ID
FROM EMPLOYEES
WHERE MANAGER_ID IS NOT NULL;

SELECT FIRST_NAME, LAST_NAME, SALARY, JOB_ID
FROM EMPLOYEES
WHERE SALARY BETWEEN 2000 AND 3000
AND JOB_ID = 'ST_CLERK';

SELECT FIRST_NAME, LAST_NAME, SALARY, JOB_ID
FROM EMPLOYEES
WHERE SALARY BETWEEN 2000 AND 3000
OR JOB_ID = 'ST_CLERK';

SELECT FIRST_NAME, LAST_NAME, SALARY, JOB_ID
FROM EMPLOYEES
WHERE SALARY > 8000
AND JOB_ID = 'ST_CLERK'
OR JOB_ID = 'ST_MAN';

SELECT FIRST_NAME, LAST_NAME, SALARY, JOB_ID
FROM EMPLOYEES
WHERE SALARY > 8000
AND (JOB_ID = 'ST_CLERK'
OR JOB_ID = 'ST_MAN');

SELECT FIRST_NAME, LAST_NAME, SALARY
FROM EMPLOYEES
WHERE SALARY BETWEEN 10000 AND 20000
ORDER BY LAST_NAME;

SELECT FIRST_NAME, LAST_NAME, SALARY
FROM EMPLOYEES
WHERE SALARY BETWEEN 10000 AND 20000
ORDER BY LAST_NAME DESC;

SELECT FIRST_NAME, LAST_NAME, SALARY
FROM EMPLOYEES
WHERE SALARY BETWEEN 10000 AND 20000
ORDER BY SALARY DESC, LAST_NAME;