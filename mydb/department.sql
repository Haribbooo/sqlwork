CREATE TABLE department(
    deptno     VARCHAR2(4) PRIMARY KEY,  --기본키
    deptname   VARCHAR2(20) NOT NULL, --null 불허
    office     VARCHAR2(20) 
);

INSERT INTO department VAlUES ('1000','인사팀','서울');
INSERT INTO department VAlUES ('1001','전산팀','인천');
INSERT INTO department VAlUES ('1002','전산팀','수원');
INSERT INTO department(deptno,deptname) VAlUES ('1003','영업팀');


COMMIT;

--employee
CREATE TABLE employee(
        empno      NUMBER(3) PRIMARY KEY,
        empname    VARCHAR2(20) NOT NULL,
        sal         NUMBER (10),
        createdate  DATE DEFAULT SYSDATE,
        deptno      VARCHAR2(4),
        FOREIGN KEY(deptno)REFERENCES department(deptno)
 
);

INSERT INTO  employee VALUES (100,'이강',2500000,SYSDATE,'1000');
INSERT INTO  employee VALUES (101,'곰신',2000000,SYSDATE,'1001');
INSERT INTO  employee VALUES (102,'박달',3000000,SYSDATE,'1002');
INSERT INTO  employee VALUES (103,'김태양',3500000,SYSDATE,'1000');
INSERT INTO  employee VALUES (104,'최우주',5000000,SYSDATE,'1001');
INSERT INTO  employee VALUES (105,'우영우',4000000,SYSDATE,'1002');


drop table department;
drop table employee;
SELECT * FROM department;
SELECT * FROM employee;

--1002 번 부서이름을 ' 총무팀으로 변ㄴ경하기
UPDATE department
SET deptname = '총무팀'
WHERE deptno ='1002';

--김태양의 급여를 3000000으로 변경
UPDATE employee
SET sal = '3000000'
WHERE empname ='김태양';


--부서별 급여 총액을 구하시오
SELECT deptno,SUM(sal) --급여 총액
FROM employee
GROUP BY deptno;

-- 부서이름과 부서별 급여 총액을 출력
--employee department 테이블 사용 (조인)
SELECT a.deptno,
       a.deptname,
       SUM(b.sal)
FROM department a , employee b
WHERE a.deptno = b.deptno
GROUP BY a.deptno,a.deptname;

--rollup ( )  group by절 에서 소계, 통ㄹ계를 만듦
SELECT a.deptno,   
       a.deptname,
       SUM(b.sal)
FROM department a , employee b
WHERE a.deptno = b.deptno
GROUP BY ROLLUP(a.deptno , a.deptname);

--CUBE(칼럼1, 칼럼2) - GROUP BY 절에서 모든 소계 ,총계를 입체적으로 만듦
SELECT a.deptno,      
       SUM(b.sal),
       a.deptname
FROM department a , employee b
WHERE a.deptno = b.deptno
GROUP BY CUBE(a.deptno, a.deptname)
ORDER BY a.deptno;

--SUM() ,SUM OVER (ORDER BY 칼럼명) 누적합계
SELECt empno,
       empname,
       sal,     
       SUM(sal) OVER(ORDER BY empno) "sal_sum"      
FROM employee;

--랭크 RANK( ) OVER (ORDER BY 칼럼명)  함수
SELECt empno,
       empname,
       sal,     
       RANK() OVER(ORDER BY sal DESC) "sal_rank",
       DENSE_RANK() OVER(ORDER BY sal DESC) 급여_rank2
FROM employee;