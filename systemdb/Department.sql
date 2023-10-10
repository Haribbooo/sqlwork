--부서와 사원 테이블 생성

CREATE TABLE department(
    deptid     NUMBER PRIMARY KEY,  --기본키
    deptname   VARCHAR2(20) NOT NULL, --null 불허
    location   VARCHAR2(20) NOT NULL
);


/* 부서 자료 추가 */

INSERT INTO department(deptid, deptname, location)
VALUES ( 10, '인사팀','서울');
INSERT INTO department(deptid, deptname, location)
VALUES ( 20, '전산팀','울산');
INSERT INTO department(deptid, deptname, location)
VALUES ( 30, '마케팅팀','인천');


COMMIT;

--자료 검색
SELECT deptid, deptname , location FROM department;

--모든 칼럼 검색( * ) SELECT * FROM ~~ ;
SELECT *  FROM department;

-- 특정한 데이터 ( 행 : 로우 ) 검색 
-- 부서 이름이 전산팀 로우 ROW (레코드) 검색 = WHERE
SELECT *  FROM department
WHERE deptname = '전산팀';

--자료 수정( 부서번호가 20번인 로우의 부서이름을 변경 전산팀 -> 경영팀 )  UPDATE ~~~ SET 
UPDATE department SET deptname ='경영팀'
WHERE deptid = 20;

ROLLBACK;  --commit 

--자료 삭제 ( 부서 번호가 30번인 마케팅팀 삭제 )
DELETE  FROM department 
WHERE deptid = 30;

COMMIT;

