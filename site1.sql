
DROP TABLE STUDENT CASCADE CONSTRAINTS;
DROP TABLE TEACHER CASCADE CONSTRAINTS;
DROP TABLE SUBJECT CASCADE CONSTRAINTS;
DROP TABLE ENROLLED CASCADE CONSTRAINTS;
DROP TABLE MARKS CASCADE CONSTRAINTS;
DROP TABLE FEES CASCADE CONSTRAINTS;
DROP TABLE STU_AUDIT CASCADE CONSTRAINTS;


CREATE TABLE STUDENT (
	snum int, 
	sname varchar2(30), 
	dept char(10), 
	sclass char(5), 
	age int,
    PRIMARY KEY(snum)); 
		
		
		
CREATE TABLE TEACHER(
	Tid int, 
	fName varchar2(30), 
	deptid int,
	PRIMARY KEY(Tid));
	
	

CREATE TABLE SUBJECT (
	Subnum int, 
	Subname varchar2(30), 
	meets_at varchar2(12), 
	room char(4), 
	Tid int,
	PRIMARY KEY(Subnum),
	FOREIGN KEY(Tid) REFERENCES TEACHER(Tid));

	
	
	
CREATE TABLE ENROLLED(
	snum int, 
	Subnum int,
	FOREIGN KEY(snum) REFERENCES STUDENT(snum),
	FOREIGN KEY(Subnum) REFERENCES SUBJECT(Subnum));
	
	
	
CREATE TABLE MARKS(
  snum int,
  Subnum int,
  MARKS int,
  FOREIGN KEY(snum) REFERENCES Student (snum),
  FOREIGN KEY(Subnum) REFERENCES Subject (Subnum));
  
  
  
 
CREATE TABLE FEES(
  snum int,
  months varchar2(12),
  money int,
  FOREIGN KEY(snum) REFERENCES Student (snum));
  
  
  
CREATE TABLE STU_AUDIT(
	nname varchar2(20),
	oname varchar2(20),
	uname varchar2(20),
	action varchar2(20));

insert into STUDENT (snum, sname, dept, sclass, age) values (1, 'Sajid Abdullah', 'SCIENCE', '1', 19); 
insert into STUDENT (snum, sname, dept, sclass, age) values (2, 'Abdullah Karim', 'SCIENCE', '2', 19); 
insert into STUDENT (snum, sname, dept, sclass, age) values (3, 'Sajid Rahmatullah', 'SCIENCE', '3', 20); 
insert into STUDENT (snum, sname, dept, sclass, age) values (4, 'Abid Barkatullah', 'SCIENCE', '4', 22); 
insert into STUDENT (snum, sname, dept, sclass, age) values (5, 'Barkatullah Shahid', 'SCIENCE', '5', 19); 
insert into STUDENT (snum, sname, dept, sclass, age) values (6, 'Abid Abdullah', 'SCIENCE', '6', 20); 
insert into STUDENT (snum, sname, dept, sclass, age) values (7, 'Abdullah Hafiz', 'SCIENCE', '7', 21); 
insert into STUDENT (snum, sname, dept, sclass, age) values (8, 'Rahmatullah Hafiz', 'SCIENCE', '8', 21); 
insert into STUDENT (snum, sname, dept, sclass, age) values (11, 'Sajid Abdullah', 'ARTS', '9', 19); 
insert into STUDENT (snum, sname, dept, sclass, age) values (12, 'Abdullah Karim', 'ARTS', '10', 20); 
insert into STUDENT (snum, sname, dept, sclass, age) values (13, 'Sajid Rahmatullah', 'ARTS', '1', 20); 
insert into STUDENT (snum, sname, dept, sclass, age) values (14, 'Abid Barkatullah', 'ARTS', '2', 22); 
insert into STUDENT (snum, sname, dept, sclass, age) values (15, 'Barkatullah Shahid', 'ARTS', '3', 19);



insert into TEACHER values(1, 'Abdullah', 1); 
insert into TEACHER values(2, 'Rahmatullah', 1); 
insert into TEACHER values(3, 'Shariful Islam', 2); 
insert into TEACHER values(4, 'Zobair', 3);   



insert into SUBJECT values(1, 'English', '10:00am', 'R128', 1); 
insert into SUBJECT values(2, 'Database', '10:00am', 'R127', 2); 
insert into SUBJECT values(3, 'Math', '11:00am', 'R128', 2); 
insert into SUBJECT values(4, 'Physics', '10:00am', 'R126', 3); 
insert into SUBJECT values(5, 'Chemistry', '10:00am', 'R128', 3); 
insert into SUBJECT values(6, 'Biology', '10:00am', 'R128', 3); 
insert into SUBJECT values(7, 'Social Science', '10:00am', 'R128', 1); 
insert into SUBJECT values(8, 'Computer', '10:00am', 'R128', 4); 



