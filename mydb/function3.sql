--���ǿ� ���� �Լ�:
--DECODE(Į����, ���� , ) 
--������ ( �����̸� m ���ڸ� f ) 
SELECT empname ����̸�,
       DECODE(gender, '����', 'M' ,'F') gender
FROM emp;

--���� ����( IF - Then �� ����)
/*
   case
        WHEN ����  THEN ���;
        WHEN ����2  THEN ���2;
        ELSE ���3
    END 
*/
SELECT empname �����ȣ,
       gender ����,
       case
          WHEN gender = '����' THEN 'M'
          ELSE 'F'
END gender
FROM emp;
--�޿��� ���� ���� ǥ��
--�޿��� 350���� �̻��̸� �������� 
--�޿��� 250���� �̻��̸� �븮��
--�������� ���
SELECT empname �����ȣ,
       salary �޿�,
       case
          WHEN salary >= 3500000 THEN  '����'
          WHEN salary >= 2500000 THEN  '�븮'
          ELSE '���'
      END ����
FROM emp;

--null ���� 0�� ǥ��

--NVL(�μ�1, �μ�2)
--�μ�1�� null�� �ƴϸ� �μ�1 ���
--�μ�1�� null�̸� �μ�2 ���

SELECT empname,
      NVL(salary, 0) �޿�
FROM emp;


-- �ǽ����̺� ����
CREATE TABLE K1(
    ID VARCHAR2(3),
    CMT NUMBER(2)
);

INSERT INTO K1 VALUES('��',5);
INSERT INTO K1 VALUES('��',null);
INSERT INTO K1 VALUES('��',5);
INSERT INTO K1 VALUES('��',null);
INSERT INTO K1 VALUES('��',10);

SELECT *FROM k1;
SELECT NVL(CMT , 0) 
FROM K1;

SELECT NVL(CMT,0) FROM (K1);
--���� ���ϱ�
SELECT COUNT(CMT)FROM (K1); --3
SELECT COUNT(NVL(CMT,0))FROM (K1);--5

--��� ���ϱ�
SELECT ROUND(SUM(CMT) /COUNT(CMT),1) FROM K1; --6.7
SELECT SUM(CMT) /COUNT(NVL(CMT,0)) FROM K1; --4

SELECT SUM(NVL(CMT,0)) /4 FROM K1; --5
--�ּҰ� ���ϱ�
SELECT MIN(NVL(CMT,5)) FROM K1; --5






