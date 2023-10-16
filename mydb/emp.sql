-- emp ���̺� ���� 
CREATE TABLE emp(
    empno     NUMBER(3) PRIMARY KEY, -- ��� ��ȣ
    empname   VARCHAR2(20) NOT NULL, -- ��� �̸�
    gender    VARCHAR2(6) NOT NULL,  --����
    salary    NUMBER(10),            --�޿�
    hire_date VARCHAR2(20) NOT NULL  --�Ի���
);
--�ڷ� ����
INSERT INTO emp VALUES (100,'�̰�','����',3000000,'2019-01-01');
INSERT INTO emp VALUES (101,'���','����',2500000,'2020-05-15');
INSERT INTO emp VALUES (102,'�����','����',5000000,'2015-02-22');
INSERT INTO emp VALUES (103,'�ڽ���','����',null,'2023-10-01');

COMMIT;

SELECT * FROM emp;
-- ��� ���̺��� ���� �˻� ���� ���� 

1. ����� �Ի��� ������ �����Ͻÿ� (��������)
SELECT *FROM emp
ORDER BY hire_date;

2.����� �޿� ������ �����Ͻÿ� (��������)
SELECT * FROM emp
ORDER BY salary;

3.�޿��� 300���� ������ ����� �޿��� ���� ������ ����
SELECT * FROM emp
WHERE salary <= 3000000
ORDER BY  salary DESC;

4.�޿��� ���� ����� �˻�
SELECT * FROM emp
WHERE salary is null;

5.����� �Ѽ��� ���Ͻÿ�
SELECT  
COUNT(*)�����
FROM emp;

6.����� �޿��հ� �� ���
SELECT 
       SUM(salary) �޿��հ�,
       AVG(salary) ��ձ޿�
FROM emp;

7.�̸��� ����� ����� ������ ���ڷ� ����
UPDATE emp SET gender ='����'
WHERE empname= '���';

8.������� ��� ���� ��Ź
DELETE  FROM emp
WHERE empname ='�����';

COMMIT;
ROLLBACK;
--�ݿø� : ROUND (���� , �ڸ���)
SELECT empname ����̸�,
       salary �޿�,
       salary/30 �ϱ�,
       ROUND(salary/30,1) ���1,
       ROUND(salary/30,0) ���2,
       ROUND(salary/30,-1) ���3
FROM emp;

drop table emp;

SELECT * FROM EMP;

--�޿��� ���� ����  ��� �˻� �����޿� ���ϱ�
--���� ���� (subquery)
--�ְ�޿�  SELECT MAX(salary) FROM emp
--�����޿�  SELECT MIN(salary) FROM emp
--���� �޿� �ְ�޿� ���ϱ� 

SELECT empname, salary 
       FROM emp
WHERE salary = (SELECT MAX(salary) FROM emp) 
    OR salary =(SELECT MIN(salary) FROM emp);









