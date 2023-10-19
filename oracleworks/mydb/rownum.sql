--ROWNUM ( 로우 번호)
-- 행 수를 제한하고 싶을 때 사용 , SUDO  COLUME 이라함

CREATE TABLE ex_score(
    name VARCHAR2(20),
    score NUMBER(3)
);

INSERT INTO ex_score VALUES ('김하니',94);
INSERT INTO ex_score VALUES ('이하니',100);
INSERT INTO ex_score VALUES ('박하니',97);
INSERT INTO ex_score VALUES ('정하니',90);
INSERT INTO ex_score VALUES ('남궁하니',84);
INSERT INTO ex_score VALUES ('윤하니',54);
INSERT INTO ex_score VALUES ('하니',24);
INSERT INTO ex_score VALUES ('함하니',74);
INSERT INTO ex_score VALUES ('최하니',80);
INSERT INTO ex_score VALUES ('미하니',66);

drop table ex_score;

--1~5행까지 정보 출력 
select ROWNUM, name,score
FROM ex_score
WHERE ROWNUM <=5;

--1~5행까지 정보 출력  between
select ROWNUM, name,score
FROM ex_score
WHERE ROWNUM BETWEEN 1 AND 5;

--2~6행 까지 데이터 정보 출력 / 로우넘은 1부터 해야된다. 출력 x 
select ROWNUM, name,score
FROM ex_score
WHERE ROWNUM >=2 AND ROWNUM <=6;

--점수를 높은 순으로 내림차순으로 
select ROWNUM, name,score
FROM ex_score
ORDER BY score DESC;

--점수가 높은 순으로 5명을 검색하시오
select name,score
FROM ex_score
WHERE ROWNUM <=5
ORDER BY score DESC;

--성적을 내림차순으로 정렬 후 5개를 검색 
SELECT name, score
FROM ( 
SELECT name, score
  FROM ex_score 
ORDER BY score DESC
)
WHERE ROWNUM <= 5;

--성적순위
SELECT name,
       score, 
    RANK()OVER(ORDER BY score DESC) AS rank1,
    DENSE_RANK()OVER(ORDER BY score DESC) AS rank2
FROM ex_score;


commit;