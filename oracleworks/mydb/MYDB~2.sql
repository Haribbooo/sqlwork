-- account 테이블 생성
CREATE TABLE account(
    ano      VARCHAR2(20) PRIMARY KEY,
    owner    VARCHAR2(20) NOt NUlL,
    balance  NUMBER NOT NULL

);

INSERT INTO account VALUES('11-11-111','최은호',100000);

--자료 변경 ( 입,출금)
UPDATE account 
SET balance = 50000,
    owner = 'choi'
    WHERE ano = '44-44-444';
    

ROLLBACK;
COMMIT;


SELECT *FROM account;

