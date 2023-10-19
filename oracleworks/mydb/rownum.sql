--ROWNUM ( �ο� ��ȣ)
-- �� ���� �����ϰ� ���� �� ��� , SUDO  COLUME �̶���

CREATE TABLE ex_score(
    name VARCHAR2(20),
    score NUMBER(3)
);

INSERT INTO ex_score VALUES ('���ϴ�',94);
INSERT INTO ex_score VALUES ('���ϴ�',100);
INSERT INTO ex_score VALUES ('���ϴ�',97);
INSERT INTO ex_score VALUES ('���ϴ�',90);
INSERT INTO ex_score VALUES ('�����ϴ�',84);
INSERT INTO ex_score VALUES ('���ϴ�',54);
INSERT INTO ex_score VALUES ('�ϴ�',24);
INSERT INTO ex_score VALUES ('���ϴ�',74);
INSERT INTO ex_score VALUES ('���ϴ�',80);
INSERT INTO ex_score VALUES ('���ϴ�',66);

drop table ex_score;

--1~5����� ���� ��� 
select ROWNUM, name,score
FROM ex_score
WHERE ROWNUM <=5;

--1~5����� ���� ���  between
select ROWNUM, name,score
FROM ex_score
WHERE ROWNUM BETWEEN 1 AND 5;

--2~6�� ���� ������ ���� ��� / �ο���� 1���� �ؾߵȴ�. ��� x 
select ROWNUM, name,score
FROM ex_score
WHERE ROWNUM >=2 AND ROWNUM <=6;

--������ ���� ������ ������������ 
select ROWNUM, name,score
FROM ex_score
ORDER BY score DESC;

--������ ���� ������ 5���� �˻��Ͻÿ�
select name,score
FROM ex_score
WHERE ROWNUM <=5
ORDER BY score DESC;

--������ ������������ ���� �� 5���� �˻� 
SELECT name, score
FROM ( 
SELECT name, score
  FROM ex_score 
ORDER BY score DESC
)
WHERE ROWNUM <= 5;

--��������
SELECT name,
       score, 
    RANK()OVER(ORDER BY score DESC) AS rank1,
    DENSE_RANK()OVER(ORDER BY score DESC) AS rank2
FROM ex_score;


commit;