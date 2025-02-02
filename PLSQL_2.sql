@@C:\Users\HP\Desktop\myGit\SQL\4_TABLE_1.sql
@@C:\Users\HP\Desktop\myGit\SQL\1_DBMS_OUTPUT_1.sql
@@C:\Users\HP\Desktop\myGit\SQL\1_DBMS_OUTPUT_2.sql

BEGIN 
INSERT INTO EMP(EMPNO,DEPTNO,ENAME) VALUES(7779,30,'PLSQL');
COMMIT;
END;
/

DECLARE 
    V_EMPNO NUMBER(4) := 8888;
    V_DEPTNO NUMBER(2);
    V_ENAME VARCHAR2(10) := 'XMAN1';
    V_JOB VARCHAR2(9);
    V_SAL NUMBER(7,2);
BEGIN
    V_DEPTNO := 20;
    IF V_JOB IS NULL THEN 
        V_JOB := '����';
    END IF;
    IF V_JOB = '����' THEN
        V_SAL := 2000;
    ELSIF V_JOB IN ('MANAGER','ANALYST') THEN
        V_SAL := 3500;
    ELSE
        V_SAL := 2500;
    END IF;
    INSERT INTO EMP(DEPTNO,EMPNO,ENAME,SAL,JOB)
        VALUES(V_DEPTNO,V_EMPNO,V_ENAME,V_SAL,V_JOB);
    COMMIT;
END;
/
DECLARE
    LOOP_INDEX  NUMBER(4) := 1;
    MAX_LOOP_INDEX NUMBER(4) := 30;
BEGIN
    LOOP
        DBMS_OUTPUT.PUT_LINE('LOOP COUNT => ' ||TO_CHAR(LOOP_INDEX));
        
        LOOP_INDEX := LOOP_INDEX + 1;
        
        EXIT WHEN MAX_LOOP_INDEX < LOOP_INDEX ;
    END LOOP;
END;
/

SET SERVEROUTPUT ON;
DECLARE

    LOOP_INDEX  NUMBER(4) := 1;
    MAX_LOOP_INDEX NUMBER(4) := 30;
BEGIN
    --FOR LOOP_INDEX IN 1..30
    --FOR LOOP_INDEX IN 30..1
    --FOR LOOP_INDEX IN REVERSE 1..30
    --FOR LOOP_INDEX IN REVERSE 30..1
    LOOP
    
        DBMS_OUTPUT.PUT_LINE('LOOP COUNT => ' ||TO_CHAR(LOOP_INDEX));
    END LOOP;
END;
/

SET SERVEROUTPUT ON;
DECLARE

    --V_INDEX  NUMBER(3) := 0;
    --V_INDEX  NUMBER(3);
    V_INDEX  NUMBER(3) := 30;
BEGIN
    WHILE(V_INDEX >=0)
    LOOP
        DBMS_OUTPUT.PUT_LINE('WHILE LOOP [' ||TO_CHAR(V_INDEX)||' ]');
        V_INDEX := V_INDEX - 1;
    END LOOP;
END;
/

SET SERVEROUTPUT ON;
DECLARE

    V_NUM1  NUMBER(4,2):= 2;
    V_NUM2  NUMBER(4,2) := 30;
BEGIN
    IF(V_NUM1 > 1 AND V_NUM2 < 31) THEN 
        DBMS_OUTPUT.PUT_LINE('(V_NUM1 > 1 AND V_NUM2 < 31) IS TRUE ');
    ELSIF NOT (V_NUM1 > 1 AND V_NUM2 < 31) THEN
        DBMS_OUTPUT.PUT_LINE('(V_NUM1 > 1 AND V_NUM2 < 31) IS FALSE ');
    ELSE 
        DBMS_OUTPUT.PUT_LINE('NOT TRUE, NOT FALSE....???? ');
    END IF;
END;
/

