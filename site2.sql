
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
  FOREIGN KEY(Subnum) REFERENCES Subject (Subnum)
);

CREATE TABLE FEES(
  snum int,
  months varchar2(12),
  money int,
  FOREIGN KEY(snum) REFERENCES Student (snum)
);


CREATE TABLE STU_AUDIT(
	nname varchar2(20),
	oname varchar2(20),
	uname varchar2(20),
	action varchar2(20));


insert into student (snum, sname, dept, sclass, age) values (16, 'Abid Abdullah', 'ARTS', '4', 20); 
insert into student (snum, sname, dept, sclass) values (17, 'Abdullah Hafiz', 'ARTS', '5'); 
insert into student (snum, sname, dept, sclass, age) values (18, 'Rahmatullah Hafiz', 'ARTS', '6', 21); 
insert into student (snum, sname, dept, sclass, age) values (21, 'Sajid Abdullah', 'COMMERCE', '7', 19); 
insert into student (snum, sname, dept, sclass, age) values (22, 'Abdullah Karim', 'COMMERCE', '8', 21); 
insert into student (snum, sname, dept, sclass, age) values (23, 'Sajid Rahmatullah', 'COMMERCE', '9', 22); 
insert into student (snum, sname, dept, sclass) values (24, 'Abid Barkatullah', 'COMMERCE', '10'); 
insert into student (snum, sname, dept, sclass, age) values (25, 'Barkatullah Shahid', 'COMMERCE', '10', 19); 
insert into student (snum, sname, dept, sclass, age) values (26, 'Abid Abdullah', 'COMMERCE', '8', 23); 
insert into student (snum, sname, dept, sclass, age) values (27, 'Abdullah Hafiz', 'COMMERCE', '10', 21); 
insert into student (snum, sname, dept, sclass, age) values (28, 'Rahmatullah Hafiz', 'COMMERCE', '10', 24); 
 
insert into TEACHER values(5, 'Abdul', 1); 
insert into TEACHER values(6, 'Rahmat', 1); 
insert into TEACHER values(7, 'Sharif', 2); 
insert into TEACHER values(8, 'Zoolam', 3);  


insert into SUBJECT values(9, 'Bangla', '10:00am', 'R128', 5); 
insert into SUBJECT values(10, 'Bangla 2nd', '10:00am', 'R127', 6); 
insert into SUBJECT values(11, 'English 2nd', '11:00am', 'R128', 6); 
insert into SUBJECT values(12, 'Heigher math', '10:00am', 'R126', 7); 
insert into SUBJECT values(13, 'Economics', '10:00am', 'R128', 8); 
insert into SUBJECT values(14, 'Accounting', '10:00am', 'R128', 7); 
insert into SUBJECT values(15, 'Law', '10:00am', 'R128', 6); 
insert into SUBJECT values(16, 'IPE', '10:00am', 'R128', 5); 
 
 
insert into enrolled values(16,9); 
insert into enrolled values(21,9); 
insert into enrolled values(22,9); 
insert into enrolled values(23,10); 
insert into enrolled values(24,10); 
insert into enrolled values(25,10); 
insert into enrolled values(26,11); 
insert into enrolled values(27,11); 
insert into enrolled values(28,11); 
insert into enrolled values(16,12); 


insert into enrolled values(21,12); 
insert into enrolled values(22,12); 
insert into enrolled values(23,13); 
insert into enrolled values(24,13); 
insert into enrolled values(25,13); 
insert into enrolled values(26,14); 
insert into enrolled values(27,14); 
insert into enrolled values(28,14);
 
insert into enrolled values(16,15); 
insert into enrolled values(21,15); 
insert into enrolled values(22,15); 
insert into enrolled values(23,16); 
insert into enrolled values(24,16); 
insert into enrolled values(25,16); 
insert into enrolled values(26,9); 
insert into enrolled values(27,10); 
insert into enrolled values(28,11);


insert into MARKS values (16, 9, 49);
insert into MARKS values (17, 9, 100);
insert into MARKS values (18, 9, 49);
insert into MARKS values (21, 9, 100);
insert into MARKS values (22, 9, 49);
insert into MARKS values (23, 9, 100);
insert into MARKS values (24, 9, 49);
insert into MARKS values (25, 9, 100);
insert into MARKS values (26, 9, 49);
insert into MARKS values (27, 9, 100);
insert into MARKS values (28, 9, 49);
insert into MARKS values (16, 10, 99);
insert into MARKS values (17, 10, 55);
insert into MARKS values (18, 10, 66);
insert into MARKS values (21, 10, 78);
insert into MARKS values (22, 10, 80);
insert into MARKS values (23, 10, 88);
insert into MARKS values (24, 11, 99);
insert into MARKS values (25, 11, 77);
insert into MARKS values (26, 12, 45);
insert into MARKS values (27, 12, 41);
insert into MARKS values (28, 13, 10);
insert into MARKS values (16, 14, 99);
insert into MARKS values (17, 16, 55);
insert into MARKS values (18, 15, 66);
insert into MARKS values (21, 14, 78);
insert into MARKS values (22, 16, 80);
insert into MARKS values (23, 15, 88);
insert into MARKS values (24, 13, 99);
insert into MARKS values (25, 12, 77);
insert into MARKS values (26, 11, 45);
insert into MARKS values (27, 10, 41);
insert into MARKS values (28, 10, 10);



insert into fees (snum, months, money) values (16, 'january', null);
insert into fees (snum, months, money) values (17, 'january', 1000);
insert into fees (snum, months, money) values (18, 'january', 1000);
insert into fees (snum, months, money) values (21, 'january', 1000);
insert into fees (snum, months, money) values (22, 'january', 1000);
insert into fees (snum, months, money) values (23, 'january', 1000);
insert into fees (snum, months, money) values (24, 'january', 1000);
insert into fees (snum, months, money) values (25, 'january', 1000);
insert into fees (snum, months, money) values (26, 'january', 1000);
insert into fees (snum, months, money) values (27, 'january', 1000);
insert into fees (snum, months, money) values (28, 'january', 1000);
insert into fees (snum, months, money) values (16, 'February', null);
insert into fees (snum, months, money) values (17, 'February', 1000);
insert into fees (snum, months, money) values (18, 'February', 1000);
insert into fees (snum, months, money) values (21, 'February', 1000);
insert into fees (snum, months, money) values (22, 'February', 1000);
insert into fees (snum, months, money) values (23, 'February', 1000);
insert into fees (snum, months, money) values (24, 'February', 1000);
insert into fees (snum, months, money) values (25, 'February', null);
insert into fees (snum, months, money) values (26, 'February', null);
insert into fees (snum, months, money) values (27, 'February', 1000);
insert into fees (snum, months, money) values (28, 'February', 1000);


commit;
