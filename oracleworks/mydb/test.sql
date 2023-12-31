-- 실 습 문 제 --

-- 1.모든 고객의 이름과 주소를 검색하시오

SELECT name,address FROM customer;

--2. 모든 고객의 이름 , 주소 ,전화번호를 검색하시오
SELECT name,address,phone FROM customer;

--3. 주소가 '영국' 인 고객을 검색하시오
SELECT * FROM customer
WHERE address LIKE '%유나이티드%';

--4. 고객의 이름이 '김연아' 혹은 ' 안산' 인 고객을 검색하시오 
SELECT * FROM customer
WHERE name = '김연아' or name='안산';
--  WHKERE NAME IN( '김연아' , '안산');

---5. 주소가 '대한민국이' 아닌 고객을 검색하시오
SELECT * FROM customer
WHERE address NOT LIKE '서울';

--6. 전화번호가 없는 고객을 검색하시오
SELECT * FROM customer
WHERE phone is NULL;
--있는 고객은
--WHERE phone is NOT NULL;

--7. 고객을 이름순으로 정렬하시오 
SELECT * FROM customer
ORDER BY name ;

--8. 고객의 총 인원수를 구하시오
SELECT COUNT(*) As 총인원수
FROM customer;
