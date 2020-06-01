REM DEFAULT SIZE 20000 BYTES.
SET SERVEROUTPUT ON
BEGIN 
    FOR I IN 1..10
    LOOP
        DBMS_OUTPUT.PUT_LINE('['||TO_CHAR(1)||' ] PROCESSED');
        END LOOP;
END;
/

SET SERVEROUTPUT OFF
BEGIN  
    -- OFF가 되면서 결과 창에  출력 되지 않고 메모리 상에도 기록하지 않는다.
    DBMS_OUTPUT.PUT_LINE('OK');
END;
/

REM ---------------------------
REM 출력 버퍼의 크기 조절
REM -DEFAULT SIZE 20000 BYTES
REM - MAX SIZE UNLIMITED
REM ----------------------------

SET SERVEROUTPUT ON SIZE 2000
BEGIN 
    FOR I IN 1..40
    LOOP 
        DBMS_OUTPUT.PUT_LINE('[ '||TO_CHAR(1)||' ]) '||
            '1234567890123456701234567890');
        END LOOP;
        END;
        /
        
CREATE TABLE EXCEPTION_LOG;     
SET SERVEROUTPUT ON
CREATE OR REPLACE PROCEDURE
    WRITE_LOG(A_PROGRAM_NAME IN VARCHAR2, A_ERROR_MESSAGE IN VARCHAR2, A_DESCRIPION IN VARCHAR2)
AS
BEGIN 
    -- EXCEPTION을 LOG테이블에 기록
    INSERT INTO EXCEPTION_LOG(PROGRAM_NAME,ERROR_MESSAGE,DESCRIPTION)
                VALUES(A_PROGRAM_NAME,A_ERROR_MESSAGE,A_DESCRIPTION);
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
            NULL;
END;
/
