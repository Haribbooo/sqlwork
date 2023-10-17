CREATE TABLE summer_class(
        sid NUMBER,
        subject VARCHAR2(20),
        price NUMBER
);            

INSERT INTO summer_class VALUES ( 100,'C',30000);
INSERT INTO summer_class VALUES ( 101,'Java',45000);
INSERT INTO summer_class VALUES ( 200,'Python',40000);
INSERT INTO summer_class VALUES ( 201,'Java',45000);

SELECT * FROM summer_class;

