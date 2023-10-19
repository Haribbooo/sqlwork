--서브 쿼리(Sub Query) : 부속질의 (중첩 커리)
-- SELECT  내부에 또 SELECT 검색 가능..?

--도서 중 가격이 가장 높은 도서를 검색하기
-- MAX(price)
SELECT MAX(price) FROM book;

--도서중에서 가장 비싼 도서의 이름을 검색하시오
SELECT bookname ,price
FROM book
WHERE price = (SELECT MAX(price) FROM book);

--도서를 구매한 적이 있는 고객의 이름을 검색하시오
SELECT custid FROM orders;

--다중형 서브쿼리
SELECT name
FROM customer
WHERE custid IN(SELECT custid FROM orders);

--조인 방식 customer orders
--도서를 구매한 적이 있는 고객의 이름을 검색하시오
SELECT DISTINCT cus.name
--FROM customer cus INNER JOIN orders ord
FROM customer cus , orders ord
-- ON cus.custid = ord.custid
WHERE cus.custid = ord.custid;
--ORDER BY cus.name ;  

--FROM 절에 없는 서브쿼리 - 인라이뷰 
--(고객 번호가 2 이하인 ) 고객의 이름과 고객의 판매액 검색
--(customer,orders)사용
--단, 고객 번호가 2 이하임

--동등조인
SELECT cs.name, SUM(od.saleprice)
from customer cs , orders od
WHERE  cs.custid = od.custid
   AND cs.custid<=2
GROUP BY cs.name;


--서브쿼리
SELECT cs.name,SUM(od.saleprice)
from (SELECT * FROM customer
       WHERE custid <=2 ) cs,
     orders od
WHERE cs.custid = od.custid
GROUP BY cs.name;

SELECT * FROM product;
SELECT * FROM product_review;
--스칼리 서브쿼리 :  select 절에 있는 select문을 말한다.
--상품리뷰 테이블에 있는 상품 이름 검색
SELECT a.product_code,
       a.member_id,
       a.content,
       (select b.product_name 
        from product b
        where a.product_code = b.product_code) product_name,
        a.member_id,
        a.content
FROM product_review a;



--다중형 서브쿼리
--도서를 구매한 적이 없는 고객의 이름 출력
select name
from customer
where custid not in(select custid orders);