--조건에 관함 함수:
--DECODE(칼럼명, 조건 , ) 
--성별이 ( 남자이면 m 여자면 f ) 
SELECT empname 사원이름,
       DECODE(gender, '남자', 'M' ,'F') gender
FROM emp;

--조건 구분( IF - Then 과 유사)
/*
   case
        WHEN 조건  THEN 결과;
        WHEN 조건2  THEN 결과2;
        ELSE 결과3
    END 
*/
SELECT empname 사원번호,
       gender 성별,
       case
          WHEN gender = '남자' THEN 'M'
          ELSE 'F'
END gender
FROM emp;
--급여에 따른 직급 표시
--급여가 350만원 이상이면 과장으로 
--급여가 250만원 이상이면 대리로
--나머지는 사원
SELECT empname 사원번호,
       salary 급여,
       case
          WHEN salary >= 3500000 THEN  '과장'
          WHEN salary >= 2500000 THEN  '대리'
          ELSE '사원'
      END 직급
FROM emp;

--null 값에 0을 표시

--NVL(인수1, 인수2)
--인수1이 null이 아니면 인수1 출력
--인수1이 null이면 인수2 출력

SELECT empname,
      NVL(salary, 0) 급여
FROM emp;


-- 실습테이블 생성
CREATE TABLE K1(
    ID VARCHAR2(3),
    CMT NUMBER(2)
);

INSERT INTO K1 VALUES('가',5);
INSERT INTO K1 VALUES('나',null);
INSERT INTO K1 VALUES('다',5);
INSERT INTO K1 VALUES('라',null);
INSERT INTO K1 VALUES('마',10);

SELECT *FROM k1;
SELECT NVL(CMT , 0) 
FROM K1;

SELECT NVL(CMT,0) FROM (K1);
--개수 더하기
SELECT COUNT(CMT)FROM (K1); --3
SELECT COUNT(NVL(CMT,0))FROM (K1);--5

--평균 구하기
SELECT ROUND(SUM(CMT) /COUNT(CMT),1) FROM K1; --6.7
SELECT SUM(CMT) /COUNT(NVL(CMT,0)) FROM K1; --4

SELECT SUM(NVL(CMT,0)) /4 FROM K1; --5
--최소값 구하기
SELECT MIN(NVL(CMT,5)) FROM K1; --5






