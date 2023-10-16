-- event table 생성
CREATE TABLE event(
    event_no     NUMBER PRIMARY KEY,
    event_name   VARCHAR2(50) NOT NULL,
    start_date   VARCHAR2(20) NOT NULL,
    end_date     VARCHAR2(20) NOT NULL
);

CREATE SEQUENCE seq_eno NOCACHE;

INSERT INTO event( event_no, event_name,start_date,end_date)
VALUES( seq_eno.NEXTVAL, '20% 할인 쿠폰 증정' , '2023-10-10','2023-11-20');
INSERT INTO event( event_no, event_name,start_date,end_date)
VALUES( seq_eno.NEXTVAL, '마우스 패드 증정' , '2023-11-15','2023-12-25');
INSERT INTO event( event_no, event_name,start_date,end_date)
VALUES( seq_eno.NEXTVAL, '벚꽃 축제 페스티벌' , '2023-12-10','2023-12-30');
COMMIT;
SELECT * FROM event;

--이벤트 기간 동안에 리뷰를 작성한 고객 사은품 증정 행사.
--리뷰 테이블과 이벤트 테이블을 조인
--일 대 다 
--비동등조인( >= , <= , between and )
SELECT a.event_name,
       b.member_id,
       b.content,
       b.regdate
FROM event a, product_review b
WHERE b.regdate
  between a.start_date AND a.end_date;

--내부 조인 (  inner join  on )
SELECT a.event_name,
       b.member_id,
       b.content,
       b.regdate
FROM event a  INNER JOIN product_review b
ON b.regdate >= a.start_date AND b.regdate <= a.end_date;

 -- between a.start_date AND a.end_date;  











