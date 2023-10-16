-- account 테이블 생성
CREATE TABLE account(
    ano      VARCHAR2(20) PRIMARY KEY,
    owner    VARCHAR2(20) NOt NUlL,
    balance  NUMBER NOT NULL

);

INSERT INTO account VALUES('11-11-111','최은호',100000);

COMMIT;

SELECT *FROM account;