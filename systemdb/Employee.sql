--��� ���̺� ����
CREATE TABLE employee(
    empid    NUMBER(3),
    empname  VARCHAR2(20) NOT NULL,
    age      NUMBER(3),
    deptid    NUMBER,
    PRIMARY KEY(empid),   --�⺻ Ű 
    FOREIGN KEY(deptid) REFERENCES department(deptid)
);

--��� �ڸ� �߰�
INSERT INTO employee(empid, empname, age, deptid)
VALUES (10,'����ȣ',29, 10);
INSERT INTO employee(empid, empname, age, deptid)
VALUES (102,'����',25, 30); --�μ� �ڵ尡 ��� ����
INSERT INTO employee(empid, empname, deptid)
VALUES (103,'�Լҿ�', 20);
INSERT INTO employee(empid, empname,age, deptid)
VALUES (104,'�����', 62,20);

--��� ��� ���
SELECT * FROM employee;

--��� �̸��� ���� Į�����
SELECT empname,age FROM employee;

--��� �̸��� ������ ������ �˻�
SELECT * FROM employee
WHERE empname = '����';

--���̰� 30 �̻� ��� �˻�
SELECT * FROM employee
WHERE age >= 30;

--�μ� ��ȣ�� 20 ��� �˻�
SELECT * FROM employee
WHERE deptid = 20;

--���̰� null��  ��� �˻�
SELECT * FROM employee
WHERE age is null;

COMMIT;

DROP TABLE employee;

