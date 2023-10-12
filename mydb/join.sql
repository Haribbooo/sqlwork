--����: �� ���̺��� �����ϴ� ���
--��������: ���� ������ ��Ȯ�� ��ġ�ϴ� ��쿡 ��� ���
-- �ܺ����� : ���� ������ ��Ȯ�� ��ġ���� �ʾʵ� ��� ����� ���

--�� (customer) �� ���� �ֹ�(order)��  ���� �����͸� ��� �˻��Ͻÿ�
--�� �̸����� ����
SELECT cus.name, ord.saleprice
FROM customer cus, orders ord
WHERE cus.custid = ord.custid
ORDER BY cus.name;

--�ֹ����� ���� �����͵� ��� �˻�
-- ������ ��ġ���� ���� ���̺� + �� �־��ݴϴ�..
SELECT cus.name, ord.saleprice
FROM customer cus , orders ord
WHERE cus.custid = ord.custid(+)
ORDER BY cus.name;

--���� �̸�, �ֹ��� �����̸� ,�ֹ���, �ֹ��ݾ�
SELECT cus.name , bk.bookname, ord.orderdate , ord.saleprice
FROM customer cus, book bk, orders ord
WHERE cus.custid = ord.custid  -- �⺻Ű = �ܷ�Ű
   AND bk.bookid = ord.bookid;
   
--ǥ�� ����ANSI SQL
--���� ����( INNER JOIM)
--��(customer) �� ���� �ֹ�(order) �� ���ѵ����͸� ��� �˻��Ͻÿ�
--���� �ֹ��ѵ����� �ǸŰ����� �˻��Ͻÿ�
SELECT cus.name, ord.saleprice
FROM customer cus INNER JOIN orders ord
    ON cus.custid = ord.custid
ORDER BY cus.name ;   

--�ܺ� �Է� ���� (OUTTER JOIN)
--���ǿ� �������� �ʾƵ� ��ü ���
--��(customer) �� ���� �ֹ�(order) �� ���ѵ����͸� ��� �˻��Ͻÿ�
--�ֹ����� ���� �����͸� �����Ͽ�
--���� �̸��� ���� �ֹ��� ������ �ǸŰ����� �˻�  
SELECT cus.name, ord.saleprice
FROM customer cus LEFT OUTER JOIN orders ord
     on cus.custid = ord.custid
ORDER BY cus.name;

-- �ֹ� �ݾ��� �Ѿ��� ���
--���� �ֹ��ݾ��� ���� ���
SELECT SUM(ord.saleprice)
FROM customer cus, orders ord
WHERE cus.custid = ord.custid
GROUP BY cus.name
ORDER BY cus.name;  

--�迬�� ����ʹ�..
SELECT cus.name ,cus.custid ,SUM(ord.saleprice)
FROM customer cus, orders ord
WHERE cus.custid = ord.custid
GROUP BY cus.name, cus.custid
HAVING cus.name ='�迬��'
ORDER BY cus.name;  
