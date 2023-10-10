--�μ��� ��� ���̺� ����

CREATE TABLE department(
    deptid     NUMBER PRIMARY KEY,  --�⺻Ű
    deptname   VARCHAR2(20) NOT NULL, --null ����
    location   VARCHAR2(20) NOT NULL
);


/* �μ� �ڷ� �߰� */

INSERT INTO department(deptid, deptname, location)
VALUES ( 10, '�λ���','����');
INSERT INTO department(deptid, deptname, location)
VALUES ( 20, '������','���');
INSERT INTO department(deptid, deptname, location)
VALUES ( 30, '��������','��õ');


COMMIT;

--�ڷ� �˻�
SELECT deptid, deptname , location FROM department;

--��� Į�� �˻�( * ) SELECT * FROM ~~ ;
SELECT *  FROM department;

-- Ư���� ������ ( �� : �ο� ) �˻� 
-- �μ� �̸��� ������ �ο� ROW (���ڵ�) �˻� = WHERE
SELECT *  FROM department
WHERE deptname = '������';

--�ڷ� ����( �μ���ȣ�� 20���� �ο��� �μ��̸��� ���� ������ -> �濵�� )  UPDATE ~~~ SET 
UPDATE department SET deptname ='�濵��'
WHERE deptid = 20;

ROLLBACK;  --commit 

--�ڷ� ���� ( �μ� ��ȣ�� 30���� �������� ���� )
DELETE  FROM department 
WHERE deptid = 30;

COMMIT;

