--ex4 ���̺� ����
CREATE TABLE ex4(
    id VARCHAR2(10) PRIMARY KEY,-- �⺻Ű ��������
    passwd VARCHAR2(10) NOT NULL
);


INSERT INTO ex4 VALUES ('eunho1995' , 'pw1234');
INSERT INTO ex4 VALUES ('eunho195' , 'pw123'); --���Ἲ ���� ���� ����
INSERT INTO ex4 VALUES ('oldman94', 'pw1234', 94);
INSERT INTO ex4(id, passwd) VALUES ( 'today121','u23456');

-- �ڷ����� ũ������ ū ������ �Է� �Ұ�
INSERT INTO ex4(id, passwd, age) VALUES('today321','u2345678910',28);

COMMIT;

--���� Į�� �߰� 
ALTER TABLE ex4 ADD age NUMBER(3);

--�ڷ����� ũ�� ����(VARCHAR 10 -> 12 )
ALTER TABLE ex4 MODIFY passwd VARCHAR(12);

SELECT * FROM ex4;

