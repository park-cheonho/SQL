-- PACKAGE BODY : 실제 처리 LOGIC을 정의 하는 부분
CREATE OR REPLACE PACKAGE BODY P_EMPLOYEE
AS
	V_ENAME		EMP.EMANE%TYPE;  --PRIVATE
	V_ROWS 		NUMBER(6)	--PRIVATE

	FUNCTION PRVT_FUNC(P_NUM IN NUMBER) RETURN NUMBER IS -- PRIVATE FUNCTION 정의
	BEGIN
		RETURN P_NUM;
	END PRVT_FUNC;

	PROCEDURE INSERT_EMP(P_EMPNO NUMBER, P_ENAME VARCHAR2, P_JOB VARCHAR2, P_SAL NUMBER, P_DEPTNO NUMBER)
	IS
	BEGIN
		INSERT INTO EMP(EMPNO,ENAME)