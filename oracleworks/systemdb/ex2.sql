--테이블 생성
CREATE TABLE ex2(
    col_date DATE --날짜 자료형 (시스템의 현재 날짜)
);


INSERT INTO ex2 VALUES (SYSDATE);

COMMIT;

SELECT * FROM ex2;

--테이블 삭제
DROP TABLE ex2;