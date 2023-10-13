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


