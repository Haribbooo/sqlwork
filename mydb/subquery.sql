--���� ����(Sub Query) : �μ����� (��ø Ŀ��)
-- SELECT  ���ο� �� SELECT �˻� ����..?

--���� �� ������ ���� ���� ������ �˻��ϱ�
-- MAX(price)
SELECT MAX(price) FROM book;

--�����߿��� ���� ��� ������ �̸��� �˻��Ͻÿ�
SELECT bookname ,price
FROM book
WHERE price = (SELECT MAX(price) FROM book);

--������ ������ ���� �ִ� ���� �̸��� �˻��Ͻÿ�
SELECT custid FROM orders;

SELECT name
FROM customer
WHERE custid IN(SELECT custid FROM orders);

--���� ��� customer orders
--������ ������ ���� �ִ� ���� �̸��� �˻��Ͻÿ�
SELECT DISTINCT cus.name
--FROM customer cus INNER JOIN orders ord
FROM customer cus , orders ord
-- ON cus.custid = ord.custid
WHERE cus.custid = ord.custid
--ORDER BY cus.name ;  

