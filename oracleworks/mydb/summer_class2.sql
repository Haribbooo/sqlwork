--수강료 테이블
CREATE TABLE summer_price(
    subject VARCHAR2(20) PRIMARY KEY,
    price   NUMBER
);

INSERT INTO summer_price VALUES('C',30000);
INSERT INTO summer_price VALUES('Java',45000);
INSERT INTO summer_price VALUES('Python',40000);

--여름학기 등록 테이블
CREATE TABLE summer_register(
   sid   NUMBER PRIMARY KEY,
   subject  VARCHAR2(20),
   FOREIGN KEY(subject) REFERENCES summer_price(subject)
);

INSERT INTO summer_register VALUES (100,'C');
INSERT INTO summer_register VALUES(101,'Java');
INSERT INTO summer_register VALUES(200,'Python');
INSERT INTO summer_register VALUES(201,'Java');



COMMIT;
--삭제 이상 없음
--200번 학생의 수강 신청 취소
DELETE FROM summer_register
WHERE sid = 200;

--python 과목 수강료 검색
SELECT price,subject
FROM summer_price
WHERE subject = 'Python';

--수강료 테이블에 'C++' 좡좌를 35000으로 삽입
INSERT INTO summer_price VALUES('C++',35000);

--수강 신청 정보 확인하기

--java 수강룔를 45000 에서 40000으로 변경하기
UPDATE  summer_price
SET  price = 40000
WHERE subject ='Java';

--수강료가 가장 싼 과목은
SELECT MIN(price) FROM summer_price;
--메인쿼리(서브쿼리)
SELECT subject,price
FROM summer_price
WHERE price = (SELECT MIN(price) FROM summer_price);

SELECT * FROM summer_register;
SELECT * FROM summer_price;

drop table summer_price;
drop table summer_register;

