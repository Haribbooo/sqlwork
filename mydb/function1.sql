--숫자 타입 내장 함수
-- 절대값 구하기 : ABS ( )
--제곱 테이블 : dual

SELECT ABS(-10) FROM dual;

--반올림 : ROUND( 숫자 , 자리수 )
SELECT ROUND(127.67 , 1) FROM dual;  --소수 첫째 자리
SELECT ROUND(127.67 , 0) FROM dual;  --0의 자리
SELECT ROUND(127.67 , -1) FROM dual; --일의 자리
SELECT ROUND(127.67 , -2) FROM dual; --십의 자리

--버림(내림) : TRUNC ( 숫자 , 자리수)
SELECT TRUNC(127.67 , 1) FROM dual; --소수 첫째 자리까지 표시( 이후 버림)
SELECT TRUNC(127.67 , 0) FROM dual;--0자리 자리까지 표시( 이후 버림)
SELECT TRUNC(127.67 , -1) FROM dual;--일의 자리까지 표시( 이후 버림)
SELECT TRUNC(127.67 , -2) FROM dual;--십의 자리까지 표시( 이후 버림)

--버림(내림) : FLOOR (숫자, 자리수) -정수로 내림한다.
SELECT FLOOR(127.67) FROM dual;
SELECT FLOOR(127.6) FROM dual;

--거듭 제곱 : POWER 2의 10제곱 = (2,10)
SELECT POWER(2 , 10) FROM dual;

--문자 타입
--소문자로 변경하기
SELECT LOWER ( 'ABCD') FROM dual;
SELECT UPPER ( 'abcd') FROM dual;

--문자열의 일부를 추출하는 :SUBSTR(문자열, 인데스,자리수)
SELECT SUBSTR('abcd',1,3) FROM dual;

--문자열을 찾아 바꾸기 REPLACE( 문자열 ,변경 전 문자, 변경 후 문자)
SELECT REPLACE('abcd','a','*') FROM dual;

--문자열의 길이 ㅣ LENGTH( )
SELECT LENGTH('abcd') FROM dual;

--마스킹 처리 : 
--LPAD (문자열, 전체길이, 특정문자 왼쪽부터
--RPAD
SELECT LPAD('today',7,'*') FROM dual;
SELECT RPAD('today',7,'*') FROM dual;

--주문테이블
--고객별 평균 주문 금액을 반올림....
SELECT  custid AS 고객번호,
       SUM(saleprice) AS 합계금액,
       COUNT(saleprice) AS 주문건수,
       ROUND (AVG(saleprice),-3) AS 평균주문금액
FROM orders
GROUP BY custid;

--도서 테이블
--책제목의 글자 수 
--책 제목의 바이트 수 : 한글 =3바이트 | 영어,특수문자= 1바이트
SELECT bookname,
       LENGTH(bookname) AS 글자수,
       LENGTHB(bookname) AS 바이트수
FROM book;

-- '해리포터를 ' 은호포터로 변경하여 검색
SELECT bookname,
       REPLACE(bookname,'해리포터','은호포터') AS bookname
FROM BOOK;

--고객테이블
--고객 이름별 같은 성을 가진 고객의 인원수
SELECT SUBSTR(name, 1, 1 )성,
       COUNT(*) 인원
FROM customer
GROUP BY SUBSTR(name,1,1);






