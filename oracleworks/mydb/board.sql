-- �ڹ� �Խ��� ������ board ���̺� ����
CREATE TABLE board(
    bno         NUMBER PRIMARY KEY,
    btitle      VARCHAR2(100)NOT NULL,
    bcontent    CLOB NOT NULL,  -- CLOB ( 
    bwriter     VARCHAR2(50)NOT NULL,
    bdate       DATE DEFAULT SYSDATE  
);
CREATE SEQUENCE seq NOCACHE;

INSERT INTO board(bno, btitle, bcontent,bwriter)
VALUES (seq.NEXTVAL, '���� �λ�' ,'��������','����ȣ123');
INSERT INTO board(bno, btitle, bcontent,bwriter)
VALUES (seq.NEXTVAL, '���� ����' ,'��! ','����123');


SELECT * FROM board
ORDER BY bno DESC;

DROP sequence seq;

TRUNCATE TABLE board;

COMMIT;
    