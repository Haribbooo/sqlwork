--dept ���̺�
CREATE TABLE dept(
    deptid     NUMBER PRIMARY KEY,  --�⺻Ű
    deptname   VARCHAR2(20) NOT NULL, --null ����
    location   VARCHAR2(20) NOT NULL
);

/* �μ� �ڷ� �߰� */

INSERT INTO dept(deptid, deptname, location)
VALUES ( 10, '������','����');
INSERT INTO dept(deptid, deptname, location)
VALUES ( 20, '������','��õ');
INSERT INTO dept(deptid, deptname, location)
VALUES ( 30, '��������','����');

SELECT *  FROM dept;
COMMIT;

--�μ� �̸����� ���� ������ �̸��� ����Ͻÿ�
SELECT --deptname �μ��̸�,
       --length(deptname) ���ڼ�,
       SUBSTR(deptname,1,length(deptname)-1) ����1,  
       REPLACE(deptname,'��','')����2
FROM dept;


