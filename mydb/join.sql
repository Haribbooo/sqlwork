--조인: 두 테이블을 연결하는 기능
--동등조인: 조인 조건이 정확히 일치하는 경우에 결과 출력
-- 외부조인 : 조인 조건이 정확히 일치하지 않않도 모든 결과를 출력

--고객 (customer) 과 고객의 주문(order)에  관한 데이터를 모두 검색하시오
--고객 이름으로 정렬
SELECT cus.name, ord.saleprice
FROM customer cus, orders ord
WHERE cus.custid = ord.custid
ORDER BY cus.name;

--주문하지 않은 데이터도 모두 검색
-- 조건이 일치하지 않은 테이블에 + 를 넣어줍니다..
SELECT cus.name, ord.saleprice
FROM customer cus , orders ord
WHERE cus.custid = ord.custid(+)
ORDER BY cus.name;

--고객의 이름, 주문한 도서이름 ,주문일, 주문금액
SELECT cus.name , bk.bookname, ord.orderdate , ord.saleprice
FROM customer cus, book bk, orders ord
WHERE cus.custid = ord.custid  -- 기본키 = 외래키
   AND bk.bookid = ord.bookid;
   
--표준 조인ANSI SQL
--내부 조인( INNER JOIM)
--고객(customer) 과 고객의 주문(order) 의 관한데이터를 모두 검색하시오
--고객의 주문한도서와 판매가격을 검색하시오
SELECT cus.name, ord.saleprice
FROM customer cus INNER JOIN orders ord
    ON cus.custid = ord.custid
ORDER BY cus.name ;   

--외부 입력 조인 (OUTTER JOIN)
--조건에 충족하지 않아도 전체 출력
--고객(customer) 과 고객의 주문(order) 의 관한데이터를 모두 검색하시오
--주문되지 않은 데이터를 포함하여
--고객의 이름과 고객의 주문한 도서의 판매가격을 검색  
SELECT cus.name, ord.saleprice
FROM customer cus LEFT OUTER JOIN orders ord
     on cus.custid = ord.custid
ORDER BY cus.name;

-- 주문 금액의 총액을 출력
--고객별 주문금액의 총합 출력
SELECT SUM(ord.saleprice)
FROM customer cus, orders ord
WHERE cus.custid = ord.custid
GROUP BY cus.name
ORDER BY cus.name;  

--김연아 보고싶다..
SELECT cus.name ,cus.custid ,SUM(ord.saleprice)
FROM customer cus, orders ord
WHERE cus.custid = ord.custid
GROUP BY cus.name, cus.custid
HAVING cus.name ='김연아'
ORDER BY cus.name;  
