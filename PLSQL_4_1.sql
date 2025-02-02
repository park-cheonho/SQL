@@C:\Users\HP\Desktop\myGit\SQL\NESTED_BLOCK_EXCEPT_3.sql
SELECT * FROM DEPT;
DELETE FROM DEPT WHERE DEPTNO NOT IN(10, 20, 30, 40);
@@C:\Users\HP\Desktop\myGit\SQL\NESTED_BLOCK_EXCEPT_4.sql
SELECT * FROM DEPT;
DELETE FROM DEPT WHERE DEPTNO NOT IN(10, 20, 30, 40);
@@C:\Users\HP\Desktop\myGit\SQL\NESTED_BLOCK_EXCEPT_5.sql
SELECT * FROM DEPT;
DELETE FROM DEPT WHERE DEPTNO NOT IN(10, 20, 30, 40);

BEGIN 
    INSERT INTO DEPT VALUES(66, 'OUTER_BLK_PART', 'Main_Blk');
    
    <<Nested_BLOCK_1>>
    BEGIN
            INSERT INTO DEPT VALUES(76, 'LOCAL_PART_1', 'NESTED_Blk1');        
            INSERT INTO DEPT VALUES(777, 'LOCAL_PART_1', 'NESTED_Blk1'); -- 런타임 에러 발생
            INSERT INTO DEPT VALUES(77, 'LOCAL_PART_1', 'NESTED_Blk1');
            INSERT INTO DEPT VALUES(78, 'LOCAL_PART_1', 'NESTED_Blk1');
            COMMIT;
    EXCEPTION
            WHEN OTHERS THEN
                NULL;
    END Nested_BLOCK_1;
    
    <<Nested_BLOCK_2>>
    BEGIN
            INSERT INTO DEPT VALUES(88, 'LOCAL_PART_1', 'NESTED_Blk1');
            COMMIT;
    END Nested_BLOCK2;
    
    INSERT INTO DEPT VALUES(99, 'OUTER_BLK_PART', 'Main_Blk');
END;
/
INSERT INTO DEPT VALUES(01, 'test', 'test');

SELECT * FROM DEPT;

DELETE FROM DEPT WHERE DEPTNO = 66;
DELETE FROM DEPT WHERE DEPTNO = 76;
DELETE FROM DEPT WHERE DEPTNO = 88;
DELETE FROM DEPT WHERE DEPTNO = 99;
DELETE FROM DEPT WHERE DEPTNO = 66;
DELETE FROM DEPT WHERE DEPTNO NOT IN(10, 20, 30, 40);

SELECT DEPTNO, ENAME, JOB, SAL,(SELECT ROUND(AVG(SAL),1) FROM EMP SE WHERE SE.JOB = M.JOB) AS JOB_AVG_SAL

FROM EMP M

ORDER BY DEPTNO,JOB,JOB_AVG_SAL ASC;

CONN SYSTEM
SELECT * FROM V$VERSION;

WHILE(V_INDEX >= 0)
LOOP 
    DBMS_OUT.PUT_LINE(' WHILE LOOP ['||TO_CHAR(V_INDEX)||']');
    V_INDEX := V_INDEX - 1;    
END LOOP;

-- NESTED_BLOCK_1
BEGIN 
    INSERT INTO DEPT VALUES(76,'LOCAL_PART_1','NESTED_BLK1');
    INSERT INTO DEPT VALUES(76,'LOCAL_PART_1','NESTED_BLK1');