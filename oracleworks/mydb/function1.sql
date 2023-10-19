--���� Ÿ�� ���� �Լ�
-- ���밪 ���ϱ� : ABS ( )
--���� ���̺� : dual

SELECT ABS(-10) FROM dual;

--�ݿø� : ROUND( ���� , �ڸ��� )
SELECT ROUND(127.67 , 1) FROM dual;  --�Ҽ� ù° �ڸ�
SELECT ROUND(127.67 , 0) FROM dual;  --0�� �ڸ�
SELECT ROUND(127.67 , -1) FROM dual; --���� �ڸ�
SELECT ROUND(127.67 , -2) FROM dual; --���� �ڸ�

--����(����) : TRUNC ( ���� , �ڸ���)
SELECT TRUNC(127.67 , 1) FROM dual; --�Ҽ� ù° �ڸ����� ǥ��( ���� ����)
SELECT TRUNC(127.67 , 0) FROM dual;--0�ڸ� �ڸ����� ǥ��( ���� ����)
SELECT TRUNC(127.67 , -1) FROM dual;--���� �ڸ����� ǥ��( ���� ����)
SELECT TRUNC(127.67 , -2) FROM dual;--���� �ڸ����� ǥ��( ���� ����)

--����(����) : FLOOR (����, �ڸ���) -������ �����Ѵ�.
SELECT FLOOR(127.67) FROM dual;
SELECT FLOOR(127.6) FROM dual;

--�ŵ� ���� : POWER 2�� 10���� = (2,10)
SELECT POWER(2 , 10) FROM dual;

--���� Ÿ��
--�ҹ��ڷ� �����ϱ�
SELECT LOWER ( 'ABCD') FROM dual;
SELECT UPPER ( 'abcd') FROM dual;

--���ڿ��� �Ϻθ� �����ϴ� :SUBSTR(���ڿ�, �ε���,�ڸ���)
SELECT SUBSTR('abcd',1,3) FROM dual;

--���ڿ��� ã�� �ٲٱ� REPLACE( ���ڿ� ,���� �� ����, ���� �� ����)
SELECT REPLACE('abcd','a','*') FROM dual;

--���ڿ��� ���� �� LENGTH( )
SELECT LENGTH('abcd') FROM dual;

--����ŷ ó�� : 
--LPAD (���ڿ�, ��ü����, Ư������ ���ʺ���
--RPAD
SELECT LPAD('today',7,'*') FROM dual;
SELECT RPAD('today',7,'*') FROM dual;

--�ֹ����̺�
--���� ��� �ֹ� �ݾ��� �ݿø�....
SELECT  custid AS ����ȣ,
       SUM(saleprice) AS �հ�ݾ�,
       COUNT(saleprice) AS �ֹ��Ǽ�,
       ROUND (AVG(saleprice),-3) AS ����ֹ��ݾ�
FROM orders
GROUP BY custid;

--���� ���̺�
--å������ ���� �� 
--å ������ ����Ʈ �� : �ѱ� =3����Ʈ | ����,Ư������= 1����Ʈ
SELECT bookname,
       LENGTH(bookname) AS ���ڼ�,
       LENGTHB(bookname) AS ����Ʈ��
FROM book;

-- '�ظ����͸� ' ��ȣ���ͷ� �����Ͽ� �˻�
SELECT bookname,
       REPLACE(bookname,'�ظ�����','��ȣ����') AS bookname
FROM BOOK;

--�����̺�
--�� �̸��� ���� ���� ���� ���� �ο���
SELECT SUBSTR(name, 1, 1 )��,
       COUNT(*) �ο�
FROM customer
GROUP BY SUBSTR(name,1,1);






