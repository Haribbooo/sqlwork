--연예인 테이블
CREATE TABLE entertainers(
    name     VARCHAR2(30),
    birthday VARCHAR2(20),
    job      VARCHAR2(30)
);

INSERT INTO entertainers
VALUES('장동근','19780601','배우,가수');

INSERT INTO entertainers
VALUES('박은빈','19920904','배우');

INSERT INTO entertainers
VALUES('장기하','19820220','가수,작가');

COMMIT;

--직업이 가수인 연예인
--제1정교화 대상
--속성값이 문자값이여한다.
--직업이 가수인 연예인은 ? 검색의 어려움이 있음
SELECT *
FROM entertainers
WHERE job = '%가수%';

--연예인 테이블 ,직업테이블로 분해해야 한다 =제1 정교화
CREATE TABLE entertainer(
    name   VARCHAR2(20),
    birthday VARCHAR2(20)
);

INSERT INTO entertainer VALUES('장동근','19780601');
INSERT INTO entertainer VALUES('박은빈','19920904');
INSERT INTO entertainer VALUES('장기하','19820220');
COMMIT;

CREATE TABLE job(
   ename    VARCHAR2(20),
   jobname  VARCHAR2(30)
);

INSERT INTO job VALUES('장동근','배우');
INSERT INTO job VALUES('장동근','가수');
INSERT INTO job VALUES('박은빈','배우');
INSERT INTO job VALUES('장기하','가수');
INSERT INTO job VALUES('장기하','작가');

SELECT *FROM job;
SELECT *FROM entertainer;


--연예인의 이름과 생년월일, 직업 검색 정보를 검색
--동등 조인 
SELECT a.name ,
       a.birthday,
       b.jobname
FROM entertainer a , job b
WHERE a.name = b.ename;

--내부조인(INNER JOIN)
SELECT a.name ,
       a.birthday,
       b.jobname  
FROM entertainer a JOIN job b
  ON a.name = b.ename;





