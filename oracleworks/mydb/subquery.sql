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

--������ ��������
SELECT name
FROM customer
WHERE custid IN(SELECT custid FROM orders);

--���� ��� customer orders
--������ ������ ���� �ִ� ���� �̸��� �˻��Ͻÿ�
SELECT DISTINCT cus.name
--FROM customer cus INNER JOIN orders ord
FROM customer cus , orders ord
-- ON cus.custid = ord.custid
WHERE cus.custid = ord.custid;
--ORDER BY cus.name ;  

--FROM ���� ���� �������� - �ζ��̺� 
--(�� ��ȣ�� 2 ������ ) ���� �̸��� ���� �Ǹž� �˻�
--(customer,orders)���
--��, �� ��ȣ�� 2 ������

--��������
SELECT cs.name, SUM(od.saleprice)
from customer cs , orders od
WHERE  cs.custid = od.custid
   AND cs.custid<=2
GROUP BY cs.name;


--��������
SELECT cs.name,SUM(od.saleprice)
from (SELECT * FROM customer
       WHERE custid <=2 ) cs,
     orders od
WHERE cs.custid = od.custid
GROUP BY cs.name;

SELECT * FROM product;
SELECT * FROM product_review;
--��Į�� �������� :  select ���� �ִ� select���� ���Ѵ�.
--��ǰ���� ���̺� �ִ� ��ǰ �̸� �˻�
SELECT a.product_code,
       a.member_id,
       a.content,
       (select b.product_name 
        from product b
        where a.product_code = b.product_code) product_name,
        a.member_id,
        a.content
FROM product_review a;



--������ ��������
--������ ������ ���� ���� ���� �̸� ���
select name
from customer
where custid not in(select custid orders);