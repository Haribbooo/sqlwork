-- account ���̺� ����
CREATE TABLE account(
    ano      VARCHAR2(20) PRIMARY KEY,
    owner    VARCHAR2(20) NOt NUlL,
    balance  NUMBER NOT NULL

);

INSERT INTO account VALUES('11-11-111','����ȣ',100000);

COMMIT;

SELECT *FROM account;