
BEGIN 
    INSERT INTO DEPT VALUES(66, 'OUTER_BLK_PART', 'Main_Blk');
    
    <<Nested_BLOCK_1>>
    BEGIN
            INSERT INTO DEPT VALUES(76, 'LOCAL_PART_1', 'Nested_Blk1');        
            INSERT INTO DEPT VALUES(777, 'LOCAL_PART_1', 'Nested_Blk1'); -- ?��???�� ?��?�� 발생
            INSERT INTO DEPT VALUES(77, 'LOCAL_PART_1', 'Nested_Blk1');
            INSERT INTO DEPT VALUES(78, 'LOCAL_PART_1', 'Nested_Blk1');
            COMMIT;
    END Nested_BLOCK_1;
    
    <<Nested_BLOCK_2>>
    BEGIN
            INSERT INTO DEPT VALUES(88, 'LOCAL_PART_2', 'NESTED_Blk2');
            COMMIT;
    END Nested_BLOCK_2;
    
    INSERT INTO DEPT VALUES(99, 'OUTER_BLK_PART', 'Main_Blk');
END;
/

SELECT * FROM DEPT WHERE DEPTNO IN (66,76,77,78,88,99);
DELETE FROM DEPT WHERE DEPTNO IN (66,76,77,78,88,99);
COMMIT;