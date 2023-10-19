--product_review 테이블 생성
--CLOB ( charater large object) - 매우 큰 문자열 자료형 
CREATE TABLE product_review(
        review_no     NUMBER PRIMARY KEY,   --리뷰번호
        product_code  CHAR(6) NOT NULL,--상품코드
        member_id     VARCHAR2(20) NOT NULL,--멤버아이디
        content       CLOB NOT NULL,        --리뷰내용
        regdate       DATE DEFAULT SYSDATE,  --작성일
        FOREIGN KEY(product_code) REFERENCES product(product_code)
);
--자동 순번 ( nocache = 초기화하면 1부터 시작 )
CREATE SEQUENCE seq_rno NOCACHE;

INSERT INTO product_review(review_no ,product_code,member_id,content,regdate)
VALUES (seq_rno.NEXTVAL, '100001','today12',
       '무소음인데 소음이 있네요. 사지마세요',SYSDATE);
INSERT INTO product_review(review_no ,product_code,member_id,content,regdate)
VALUES (seq_rno.NEXTVAL, '100001','cloud100',
       '비싸기만하고 너무하네요',SYSDATE);
INSERT INTO product_review(review_no ,product_code,member_id,content)
VALUES (seq_rno.NEXTVAL, '100002','sky123',
       '키보드연결이 자주 끊킴 비추천.');
       
DROP SEQUENCE seq_rno;
COMMIT;

SELECT *FROM product_review;

-- 테이블은 유지하고 데이터를 전체 삭제
TRUNCATE TABLE product_review;

--상품 코드가 '100001' 이고 아이디가 cloud100인 상품의 정보를 출력하시오
SELECT *
FROM product_review
WHERE product_code = '100001' AND member_id= 'cloud100';

--상품 아이템 - 3개 ,리뷰 있는 아이템 - 2개
--리뷰가 있는 상품을 검색하시오 (동등 조건) 
--a테이블의 기본키 = b테이블의 외래키
SELECT *
FROM product a,  product_review b 
WHERE a.product_code = b.product_code;

--표준 방식 - 내부조인(INNER JOIN) 
SELECT *
FROM product a JOIN product_review b
 ON a.product_code = b.product_code;
 
--리뷰가 유무의 관계없이 상품의 정보 검색
--동등조인 방식( product) 의 상품은 모두 출력되고, 리뷰는 있든 없든 관계가 없음
SELECT *
FROM product a,  product_review b
 WHERE a.product_code = b.product_code(+);
 
 --표준방식 ( 외부조인 - OUTER JOIN) outer 생략 가능
 SELECT b.product_code,
        b.product_name,
        b.price,
        a.member_id,
        a.content,
        a.regdate
FROM product_review a  RIGHT JOIN product b
 ON a.product_code = b.product_code;
 
 SELECT *
FROM product a LEFT JOIN product_review b
 ON a.product_code = b.product_code;
 
 
 /* 실행 순서
 1.from 절 
 2.where 절 , drop by 절
 3.select 절
 4.order 절 
 */




