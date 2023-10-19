
use mydb;
-- news 테이블 생성
 CREATE TABLE news(
		aid			INT PRIMARY KEY AUTO_INCREMENT,
        title   	VARCHAR(100) NOT NULL,
        content	    TEXT NOT NULL,
        create_date	TIMESTAMP DEFAULT now(),
		img			VARCHAR(40)
 );
 
 
 INSERT INTO news(title , content , img) VALUES ('경제 뉴스', '주식이 떨어집니다..','car.jpg');
 INSERT INTO news(title , content , img) VALUES ('정치 뉴스', '이스라엘 vs 팔레스타인 ','war.jpg');
 INSERT INTO news(title , content , img) VALUES ('스포츠 뉴스', '한국 vs 베트남 ','soccer.jpg');
 
 select * from news;
 -- 등록 시간 순으로 정렬하시오 ( 최근 등록일 ㅣ위로 올라감 )
 select title, create_date
 from news
 order by create_date desc;
 
 -- 뉴스내용 중에 '이스라엘이 포함된 뉴스를 검색하시오'
 select *
 from news
 WHERE content LIKE '이스라엘%';
 
 -- 뉴스 기사의 총개수를 구하시오.
 SELECT count(*) 총개수
 FROM news ;
 
 COMMIT;
 
