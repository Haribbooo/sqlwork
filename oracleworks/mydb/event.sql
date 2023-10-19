-- event table ����
CREATE TABLE event(
    event_no     NUMBER PRIMARY KEY,
    event_name   VARCHAR2(50) NOT NULL,
    start_date   VARCHAR2(20) NOT NULL,
    end_date     VARCHAR2(20) NOT NULL
);

CREATE SEQUENCE seq_eno NOCACHE;

INSERT INTO event( event_no, event_name,start_date,end_date)
VALUES( seq_eno.NEXTVAL, '20% ���� ���� ����' , '2023-10-10','2023-11-20');
INSERT INTO event( event_no, event_name,start_date,end_date)
VALUES( seq_eno.NEXTVAL, '���콺 �е� ����' , '2023-11-15','2023-12-25');
INSERT INTO event( event_no, event_name,start_date,end_date)
VALUES( seq_eno.NEXTVAL, '���� ���� �佺Ƽ��' , '2023-12-10','2023-12-30');
COMMIT;
SELECT * FROM event;

--�̺�Ʈ �Ⱓ ���ȿ� ���並 �ۼ��� �� ����ǰ ���� ���.
--���� ���̺�� �̺�Ʈ ���̺��� ����
--�� �� �� 
--�񵿵�����( >= , <= , between and )
SELECT a.event_name,
       b.member_id,
       b.content,
       b.regdate
FROM event a, product_review b
WHERE b.regdate
  between a.start_date AND a.end_date;

--���� ���� (  inner join  on )
SELECT a.event_name,
       b.member_id,
       b.content,
       b.regdate
FROM event a  INNER JOIN product_review b
ON b.regdate >= a.start_date AND b.regdate <= a.end_date;

 -- between a.start_date AND a.end_date;  











