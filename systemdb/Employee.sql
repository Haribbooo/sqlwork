--사원 테이블 생성
CREATE TABLE employee(
    empid    NUMBER(3),
    empname  VARCHAR2(20) NOT NULL,
    age      NUMBER(3),
    deptid    NUMBER,
    PRIMARY KEY(empid),   --기본 키 
    FOREIGN KEY(deptid) REFERENCES department(deptid)
);

--사원 자리 추가
INSERT INTO employee(empid, empname, age, deptid)
VALUES (10,'최은호',29, 10);
INSERT INTO employee(empid, empname, age, deptid)
VALUES (102,'김희린',25, 30); --부서 코드가 없어서 제약
INSERT INTO employee(empid, empname, deptid)
VALUES (103,'함소연', 20);
INSERT INTO employee(empid, empname,age, deptid)
VALUES (104,'장희빈', 62,20);

--모든 사원 출력
SELECT * FROM employee;

--사원 이름과 나이 칼럼출력
SELECT empname,age FROM employee;

--사원 이름이 김희린인 데이터 검색
SELECT * FROM employee
WHERE empname = '김희린';

--나이가 30 이상 사원 검색
SELECT * FROM employee
WHERE age >= 30;

--부서 번호가 20 사원 검색
SELECT * FROM employee
WHERE deptid = 20;

--나이가 null인  사원 검색
SELECT * FROM employee
WHERE age is null;

COMMIT;

DROP TABLE employee;

