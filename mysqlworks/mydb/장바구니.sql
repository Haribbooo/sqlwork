-- 먼저 db를 선택함alter
use mydb;

create table 장바구니(
	아이템 varchar(20),
    가격 int 
);

insert into 장바구니 values ('두부', 2000);
insert into 장바구니 values ('김치', 5000);
insert into 장바구니 values ('비비고만두', 8000);
insert into 장바구니 values ('대파', 2300);

select * from 장바구니;

-- 가격별로 정렬하기 

select *
from 장바구니
where 가격;

-- 아이템의 총 개수, 가격의 평군 구하기
select count(*) 상품수,
	   max(가격) 최고가격,
       min(가격) 최소가격
from 장바구니;

-- 콩나물 가격 검색
select 가격 from 장바구니 where 아이템 = '김치';
    