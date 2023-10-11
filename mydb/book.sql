-- bookmall 구축
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

--가격이 5만원 이하인 도서를 검색하세요 + 오름차순 정ㄹ렬

SELECT* FROM book
WHERE price < 50000
ORDER BY price ;

-- 만원 이상 오만원 이하
SELECT* FROM book
WHERE price < 50000 AND price >= 10000;

SELECT* FROM book
WHERE price BETWEEN 20000 AND  70000;





COMMIT;