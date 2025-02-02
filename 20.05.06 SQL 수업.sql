SELECT * FROM TAB;

SELECT * FROM TAB;

SELECT ename, comm+300 보너스 FROM EMP;

DESC EMP;

SELECT ENAME||JOB FROM EMP;

SELECT ENAME,SAL,SAL*100, SAL||'00',TO_CHAR(SAL)||'00' FROM EMP;

SELECT DNAME||' 부서는 '||LOC||' 지역에 위치합니다.' AS LOC FROM DEPT;

Desc dual;
DESC DUAL
DESC DUAL;

SELECT sysdate FROM dual; 

SELECT 143475*127363, to_char(143475*127363,'999,999,999,999') FROM dual;

SELECT * FROM SALGRADE;
SELECT * FROM EMP;

SELECT * FROM EMP WHERE DEPTNO = 10;
SELECT EMPNO, ENAME, JOB, SAL FROM EMP WHERE SAL > 2000;
SELECT SAL, EMPNO, ENAME FROM EMP WHERE DEPTNO = 10 AND SAL > 2000;
SELECT GRADE FROM SALGRADE WHERE LOSAL > 1000;
SELECT DEPTNO, SAL, EMPNO, ENAME FROM EMP WHERE DEPTNO = 10 AND SAL >2000;
SELECT DEPTNO, SAL, EMPNO, ENAME FROM EMP WHERE DEPTNO = 10 OR SAL >2000;
SELECT DEPTNO,ENAME,JOB FROM EMP WHERE JOB = 'manager';
SELECT DEPTNO,ENAME,JOB FROM EMP WHERE JOB = 'MANAGER';
SELECT DEPTNO,ENAME,JOB FROM EMP WHERE 1=1;
SELECT DEPTNO,ENAME,JOB FROM EMP WHERE 1=2;

SELECT * FROM EMP;
SELECT DEPTNO,ENAME,SAL,HIREDATE FROM EMP ORDER BY HIREDATE ASC;
SELECT ENAME, JOB, SAL FROM EMP ORDER BY HIREDATE;
SELECT DEPTNO,ENAME,SAL,HIREDATE FROM EMP ORDER BY ENAME;          
SELECT DEPTNO,ENAME,SAL,HIREDATE FROM EMP ORDER BY SAL;
SELECT DEPTNO,ENAME,SAL,HIREDATE FROM EMP ORDER BY SAL ASC;
SELECT DEPTNO,ENAME,SAL,HIREDATE,JOB FROM EMP ORDER BY SAL DESC; 
SELECT DEPTNO,JOB,ENAME FROM EMP ORDER BY DEPTNO;
SELECT DEPTNO,JOB,ENAME FROM EMP ORDER BY DEPTNO,JOB;        
SELECT DEPTNO,JOB,ENAME FROM EMP ORDER BY DEPTNO,JOB desc;   
SELECT * FROM EMP ORDER BY HIREDATE DESC;
SELECT * FROM EMP ORDER BY HIREDATE ASC;
SELECT DEPTNO,ENAME,SAL,HIREDATE,JOB,COMM FROM EMP ORDER BY COMM DESC; 

SELECT JOB FROM EMP;
SELECT DISTINCT JOB FROM EMP;
SELECT DISTINCT DEPTNO, JOB FROM EMP;
SELECT DISTINCT DEPTNO, JOB FROM EMP ORDER BY DEPTNO;
SELECT DISTINCT DEPTNO, DISTINCT JOB FROM EMP;
SELECT DEPTNO, DISTINCT JOB FROM EMP;

SELECT ENAME,LENGTH(ENAME),UPPER(ENAME),LOWER(ENAME) FROM EMP;
SELECT COUNT(*),COUNT(SAL),SUM(SAL),AVG(SAL),MIN(SAL),MAX(SAL) FROM EMP;

SELECT ROUND(DBMS_RANDOM.VALUE(0,21)) AS PRISENTER FROM DUAL;



