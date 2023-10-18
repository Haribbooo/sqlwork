--계절학기 수강료, 등록테이블
SELECT * FROM summer_price;
SELECT * FROM summer_register;


--모든과목 수강료의 합계
SELECT b.sid,
       b.subject,
       a.price     
FROM summer_price a JOIN  summer_register b
   ON a.subject = b.subject;




--학생의 모든 과목의 수강정보를 검색하시오
--join ~~ USING ( 칼럼명 ) : join 칼럼이 이름이 같은 경우  ,별칭 x 
SELECT b.sid,
       subject,     
       a.price
FROM summer_price a join summer_register b
 USING (subject);


--과목별 수강료 합계 및 전체 총계를 구하시오
--ROLLUP ( ) ,CUBE () 
-- 과목이 null 이 아니면 과목출력 , null이면 총계 출력
SELECT NVL(b.subject, '총계') 수강과목,
       SUM(a.price) 수강료합계
FROM summer_price a, summer_register b
WHERE a.subject = b.subject
GROUP BY ROLLUP (b.subject);



--과목할 수강료 합계
INSERT INTO summer_register
VALUES (301,'Python');

INSERT INTO summer_register
VALUES ('Python',40000);


SELECT subject,
       SUM(price)
FROM summer_price
GROUP BY subject;

