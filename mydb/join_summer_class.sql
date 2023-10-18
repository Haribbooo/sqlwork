--�����б� ������, ������̺�
SELECT * FROM summer_price;
SELECT * FROM summer_register;


--������ �������� �հ�
SELECT b.sid,
       b.subject,
       a.price     
FROM summer_price a JOIN  summer_register b
   ON a.subject = b.subject;




--�л��� ��� ������ ���������� �˻��Ͻÿ�
--join ~~ USING ( Į���� ) : join Į���� �̸��� ���� ���  ,��Ī x 
SELECT b.sid,
       subject,     
       a.price
FROM summer_price a join summer_register b
 USING (subject);


--���� ������ �հ� �� ��ü �Ѱ踦 ���Ͻÿ�
--ROLLUP ( ) ,CUBE () 
-- ������ null �� �ƴϸ� ������� , null�̸� �Ѱ� ���
SELECT NVL(b.subject, '�Ѱ�') ��������,
       SUM(a.price) �������հ�
FROM summer_price a, summer_register b
WHERE a.subject = b.subject
GROUP BY ROLLUP (b.subject);



--������ ������ �հ�
INSERT INTO summer_register
VALUES (301,'Python');

INSERT INTO summer_register
VALUES ('Python',40000);


SELECT subject,
       SUM(price)
FROM summer_price
GROUP BY subject;

