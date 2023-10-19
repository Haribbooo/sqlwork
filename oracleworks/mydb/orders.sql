-- �ֹ� ���̺� ����
CREATE TABLE orders(
    orderid   NUMBER PRIMARY KEY,
    custid    NUMBER NOT NULL,
    bookid    NUMBER NOT NULL,
    saleprice NUMBER NOT NULL,
    orderdate VARCHAR2(20) NOT NULL,
   
    FOREIGN KEY(custid) REFERENCES customer(custid), --�ܷ�Ű
    FOREIGN KEY(bookid) REFERENCES book(bookid)        -- �ܷ�Ű
);

--�ֹ� ���̴� �߰�
INSERT INTO orders(orderid, custid,bookid, saleprice,orderdate)
VALUES(1, 1, 1, 6000,'2010-07-01');
INSERT INTO orders(orderid, custid,bookid, saleprice,orderdate)
VALUES(2, 1, 3, 21000,'2010-07-03');
INSERT INTO orders(orderid, custid,bookid, saleprice,orderdate)
VALUES(3, 2, 5, 8000,'2010-07-01');
INSERT INTO orders(orderid, custid,bookid, saleprice,orderdate)
VALUES(4, 3, 6, 6000,'2010-07-01');
INSERT INTO orders(orderid, custid,bookid, saleprice,orderdate)
VALUES(5, 4, 7, 20000,'2010-07-05');
INSERT INTO orders(orderid, custid,bookid, saleprice,orderdate)
VALUES(6, 1, 2, 12000,'2010-07-07');
INSERT INTO orders(orderid, custid,bookid, saleprice,orderdate)
VALUES(7, 4, 8, 13000,'2010-07-07');
INSERT INTO orders(orderid, custid,bookid, saleprice,orderdate)
VALUES(8, 3, 10, 12000,'2010-07-08');
INSERT INTO orders(orderid, custid,bookid, saleprice,orderdate)
VALUES(9, 2, 10, 6000,'2010-07-09');
INSERT INTO orders(orderid, custid,bookid, saleprice,orderdate)
VALUES(10, 3, 8, 13000,'2010-07-01');