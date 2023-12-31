--조인 연습
--product, product_review
SELECT * FROM product;
SELECT * FROM product_review;

--리뷰가 있는 상품의 정보를 검색.
--리뷰 테이블에 product_name 칼럼을 조인
SELECT a.product_name,
       b.review_no,
       b.product_code,           
       b.content,
       b.regdate
FROM  product a , product_review b
WHERE a.product_code = b.product_code;

SELECT a.product_name,
       b.*
FROM  product a , product_review b
WHERE a.product_code = b.product_code;


--ANSI ( 미국 협회) 조인 - STANDARD JOIN (표준 조인)
-- 내부조인 (INNER JOIN  ~ ON )
SELECT a.product_name,
       b.*
FROM  product a JOIN product_review b
 ON a.product_code = b.product_code;

--외부 조인( LEFT ,RIGHT )
--리뷰 유무x 모든 상품의 정보를 검색.
SELECT a.product_name,
       b.review_no,
       b.product_code,           
       b.content,
       b.regdate
FROM  product a LEFT JOIN product_review b
ON a.product_code = b.product_code;


--리뷰가 없는 상품 정보 검색
SELECT a.product_name
FROM  product a LEFT JOIN product_review b
ON a.product_code = b.product_code
WHERE b.content IS NULL;

--상품리뷰테이블에 product_name 칼럼 추가
--스칼라 서브쿼리 : 한 칼럼만 반환함, select 절에서 사용
SELECT  A.review_no,
        A.product_code,
       (SELECT B.product_name 
        FROM product B
        WHERE A.product_code = B.product_code)
        product_name,
        A.content,
        A.member_id
FROM product_review A;
