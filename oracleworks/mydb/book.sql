--bookmall ����
--book ���̺� ����
CREATE TABLE book(
    bookid      NUMBER PRIMARY KEY,
    bookname    VARCHAR2(60) NOT NULL,
    publisher   VARCHAR2(60) NOT NULL,
    price       NUMBER NOT NULL      
);

--���� �ڷ� �߰� 
INSERT INTO book VALUES (1, '�ڽ���' , '���ָ� ����', 60000);
INSERT INTO book VALUES (2, '�� �� ��' , '�����', 65000);
INSERT INTO book VALUES (3, '�ظ�����' , '��ȣ�̵��', 90000);
INSERT INTO book VALUES (4, '���� ���Ӹ����� �� �վ�?!' , '��������', 20000);
INSERT INTO book VALUES (5, '��ź�� ' , '��������', 60000);
INSERT INTO book VALUES (6, '����' , '�ڰ渲', 100000);
INSERT INTO book VALUES (7, '���ε����� ��Ƴ���' , '�½�����', 5000);
INSERT INTO book VALUES (8, '�ظ����� ������' , '��ȣ�̵��', 90000);
INSERT INTO book VALUES (9, '�����' , '�����㺣��', 27000);
INSERT INTO book VALUES (10, '��������ũ ' , '����ũ�� ����', 32340);

SELECT * FROM book;

--��� ������ �̸��� ������ �˻��ϼ���
SELECT bookid,bookname,price FROM book;

-- ���� ���̺� �ִ� ��� ���ǻ縦 �˻��Ͻÿ� (DISTINCT = �ߺ��Ȱ� ������)
SELECT DISTINCT publisher FROM book;

--���ǻ簡 "��ȣ�̵��" �Ǵ� "���ָ� ����" ������ �˻��Ͻÿ�
SELECT * FROM book
WHERE publisher = '��ȣ�̵��' OR publisher = '���ָ� ����';

--���ǻ簡 "��ȣ�̵��" �Ǵ� "���ָ� ����" ������ �˻��Ͻÿ�
--IN() �Լ� ��� <-> NOT IN (): ������ ���
SELECT * FROM book
WHERE publisher NOT IN('��ȣ�̵��','���ָ� ����');

--������ 5���� ������ ������ �˻��ϼ��� + �������� ������
SELECT* FROM book
WHERE price < 50000
ORDER BY price ;

--������ 20000���� ������ �˻�
SELECT* FROM book
WHERE price = 20000 ;

-- 20000�� �ƴ� ���� �˻�
SELECT* FROM book
WHERE price <> 100000 ;

-- 20000�� �ƴ� ���� �˻�
SELECT* FROM book
WHERE price != 100000 ;


-- ���� �̻� ������ ����
SELECT* FROM book
WHERE price < 50000 AND price >= 10000;

SELECT* FROM book
WHERE price BETWEEN 20000 AND  70000;

--��������ũ�� �Ⱓ�� ��Ǯ�ǻ縦 ���˻�
SELECT publisher FROM book
WHERE bookname = '��������ũ ';

SELECT publisher FROM book
WHERE bookname LIKE'��������ũ ';

--�����̸��� ' �ظ� ' �� ���Ե� ���ǻ縦 �˻�
SELECT bookname, publisher FROM book
WHERE bookname LIKE '%�ظ�%';

--�����̸��� ' �ظ� ' �� ����x ���ǻ縦 �˻�
SELECT bookname, publisher FROM book
WHERE bookname NOT LIKE '%�ظ�%';


--�ظ��� ���� ������ ������ 2000���� �̻��� ������ �˻� �Ͻÿ�
SELECT bookname, publisher FROM book
WHERE bookname LIKE '%�ظ�%' AND price >=20000;

--���� 
--������ �̸������� �����Ͻÿ�
SELECT * FROM book
ORDER BY bookname;

--������ ���ݼ� �����Ͻÿ�
--������ ������ �̸��� ������������ ���� 
SELECT * FROM book
ORDER BY price ASC
, bookname DESC;

COMMIT;