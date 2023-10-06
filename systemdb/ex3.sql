--ex3 테이블 생성
CREATE TABLE ex3(
    col_null VARCHAR2(10), --null 허용
    col_not_null VARCHAR2(10) NOt NULL -- null 허용 x  
);


INSERT INTO ex3 VALUES ('','OW');
INSERT INTO ex3 VALUES ('HELL',''); --null 에러

COMMIT;

SELECT * FROM ex3;