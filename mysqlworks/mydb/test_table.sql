-- mydb 생성
create database mydb;
use mydb;
create table test(
	no int,
    msg varchar(100)
	
);

insert into test values (1,'good day');
insert into test values (2,'gloomy day');

select * from test;
commit;