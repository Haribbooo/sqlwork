--�� ���̺� ����

CREATE TABLE customer(
    custid      NUMBER PRIMARY KEY,
    name        VARCHAR2(40) NOT NULL,
    address     VARCHAR2(50) ,
    phone       VARCHAR2(20)
);

--�� ������
INSERT INTO customer(custid,name,address,phone)
VALUES(1,'������','��ü���� ������Ƽ��','000-5000-0001');
INSERT INTO customer(custid,name,address,phone)
VALUES(2,'�迬��','���� ������ ','010-6000-0001');
INSERT INTO customer(custid,name,address,phone)
VALUES(3,'�Ȼ�','��⵵ �Ȼ�','000-7000-0001');
INSERT INTO customer(custid,name,address,phone)
VALUES(4,'������','�̱� �����', '');
INSERT INTO customer(custid,name,address,phone)
VALUES(5,'�����','��Ʈ�� ������Ƽ��','000-8000-0001');

COMMIT;
