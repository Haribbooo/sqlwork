--게시판 테이블 생성
CREATE TABLE boards(
    bno         NUMBER PRIMARY KEY,
    btitle      VARCHAR2(100)NOT NULL,
    bcontent    CLOB NOT NULL,  -- CLOB ( 
    bwriter     VARCHAR2(50)NOT NULL,
    bdate       DATE DEFAULT SYSDATE,
    bfilename   VARCHAR2(50),                         [                   
    bbfiledata  BLOB   