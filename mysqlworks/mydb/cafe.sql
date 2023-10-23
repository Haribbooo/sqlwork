-- 제2정규화( 음료, 주문테이블) 

CREATE TABLE drink( 
	drink_code  VARCHAR(3) primary key,  -- 음료코드
    drink_name  VARCHAR(20) NOT NULL     -- 음료이름
);

CREATE TABLE cafe_order(
	order_no INT PRIMARY KEY AUTO_INCREMENT,
    drink_code VARCHAR(3) NOT NULL,
    order_cnt INT NOT NULL,
    FOREIGN KEY(drink_code) REFERENCES drink(drink_code),
    ON DELETE CASCADE -- 부모키의 데이터가 삭제되면 자식데이터도 삭제됨
);

-- drink 자료추가

INSERT INTO drink VALUES('A01','아메리카노');

INSERT INTO drink VALUES('B01','카페라떼');

INSERT INTO drink VALUES('C01','허브차');

select * from drink;

-- cafe_order 자료추가
INSERT INTO cafe_order(drink_code, order_cnt) 
VALUES('A01',3);
INSERT INTO cafe_order(drink_code, order_cnt) 
VALUES('B01',1);
INSERT INTO cafe_order(drink_code, order_cnt) 
VALUES('C01',2);

-- 음료 테이블의 음료코드 'B01'  삭제
DELETE FROM dirnk WHERE drink_code = 'B01';


DROP TABLE cafe_order;
select * from cafe_order;