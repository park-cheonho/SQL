REM DEFAULT SIZE 20000 BYTES.

SET SERVEROUTPUT ON 

BEGIN 

	FOR I IN 1..10
	LOOP

		DBMS_OUTPUT.PUT_LINE(' [ ' ||TO_CHAR(I)||' ] PROCESSED');
	END LOOP;
END;
/

SET SERVEROUTPUT OFF
BEGIN
	-- OFF가 되어서 출력,메모리에 기록도 X
	DBMS_OUTPUT.PUT_LINE('OK...');
END;
/