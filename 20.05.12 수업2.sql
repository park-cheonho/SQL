select * from emp;

SELECT DNAME,ENAME,JOB,SAL FROM EMP, DEPT WHERE DEPTNO = DEPTNO; 
// 스키마.오브젝트명.컬럼명
SELECT DNAME,ENAME,JOB,SAL FROM EMP, DEPT WHERE EMP.DEPTNO = DEPT.DEPTNO;

SELECT DNAME,ENAME,JOB,SAL FROM EMP, DEPT
WHERE EMP.DEPTNO = DEPT.DEPTNO AND
EMP.JOB IN ('MANAGER','CLERK')
ORDER BY DNAME;

SELECT DNAME,ENAME,JOB,SAL 
FROM EMP,DEPT
WHERE EMP.DEPTNO = DEPT.DEPTNO
      AND EMP.JOB IN ('MANAGER','CLERK')
ORDER BY DNAME;

SELECT DEPT.DNAME,EMP.ENAME,EMP.JOB,EMP.SAL 
FROM SCOTT.EMP, SCOTT.DEPT
WHERE EMP.DEPTNO = DEPT.DEPTNO;


SELECT DEPTNO FROM DEPT;
SELECT DEPTNO FROM EMP;
DESC SALGRADE
SELECT * FROM SALGRADE;
--4
SELECT E.ENAME, E.JOB,E.SAL,S.GRADE FROM EMP E,SALGRADE S
WHERE E.SAL BETWEEN S.LOSAL AND S.HISAL; 
--5
SELECT DNAME,ENAME,JOB,SAL,GRADE
FROM EMP E, DEPT D, SALGRADE S --// 3개테이블 JOIN , 최소 JOIN조건: N(테이블개수) ? 1
WHERE E.DEPTNO = D.DEPTNO AND E.SAL BETWEEN S.LOSAL AND S.HISAL; 
--6
SELECT * FROM EMP;

SELECT E.ENAME, E.JOB, E.SAL, S.GRADE FROM EMP E, SALGRADE S
WHERE E.SAL BETWEEN S.LOSAL AND S.HISAL AND E.DEPTNO IN (10,30);
ORDER BY E.ENAME;
--7
SELECT E.ENAME, E.JOB, E.SAL, S.GRADE FROM EMP E, SALGRADE S
WHERE E.SAL < S.LOSAL AND E.DEPTNO IN (10,30)
ORDER BY E.ENAME;
-- 7번 의미있는 데이터가 나오지 않음 WHERE E.SAL < S.LOSAL 의미가 없는 조건 

SELECT E.DEPTNO,D.DNAME,E.ENAME
FROM SCOTT.EMP E LEFT OUTER JOIN SCOTT.DEPT D
ON E.DEPTNO = D.DEPTNO
ORDER BY E.DEPTNO;

SELECT E.DEPTNO,D.DNAME,E.ENAME
FROM SCOTT.EMP E RIGHT OUTER JOIN SCOTT.DEPT D
ON E.DEPTNO = D.DEPTNO
ORDER BY E.DEPTNO;

SELECT D.DEPTNO,D.DNAME,E.ENAME
FROM SCOTT.EMP E RIGHT OUTER JOIN SCOTT.DEPT D
ON E.DEPTNO = D.DEPTNO
ORDER BY E.DEPTNO;

SELECT D.DEPTNO,D.DNAME,E.ENAME
FROM SCOTT.EMP E FULL OUTER JOIN SCOTT.DEPT D;

-- - **[SELF-JOIN]**

 SELECT E.ENAME||' ''S MANAGER IS '||M.ENAME FROM EMP E,EMP M WHERE E.MGR = M.EMPNO ORDER BY M.ENAME; 

 SELECT E.ENAME||' ''S MANAGER IS '||DECODE(M.ENAME, NULL, 'NOBODY', M.ENAME) FROM EMP E,EMP M WHERE E.MGR = M.EMPNO(+) ORDER BY M.ENAME; 

 SELECT E.ENAME||' ''S MANAGER IS '||NVL(M.ENAME,'NOBODY') FROM EMP E,EMP M WHERE E.MGR = M.EMPNO(+) ORDER BY M.ENAME; 

 SELECT E.ENAME||' ''S MANAGER IS '||NVL(M.ENAME,'NOBODY') 
 FROM EMP E,EMP M 
 ON E.MGR RIGHT OUTER JOIN M.EMPNO 
 ORDER BY M.ENAME; 

-- [CARTESIAN PRODUCT]

SELECT ENAME,JOB,DNAME FROM EMP,DEPT ORDER BY ENAME;

SELECT ENAME,JOB,DNAME FROM EMP, DEPT WHERE EMP.SAL > 2000 AND DEPT.DEPTNO IN (10,20) ORDER BY ENAME;

SELECT ENAME,JOB,DNAME FROM EMP , DEPT WHERE EMP.SAL > 2000 or DEPT.DEPTNO IN (10,20) ORDER BY ENAME;

SELECT E.ENAME, E.JOB,E.SAL,S.GRADE FROM EMP E, SALGRADE S WHERE E.SAL < S.LOSAL AND E.DEPTNO IN (10,30) ORDER BY E.ENAME;

SELECT * FROM SYSTEM;.

-- 서브 쿼리
