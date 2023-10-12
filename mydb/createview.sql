-- 뷰 ( VIEW ) 생성
-- UPDATE , DELETE  기능을 사용 할 수 있음
-- 주소에 "서 울 " 을 포함하는 고객들로 구성된 뷰를 만드시오.
CREATE VIEW vw_customer
AS SELECT * FROM customer
   WHERE address like '서울%';
   
 -- 뷰 검색  
SELECT * FROM vw_customer;

--이름의 김연아를 신유빈으로 변경함
UPDATE vw_customer
 SET name='장유빈'
 WHERE name ='김연아';

--고객 아이디가 2인 고객을 삭제
--참조하고 있는 order 테이블이 있어서 삭제 불가
DELETE FROM vw_customer
WHERE custid = 2;
 
 
COMMIT;

--뷰 삭제
DROP VIEW vw_customer;