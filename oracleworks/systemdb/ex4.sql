--ex4 테이블 생성
CREATE TABLE ex4(
    id VARCHAR2(10) PRIMARY KEY,-- 기본키 제약조건
    passwd VARCHAR2(10) NOT NULL
);


INSERT INTO ex4 VALUES ('eunho1995' , 'pw1234');
INSERT INTO ex4 VALUES ('eunho195' , 'pw123'); --무결성 제약 조건 위배
INSERT INTO ex4 VALUES ('oldman94', 'pw1234', 94);
INSERT INTO ex4(id, passwd) VALUES ( 'today121','u23456');

-- 자료형의 크가보다 큰 데이터 입력 불가
INSERT INTO ex4(id, passwd, age) VALUES('today321','u2345678910',28);

COMMIT;

--나이 칼럼 추가 
ALTER TABLE ex4 ADD age NUMBER(3);

--자료형의 크기 변경(VARCHAR 10 -> 12 )
ALTER TABLE ex4 MODIFY passwd VARCHAR(12);

SELECT * FROM ex4;

