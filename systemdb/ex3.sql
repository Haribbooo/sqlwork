--ex3 ���̺� ����
CREATE TABLE ex3(
    col_null VARCHAR2(10), --null ���
    col_not_null VARCHAR2(10) NOt NULL -- null ��� x  
);


INSERT INTO ex3 VALUES ('','OW');
INSERT INTO ex3 VALUES ('HELL',''); --null ����

COMMIT;

SELECT * FROM ex3;