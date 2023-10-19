

SELECT * FROM orders;

--주문 테이블의 칼럼 ,자료형
DESC orders;

--통계 함수 - r개수 ( COUNT)  총계 (SUM) 최대값( MAX) 최소값 (MIN)
--COUNT(*)  = 칼럼 명 
--COUNT(칼럼 명) : 
SELECT COUNT(orderid) AS 총판매건수
FROM orders;

SELECT SUM(saleprice) AS 총판매액,
       AVG(saleprice) AS 총평균액
FROM orders;

--고객이 주문한 도서의 총 판매액계산
SELECT SUM(saleprice) AS 총판매액      
FROM orders;

--고객 별로 주문한 도서의 총 판매액을 계산
--그룹으로 묶을 ㄸ ㅐ GROUP BY 칼럼명
SELECT custid,
       COUNT(*) AS 도서수량,
       SUM(saleprice) AS 총판매액      
FROM orders
GROUP BY custid;

--도서수량이 3권이상인 자료 검색
--HAVING 자료 사용 - GROUP BY 절에서 조건이 있을 때 사용
SELECT custid,
       COUNT(*) AS 도서수량,
       SUM(saleprice) AS 총판매액      
FROM orders
GROUP BY custid
HAVING COUNT(*) >=3
    --AND SUM(saleprice) >= 35000;





SELECT COUNT(*) AS 총고객수 , COUNT(phone) AS 전화번호수
FROM customer;

--도서중에서 최대가격, 최저가격 알기
SELECT MAX(price) 최고가격, MIN(price) 최저가격
FROM book;

SELECT *  FROM customer;
-- 3번 고객(안산)이 주문한 도서의 총 판매액 구하기
SELECT SUM(saleprice) AS 총판매 
FROM orders
WHERE custid = 3;

--조인( JOIN )
--동등조인( EQUL JOIN ) = equal 를 사용하는 조건
-- 테이블 A.칼럼명 = 테이블B.칼럼명 ( 칼럼 - 외래기)
--고객의 이름과 고객의 주문한 도서의 주문가격을 검색하시오 = 2개의 테이블 필요(customer,orders 조인)
SELECT customer.name ,orders.saleprice
FROM customer, orders
WHERE customer.custid = orders.custid;


-- 별칭 사용 조인
-- 고객 이름 별 정렬 ( 오 름 차 순 )
SELECT cus.name ,ord.saleprice
FROM customer cus , orders

WHERE cus.custid = ord.custid
ORDER BY cus.name, ord.saleprice desc;




-- 3번 고객의 아이디,도서이름과 주문 가격을 알아보자.
SELECT custid, bookname,saleprice
FROM orders, book
WHERE orders.bookid = book.bookid
      AND orders.custid = 3;
   