insert into enrolled values(1,1); 
insert into enrolled values(2,1); 
insert into enrolled values(3,1); 
insert into enrolled values(4,1); 
insert into enrolled values(5,1); 
insert into enrolled values(7,1); 
insert into enrolled values(8,1); 
insert into enrolled values(11,1); 
insert into enrolled values(12,1); 
insert into enrolled values(13,1); 
insert into enrolled values(14,1); 
insert into enrolled values(15,1); 
insert into enrolled values(1,2); 
insert into enrolled values(2,1); 
insert into enrolled values(3,3); 
insert into enrolled values(4,1); 
insert into enrolled values(5,4); 
insert into enrolled values(7,1); 
insert into enrolled values(8,5); 
insert into enrolled values(11,6); 
insert into enrolled values(12,1); 
insert into enrolled values(13,7); 
insert into enrolled values(14,8); 
insert into enrolled values(15,3); 
insert into enrolled values(1,8); 
insert into enrolled values(2,4); 
insert into enrolled values(3,1); 
insert into enrolled values(4,7); 
insert into enrolled values(5,3); 
insert into enrolled values(7,1); 
insert into enrolled values(8,2); 
insert into enrolled values(11,4); 
insert into enrolled values(12,1); 
insert into enrolled values(13,2); 
insert into enrolled values(14,7); 
insert into enrolled values(15,1); 





insert into MARKS values (1, 1, 100);
insert into MARKS values (2, 1, 49);
insert into MARKS values (3, 1, 78);
insert into MARKS values (4, 1, 81);
insert into MARKS values (5, 1, 93);
insert into MARKS values (6, 1, 88);
insert into MARKS values (7, 1, 87);
insert into MARKS values (8, 1, 76);
insert into MARKS values (11, 1, 100);
insert into MARKS values (12, 1, 49);
insert into MARKS values (13, 1, 100);
insert into MARKS values (14, 2, 49);
insert into MARKS values (15, 2, 100);
insert into MARKS values (1, 2, 100);
insert into MARKS values (2, 2, 49);
insert into MARKS values (3, 2, 78);
insert into MARKS values (4, 2, 81);
insert into MARKS values (5, 2, 93);
insert into MARKS values (6, 2, 88);
insert into MARKS values (7, 2, 87);
insert into MARKS values (8, 2, 76);
insert into MARKS values (11, 2, 66);
insert into MARKS values (12, 2, 55);
insert into MARKS values (13, 2, 40);
insert into MARKS values (14, 2, 49);
insert into MARKS values (15, 3, 90);
insert into MARKS values (1, 5, 100);
insert into MARKS values (2, 6, 49);
insert into MARKS values (3, 7, 78);
insert into MARKS values (4, 8, 81);
insert into MARKS values (5, 5, 93);
insert into MARKS values (6, 6, 88);
insert into MARKS values (7, 7, 87);
insert into MARKS values (8, 8, 76);
insert into MARKS values (11, 7, 66);
insert into MARKS values (12, 8, 55);
insert into MARKS values (13, 5, 40);
insert into MARKS values (14, 6, 49);
insert into MARKS values (15, 7, 90);



insert into fees (snum, months, money) values (1, 'january', null);
insert into fees (snum, months, money) values (2, 'january', 1000);
insert into fees (snum, months, money) values (3, 'january', null);
insert into fees (snum, months, money) values (4, 'january', 1000);
insert into fees (snum, months, money) values (5, 'january', 1000);
insert into fees (snum, months, money) values (6, 'january', 1000);
insert into fees (snum, months, money) values (7, 'january', 1000);
insert into fees (snum, months, money) values (8, 'january', 1000);
insert into fees (snum, months, money) values (11, 'january', 1000);
insert into fees (snum, months, money) values (12, 'january', 1000);
insert into fees (snum, months, money) values (13, 'january', 1000);
insert into fees (snum, months, money) values (14, 'january', 1000);
insert into fees (snum, months, money) values (15, 'january', 1000);
insert into fees (snum, months, money) values (1, 'February', null);
insert into fees (snum, months, money) values (2, 'February', 1000);
insert into fees (snum, months, money) values (3, 'February', null);
insert into fees (snum, months, money) values (4, 'February', 1000);
insert into fees (snum, months, money) values (5, 'February', 1000);
insert into fees (snum, months, money) values (6, 'February', null);
insert into fees (snum, months, money) values (7, 'February', 1000);
insert into fees (snum, months, money) values (8, 'February', 1000);
insert into fees (snum, months, money) values (11, 'February', 1000);
insert into fees (snum, months, money) values (12, 'February', 1000);
insert into fees (snum, months, money) values (13, 'February', 1000);
insert into fees (snum, months, money) values (14, 'February', 1000);
insert into fees (snum, months, money) values (15, 'january', null);


commit;
 