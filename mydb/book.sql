--bookmall 구축
--book 테이블 생성
CREATE TABLE book(
    bookid      NUMBER PRIMARY KEY,
    bookname    VARCHAR2(60) NOT NULL,
    publisher   VARCHAR2(60) NOT NULL,
    price       NUMBER NOT NULL      
);

--도서 자료 추가 
INSERT INTO book VALUES (1, '코스모스' , '우주를 보다', 60000);
INSERT INTO book VALUES (2, '총 균 쇠' , '역사사', 65000);
INSERT INTO book VALUES (3, '해리포터' , '은호미디어', 90000);
INSERT INTO book VALUES (4, '누가 내머리위에 똥 쌌어?!' , '함평출판', 20000);
INSERT INTO book VALUES (5, '연탄길 ' , '길을보다', 60000);
INSERT INTO book VALUES (6, '토지' , '박경림', 100000);
INSERT INTO book VALUES (7, '무인도에서 살아남기' , '굿스포츠', 5000);
INSERT INTO book VALUES (8, '해리포터 불의잔' , '은호미디어', 90000);
INSERT INTO book VALUES (9, '어린왕자' , '생택쥐베리', 27000);
INSERT INTO book VALUES (10, '빨간마스크 ' , '마스크를 보다', 32340);

SELECT * FROM book;

--모든 도서의 이름과 가격을 검색하세요
SELECT bookid,bookname,price FROM book;

-- 도서 테이블에 있는 모든 출판사를 검색하시오 (DISTINCT = 중복된거 제외함)
SELECT DISTINCT publisher FROM book;

--출판사가 "은호미디어" 또는 "우주를 보다" 도서를 검색하시오
SELECT * FROM book
WHERE publisher = '은호미디어' OR publisher = '우주를 보다';

--출판사가 "은호미디어" 또는 "우주를 보다" 도서를 검색하시오
--IN() 함수 사용 <-> NOT IN (): 제외한 모든
SELECT * FROM book
WHERE publisher NOT IN('은호미디어','우주를 보다');

--가격이 5만원 이하인 도서를 검색하세요 + 오름차순 정ㄹ렬
SELECT* FROM book
WHERE price < 50000
ORDER BY price ;

--가격이 20000원인 도서를 검색
SELECT* FROM book
WHERE price = 20000 ;

-- 20000원 아닌 도서 검색
SELECT* FROM book
WHERE price <> 100000 ;

-- 20000원 아닌 도서 검색
SELECT* FROM book
WHERE price != 100000 ;


-- 만원 이상 오만원 이하
SELECT* FROM book
WHERE price < 50000 AND price >= 10000;

SELECT* FROM book
WHERE price BETWEEN 20000 AND  70000;

--빨간마스크를 출간한 ㅊ풀판사를 ㄱ검색
SELECT publisher FROM book
WHERE bookname = '빨간마스크 ';

SELECT publisher FROM book
WHERE bookname LIKE'빨간마스크 ';

--도서이름이 ' 해리 ' 가 포함된 출판사를 검색
SELECT bookname, publisher FROM book
WHERE bookname LIKE '%해리%';

--도서이름이 ' 해리 ' 가 포함x 출판사를 검색
SELECT bookname, publisher FROM book
WHERE bookname NOT LIKE '%해리%';


--해리에 관한 도서중 가격이 2000만원 이상인 도서를 검색 하시오
SELECT bookname, publisher FROM book
WHERE bookname LIKE '%해리%' AND price >=20000;

--정렬 
--도서를 이름순으로 정렬하시오
SELECT * FROM book
ORDER BY bookname;

--도서를 가격순 정렬하시오
--가격이 같으면 이름을 내림차순으로 정렬 
SELECT * FROM book
ORDER BY price ASC
, bookname DESC;

COMMIT;