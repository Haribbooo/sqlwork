-- emp 테이블 생성 
CREATE TABLE emp(
    empno     NUMBER(3) PRIMARY KEY, -- 사원 번호
    empname   VARCHAR2(20) NOT NULL, -- 사원 이름
    gender    VARCHAR2(6) NOT NULL,  --성별
    salary    NUMBER(10),            --급여
    hire_date VARCHAR2(20) NOT NULL  --입사일
);
--자료 생성
INSERT INTO emp VALUES (100,'이강','남자',3000000,'2019-01-01');
INSERT INTO emp VALUES (101,'김산','여자',2500000,'2020-05-15');
INSERT INTO emp VALUES (102,'오상식','남자',5000000,'2015-02-22');
INSERT INTO emp VALUES (103,'박신입','여자',null,'2023-10-01');

commit;

SELECT * FROM emp;
-- 사원 테이블을 관리 검색 수정 삭제 

1. 사원을 입사일 순으로 정렬하시오 (오름차순)
SELECT *FROM emp
ORDER BY hire_date;

2.사원을 급여 순으로 정렬하시오 (오름차순)
SELECT * FROM emp
ORDER BY salary;

3.급여가 300만원 이하인 사원을 급여가 많은 순으로 정렬
SELECT * FROM emp
WHERE salary <= 3000000
ORDER BY  salary DESC;

4.급여가 없는 사원을 검색
SELECT * FROM emp
WHERE salary is null;

5.사원의 총수를 구하시오
SELECT  
COUNT(*)사원수
FROM emp;

6.사원의 급여합계 와 평균
SELECT 
       SUM(salary) 급여합계,
       AVG(salary) 평균급여
FROM emp;

7.이름이 김산인 사원의 성별을 남자로 변경
UPDATE emp SET gender ='남자'
WHERE empname= '김신';

8.오상식인 사원 삭제 부탁
DELETE  FROM emp
WHERE empname ='오상식';

commit;
ROOLBACK;
