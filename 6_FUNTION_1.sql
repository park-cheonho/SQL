CREATE OR REPLACE FUNCTION CALC_BONUS(P_SALARY IN NUMBER,P_DEPTNO IN NUMBER)
RETURN NUMBER
IS
	V_BONUS_RATE 	NUMBER	:= 0;
	V_BONUS		NUMBER(7,2) := 0;
BEIGIN
	--근무부서별 BONUS 차등 지급
	IF P_DEPTNO = 10 THEN 
		V_BONUS_RATE := 0.1;
	ELSIF P_DEPTNO = 20 THEN
		V_BONUS_RATE := 0.2;
	ELSIF P_DEPTNO = 30 THEN
		V_BONUS_RATE := 0.3;
	ELSE
		V_BONUS_RATE := 0.05;
	END IF;
	V_BONUS := ROUND(NVL(P_SALARY,0)*C_BONUS_RATE,2);
	RETURN V_ BONUS;
END CALC_BONUS;
/