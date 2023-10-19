--날짜와 시간 함수
--현재 날짜 출려ㅕㄱ
SELECT SYSDATE FROM dual;

--현재 날짜 형식 변환
SELECT TO_CHAR(SYSDATE, 'yyyy')연도,
       TO_CHAR(SYSDATE, 'MM')월,
       TO_CHAR(SYSDATE, 'dd')일,
        TO_CHAR(SYSDATE, 'YYYY-MM-DD')날짜
FROM dual;

--현재 날ㅉ와 시간
SELECT SYSTIMESTAMP FROM dual;
--시간 형식 변환
SELECT TO_CHAR(SYSTIMESTAMP,'HH:MI:SS')시간형식,
       TO_CHAR(SYSTIMESTAMP,'YYYY/MM/DD HH:MI:SS') 날짜와시간

FROM dual;

--10일 전 후의 날짜 출력
-- 현재 날짜에서 +  - 하기
SELECT SYSDATE -10 FROM dual;
SELECT SYSDATE +10 FROM dual;  

--특정 날자에서 10일 전,후 출력
--TO_DATE( 문자열 날짜 입력)  며칠 더하고 뺄건지 적기이
SELECT TO_DATE('2023-09-01') + 10 FROM dual;

--월을 더하고 빼기
SELECT ADD_MONTHS(SYSDATE,3) 결과 FROM dual;
SELECT ADD_MONTHS(SYSDATE,-3) 결과 FROM dual;
SELECT ADD_MONTHS(TO_DATE('2023/05/01'),-3)결과 FROM dual;

--개월 수 계산하기
--MONTHS_BETWEEN( 종료일, 시작일 )
SELECT  ROUND(MONTHS_BETWEEN(SYSDATE,
        TO_DATE('2023/12/31')),0) 총개월수
FROM dual;


--orders 테이블에서 날자 시간함수 사용하기
--서점은 주문일로부터 10일 후 매출을 확정한다.
-- 각 주문의 확정일자를 구하시오
SELECT orderid 주문번호,
       orderdate 주문일,
       TO_DATE(orderdate) + 10 주문일
FROM orders;



--주문일이 3개월 다하고 빼기
--주문번호가 6에서 10번까지 출력하시오 
-- where 써서..
SELECT orderid 주문번호,
       orderdate 주문일,
       ADD_MONTHS(orderdate,3) 결과,
       ADD_MONTHS(orderdate,-3) 결과
FROM orders
--WHERE orderid>=6 AND orderid<=10
WHERE orderid BETWEEN 6 AND 10;

--총개월수 ?구해보기.. 조건: 주문 도서가 10인 도서의 주문일로 부터 현재까지 총 개월수 
SELECT  orderid 주문번호,
        orderdate 주문일,
   --ROUND(MONTHS_BETWEEN(SYSDATE,TO_DATE(orderdate)),0) 총개월수
        TRUNC(MONTHS_BETWEEN(SYSDATE,TO_DATE(orderdate)),0) 총개월수
FROM orders
WHERE orderid =10;

--변환 함수 : TO_ NUMBER ( )  : 문자를 숫자로..변환..
SELECT TO_NUMBER('320') FROM dual;
