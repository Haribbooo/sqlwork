--���ǿ� ���� �Լ�:
--DECODE(Į����, ���� , ) 
--������ ( �����̸� m ���ڸ� f ) 
SELECT empname ����̸�,
       DECODE(gender, '����', 'M' ,'F') gender
FROM emp;

--���� ����( IF - Then �� ����)
/*
   case
        WHEN ����  THEN ���;
        WHEN ����2  THEN ���2;
        ELSE ���3
    END 
*/
SELECT empname �����ȣ,
       gender ����,
       case
          WHEN gender = '����' THEN 'M'
          ELSE 'F'
END gender
FROM emp;


