CREATE OR REPLACE PACKAGE pkg1 AS 

   PROCEDURE addStudent(
     s_snum   student.snum%type, 
     s_sname  student.sname%type, 
     s_dept  student.dept%type, 
     s_sclass student.sclass%type,  
     s_age  student.age%type); 
   

   PROCEDURE delStudent(s_snum  student.snum%TYPE); 
  
   PROCEDURE listStudent; 
  
END pkg1; 
/

CREATE OR REPLACE PACKAGE BODY pkg1 AS 
   PROCEDURE addStudent(s_snum  student.snum%type, 
      s_sname student.sname%type, 
      s_dept  student.dept%type, 
      s_sclass  student.sclass%type,  
      s_age   student.age%type) 
   IS 
   BEGIN 
      INSERT INTO student (snum,sname,dept,sclass,age) 
         VALUES(s_snum, s_sname, s_dept, s_sclass, s_age); 
   END addStudent; 
   
   PROCEDURE delStudent(s_snum student.snum%type) IS 
   BEGIN 
      DELETE FROM student 
      WHERE snum = s_snum; 
   END delStudent;  
   
   PROCEDURE listStudent IS 
   CURSOR s_student is 
    SELECT  sname FROM student; 
	TYPE s_list is TABLE OF student.sname%type; 
    sname_list s_list := s_list(); 
    counter integer :=0; 
   BEGIN 
      FOR n IN s_student LOOP 
      counter := counter +1; 
      sname_list.extend; 
      sname_list(counter) := n.sname; 
      dbms_output.put_line('STUDENT(' ||counter|| ')'||sname_list(counter)); 
      END LOOP; 
   END listStudent;
   
END pkg1; 
/

DECLARE 
   code student.snum%type:= 15; 
BEGIN 
   pkg1.addStudent(9, 'Rajnish', 'commerce','10', 19); 
   pkg1.addStudent(10, 'Subham', 'arts', '9', 18); 
   pkg1.listStudent; 
   pkg1.delStudent(code); 
   pkg1.listStudent; 
END; 
/