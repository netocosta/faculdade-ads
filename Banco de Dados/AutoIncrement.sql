/* Criando a Tabela */
CREATE TABLE TESTE
(
    ID NUMBER(10,0) NOT NULL,
    NOME VARCHAR2(50),
    CONSTRAINT PK_ID PRIMARY KEY(ID)
)

/* Criando a Sequencia */
CREATE SEQUENCE TESTE_SEQ
START WITH 1
INCREMENT BY 1
MAXVALUE 999999999
MINVALUE 0
NOCACHE
CYCLE;

/* Inserindo um valor */
INSERT INTO TESTE (ID, NOME)
VALUES (TESTE_SEQ.NEXTVAL, 'NETO COSTA');
