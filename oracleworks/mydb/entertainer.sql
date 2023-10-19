--������ ���̺�
CREATE TABLE entertainers(
    name     VARCHAR2(30),
    birthday VARCHAR2(20),
    job      VARCHAR2(30)
);

INSERT INTO entertainers
VALUES('�嵿��','19780601','���,����');

INSERT INTO entertainers
VALUES('������','19920904','���');

INSERT INTO entertainers
VALUES('�����','19820220','����,�۰�');

COMMIT;

--������ ������ ������
--��1����ȭ ���
--�Ӽ����� ���ڰ��̿��Ѵ�.
--������ ������ �������� ? �˻��� ������� ����
SELECT *
FROM entertainers
WHERE job = '%����%';

--������ ���̺� ,�������̺��� �����ؾ� �Ѵ� =��1 ����ȭ
CREATE TABLE entertainer(
    name   VARCHAR2(20),
    birthday VARCHAR2(20)
);

INSERT INTO entertainer VALUES('�嵿��','19780601');
INSERT INTO entertainer VALUES('������','19920904');
INSERT INTO entertainer VALUES('�����','19820220');
COMMIT;

CREATE TABLE job(
   ename    VARCHAR2(20),
   jobname  VARCHAR2(30)
);

INSERT INTO job VALUES('�嵿��','���');
INSERT INTO job VALUES('�嵿��','����');
INSERT INTO job VALUES('������','���');
INSERT INTO job VALUES('�����','����');
INSERT INTO job VALUES('�����','�۰�');

SELECT *FROM job;
SELECT *FROM entertainer;


--�������� �̸��� �������, ���� �˻� ������ �˻�
--���� ���� 
SELECT a.name ,
       a.birthday,
       b.jobname
FROM entertainer a , job b
WHERE a.name = b.ename;

--��������(INNER JOIN)
SELECT a.name ,
       a.birthday,
       b.jobname  
FROM entertainer a JOIN job b
  ON a.name = b.ename;




