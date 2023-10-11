-- bookmall ����
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

--������ 5���� ������ ������ �˻��ϼ��� + �������� ������

SELECT* FROM book
WHERE price < 50000
ORDER BY price ;

-- ���� �̻� ������ ����
SELECT* FROM book
WHERE price < 50000 AND price >= 10000;

SELECT* FROM book
WHERE price BETWEEN 20000 AND  70000;





COMMIT;