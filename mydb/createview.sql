-- �� ( VIEW ) ����
-- UPDATE , DELETE  ����� ��� �� �� ����
-- �ּҿ� "�� �� " �� �����ϴ� ����� ������ �並 ����ÿ�.
CREATE VIEW vw_customer
AS SELECT * FROM customer
   WHERE address like '����%';
   
 -- �� �˻�  
SELECT * FROM vw_customer;

--�̸��� �迬�Ƹ� ���������� ������
UPDATE vw_customer
 SET name='������'
 WHERE name ='�迬��';

--�� ���̵� 2�� ���� ����
--�����ϰ� �ִ� order ���̺��� �־ ���� �Ұ�
DELETE FROM vw_customer
WHERE custid = 2;
 
 
COMMIT;

--�� ����
DROP VIEW vw_customer;