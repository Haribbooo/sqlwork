-- 자바 게시판 구현할 board 테이블 생성
CREATE TABLE board(
    bno         NUMBER PRIMARY KEY,
    btitle      VARCHAR2(100)NOT NULL,
    bcontent    CLOB NOT NULL,  -- CLOB ( 
    bwriter     VARCHAR2(50)NOT NULL,
    bdate       DATE DEFAULT SYSDATE  
);
CREATE SEQUENCE seq NOCACHE;

INSERT INTO board(bno, btitle, bcontent,bwriter)
VALUES (seq.NEXTVAL, '가입 인사' ,'ㅎㅇㅎㅇ','최은호123');
INSERT INTO board(bno, btitle, bcontent,bwriter)
VALUES (seq.NEXTVAL, '공지 사항' ,'흥! ','김희린123');


SELECT * FROM board
ORDER BY bno DESC;

DROP sequence seq;

TRUNCATE TABLE board;

COMMIT;
    