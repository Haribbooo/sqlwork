--���̺� ����
CREATE TABLE ex2(
    col_date DATE --��¥ �ڷ��� (�ý����� ���� ��¥)
);


INSERT INTO ex2 VALUES (SYSDATE);

COMMIT;

SELECT * FROM ex2;

--���̺� ����
DROP TABLE ex2;