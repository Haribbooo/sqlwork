--ex4 ���̺� ����
CREATE TABLE ex4(
    id VARCHAR2(10) PRIMARY KEY,-- �⺻Ű ��������
    passwd VARCHAR2(10) NOT NULL
);


INSERT INTO ex4 VALUES ('eunho1995' , 'pw1234');
INSERT INTO ex4 VALUES ('eunho195' , 'pw123'); --���Ἲ ���� ���� ����
INSERT INTO ex4 VALUES ('oldman94', 'pw1234', 94);

COMMIT;

--���� Į�� �߰� 
ALTER TABLE ex4 ADD age NUMBER(3);

SELECT * FROM ex4;

