CREATE DATABASE employee;
USE employee;
CREATE TABLE emp(EMPNO INT(4) PRIMARY KEY, ENAME CHAR(10), HIREDATE  DATE, SALARY INT(5),COMMISSION INT(5)); 
drop table emp;
INSERT INTO emp(EMPNO,ENAME,HIREDATE,SALARY) VALUES (101,'RAMESH','1980-01-17',5000),(102,'AJAY','1985-07-05',5000), 
(103,'RAVI','1981-08-12',1500),(104,'Nikesh','1983-03-03',3000), 
(105,'Ravi','1985-07-05',3000);
ALTER TABLE emp ADD column sal int ; 
ALTER TABLE emp DROP COLUMN sal; 
ALTER TABLE emp MODIFY ename VARCHAR(15); 
RENAME table emp to emp1; 
TRUNCATE TABLE emp1; 
DROP TABLE emp1; 
USE employee;
CREATE TABLE stud(sname varchar(20) PRIMARY KEY, rollno int NOT NULL, dob date  NOT NULL); 
SELECT * FROM stud; 
Create table student (regno int, mark int(3) constraint b check (mark >=0 and mark <=100));
 SELECT * from student; 
 Alter table student add constraint regno check (length(regno<=4)); 
 CREATE TABLE cust (custid int(6)  UNIQUE, name char(10)); 


