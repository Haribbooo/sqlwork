--��¥�� �ð� �Լ�
--���� ��¥ ����Ť�
SELECT SYSDATE FROM dual;

--���� ��¥ ���� ��ȯ
SELECT TO_CHAR(SYSDATE, 'yyyy')����,
       TO_CHAR(SYSDATE, 'MM')��,
       TO_CHAR(SYSDATE, 'dd')��,
        TO_CHAR(SYSDATE, 'YYYY-MM-DD')��¥
FROM dual;

--���� ������ �ð�
SELECT SYSTIMESTAMP FROM dual;
--�ð� ���� ��ȯ
SELECT TO_CHAR(SYSTIMESTAMP,'HH:MI:SS')�ð�����,
       TO_CHAR(SYSTIMESTAMP,'YYYY/MM/DD HH:MI:SS') ��¥�ͽð�

FROM dual;

--10�� �� ���� ��¥ ���
-- ���� ��¥���� +  - �ϱ�
SELECT SYSDATE -10 FROM dual;
SELECT SYSDATE +10 FROM dual;  

--Ư�� ���ڿ��� 10�� ��,�� ���
--TO_DATE( ���ڿ� ��¥ �Է�)  ��ĥ ���ϰ� ������ ������
SELECT TO_DATE('2023-09-01') + 10 FROM dual;

--���� ���ϰ� ����
SELECT ADD_MONTHS(SYSDATE,3) ��� FROM dual;
SELECT ADD_MONTHS(SYSDATE,-3) ��� FROM dual;
SELECT ADD_MONTHS(TO_DATE('2023/05/01'),-3)��� FROM dual;

--���� �� ����ϱ�
--MONTHS_BETWEEN( ������, ������ )
SELECT  ROUND(MONTHS_BETWEEN(SYSDATE,
        TO_DATE('2023/12/31')),0) �Ѱ�����
FROM dual;


--orders ���̺��� ���� �ð��Լ� ����ϱ�
--������ �ֹ��Ϸκ��� 10�� �� ������ Ȯ���Ѵ�.
-- �� �ֹ��� Ȯ�����ڸ� ���Ͻÿ�
SELECT orderid �ֹ���ȣ,
       orderdate �ֹ���,
       TO_DATE(orderdate) + 10 �ֹ���
FROM orders;



--�ֹ����� 3���� ���ϰ� ����
--�ֹ���ȣ�� 6���� 10������ ����Ͻÿ� 
-- where �Ἥ..
SELECT orderid �ֹ���ȣ,
       orderdate �ֹ���,
       ADD_MONTHS(orderdate,3) ���,
       ADD_MONTHS(orderdate,-3) ���
FROM orders
--WHERE orderid>=6 AND orderid<=10
WHERE orderid BETWEEN 6 AND 10;

--�Ѱ����� ?���غ���.. ����: �ֹ� ������ 10�� ������ �ֹ��Ϸ� ���� ������� �� ������ 
SELECT  orderid �ֹ���ȣ,
        orderdate �ֹ���,
   --ROUND(MONTHS_BETWEEN(SYSDATE,TO_DATE(orderdate)),0) �Ѱ�����
        TRUNC(MONTHS_BETWEEN(SYSDATE,TO_DATE(orderdate)),0) �Ѱ�����
FROM orders
WHERE orderid =10;

--��ȯ �Լ� : TO_ NUMBER ( )  : ���ڸ� ���ڷ�..��ȯ..
SELECT TO_NUMBER('320') FROM dual;
