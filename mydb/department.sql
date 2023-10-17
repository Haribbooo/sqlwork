CREATE TABLE department(
    deptno     VARCHAR2(4) PRIMARY KEY,  --�⺻Ű
    deptname   VARCHAR2(20) NOT NULL, --null ����
    office     VARCHAR2(20) 
);

INSERT INTO department VAlUES ('1000','�λ���','����');
INSERT INTO department VAlUES ('1001','������','��õ');
INSERT INTO department VAlUES ('1002','������','����');
INSERT INTO department(deptno,deptname) VAlUES ('1003','������');


COMMIT;

--employee
CREATE TABLE employee(
        empno      NUMBER(3) PRIMARY KEY,
        empname    VARCHAR2(20) NOT NULL,
        sal         NUMBER (10),
        createdate  DATE DEFAULT SYSDATE,
        deptno      VARCHAR2(4),
        FOREIGN KEY(deptno)REFERENCES department(deptno)
 
);

INSERT INTO  employee VALUES (100,'�̰�',2500000,SYSDATE,'1000');
INSERT INTO  employee VALUES (101,'����',2000000,SYSDATE,'1001');
INSERT INTO  employee VALUES (102,'�ڴ�',3000000,SYSDATE,'1002');
INSERT INTO  employee VALUES (103,'���¾�',3500000,SYSDATE,'1000');
INSERT INTO  employee VALUES (104,'�ֿ���',5000000,SYSDATE,'1001');
INSERT INTO  employee VALUES (105,'�쿵��',4000000,SYSDATE,'1002');


drop table department;
drop table employee;
SELECT * FROM department;
SELECT * FROM employee;

--1002 �� �μ��̸��� ' �ѹ������� �������ϱ�
UPDATE department
SET deptname = '�ѹ���'
WHERE deptno ='1002';

--���¾��� �޿��� 3000000���� ����
UPDATE employee
SET sal = '3000000'
WHERE empname ='���¾�';


--�μ��� �޿� �Ѿ��� ���Ͻÿ�
SELECT deptno,SUM(sal) --�޿� �Ѿ�
FROM employee
GROUP BY deptno;

-- �μ��̸��� �μ��� �޿� �Ѿ��� ���
--employee department ���̺� ��� (����)
SELECT a.deptno,
       a.deptname,
       SUM(b.sal)
FROM department a , employee b
WHERE a.deptno = b.deptno
GROUP BY a.deptno,a.deptname;

--rollup ( )  group by�� ���� �Ұ�, �뤩�踦 ����
SELECT a.deptno,   
       a.deptname,
       SUM(b.sal)
FROM department a , employee b
WHERE a.deptno = b.deptno
GROUP BY ROLLUP(a.deptno , a.deptname);

--CUBE(Į��1, Į��2) - GROUP BY ������ ��� �Ұ� ,�Ѱ踦 ��ü������ ����
SELECT a.deptno,      
       SUM(b.sal),
       a.deptname
FROM department a , employee b
WHERE a.deptno = b.deptno
GROUP BY CUBE(a.deptno, a.deptname)
ORDER BY a.deptno;

--SUM() ,SUM OVER (ORDER BY Į����) �����հ�
SELECt empno,
       empname,
       sal,     
       SUM(sal) OVER(ORDER BY empno) "sal_sum"      
FROM employee;

--��ũ RANK( ) OVER (ORDER BY Į����)  �Լ�
SELECt empno,
       empname,
       sal,     
       RANK() OVER(ORDER BY sal DESC) "sal_rank",
       DENSE_RANK() OVER(ORDER BY sal DESC) �޿�_rank2
FROM employee;