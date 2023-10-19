
select * from department;
select * from employee;

-- 삽입 오류 : 부서 테이블에 아이디가 30이 없어서 오류 발생함
insert employee values (106, '양신입', 25, null, 30);

-- 급여가 400만 원 이상이며, 부서 번호가 10인 사원 출력
select *
from employee
where sal >= 4000000 and deptid = 10;

-- 급여가 많은 순으로 정렬
select *
from employee
order by sal desc;

-- 모든 사원 인원수 출력
select count(*) 사원수
from employee;

-- 모든 사원 인원수, 급여 총액, 급여 평균 출력
select count(*) 사원수,
      sum(sal) 급여총액,
      round(avg(sal), 0) 급여평균
from employee;

-- 부서별 및 부서명별 급여 총액, 평균 출력
select d.deptid,
      d.deptname,
      sum(e.sal) 급여총액,
       round(avg(e.sal), -2) 급여평균
from department d join employee e
    on d.deptid = d.deptid
group by deptid, deptname with rollup;

-- 최고 및 최저 급여의 사원 정보 출력
select *
from employee
where sal = (select max(sal) from employee)
   or sal = (select min(sal) from employee);
    
-- '백두산' 급여 4,300,000원으로 변경
update employee set sal = 4300000
where empid = 102;
select * from employee;

-- 모든사원의 급여 순위 출력
SELECT *,
    RANK()OVER(ORDER BY sal DESC) AS rank1
FROM employee;





