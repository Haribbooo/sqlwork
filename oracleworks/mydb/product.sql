--product 테이블 생성
CREATE TABLE product( 
    product_code CHAR(6) PRIMARY KEY, --상품 코드
    product_name VARCHAR2(50) NOT NULL, --상품 이름
    price        NUMBER NOT NULL  -- 가격
);

INSERT INTO product(product_code,product_name,price)
VALUES ('100001','무소음 무선 마우스',25000);
INSERT INTO product(product_code,product_name,price)
VALUES ('100002','기계식 게이밍 키보드',30000);
INSERT INTO product(product_code,product_name,price)
VALUES ('100003','무결점 패널 광시야각 모니터',120000);

COMMIT;
SELECT * FROM product;

-- 상품의 총 개수 및  ( ) 가격 평균을 구하시오
-- COUNT( ) AVG
SELECT COUNT(*) AS 상품의총개수,
       ROUND(AVG(price),-2)AS 총가격  --백원 단위 반올림
FROM product;


--상품 중에서 마우스 검색하기
SELECT product_name ,price
FROM  product
WHERE product_name LIKE '%마우스%';

--상품을 가격순으로 정렬 하시오 DESC
SELECT *
FROM product
ORDER BY price DESC;

      


