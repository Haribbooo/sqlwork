--새로운 사용자 user 생성
CREATE USER c##mydb IDENTIFIED BY pwmydb;
--세션( 저장을 유지) 를 생성할 권한 부여
GRANT CREATE SESSION TO c##mydb;
--테이블,  자원 (resource) 생성할 권한 부여
GRANT CREATE TABLE , RESOURCE TO c##mydb;
--DB 에 접속 할 권한 부여
GRANT CONNECT ,DBA TO c##mydb;