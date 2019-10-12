set serveroutput on; 

declare 

	

	tab number := &table_1_to_3;
	var number := &y; 
	id number;
	name varchar2(100);
	


begin 
    

	if tab = 1
	then
		
		
		dbms_output.put_line('student table');
		select snum,sname into id,name from student@site1 where snum=var;
		
		dbms_output.put_line('student id :'|| var);
	elsif  tab = 2
	then
	
		dbms_output.put_line('teacher table');
		
	   select Tid,fName into id,name from teacher@site1 where Tid=var;
		
		dbms_output.put_line('teacher id : '|| id || ' teacher name : ' || name);
	else 
	
		dbms_output.put_line('subject table');
		
		select subnum,subname into id,name from subject@site1 where subnum=var;
		
		dbms_output.put_line('subject number :'|| id || ' subject name : ' || name);
	
	end if;
	
	
exception 
       WHEN no_data_found THEN 
      dbms_output.put_line('No such id!');

	  if tab = 1
	  then
		
		insert into student@site1 (snum, sname, dept, sclass, age) values (var, 'Hafiz', 'COMMERCE', '3', 25); 
	 elsif  tab = 2
	 then
	   insert into TEACHER@site1 values(var, 'Zubin', 2);  
	 else 
	   insert into SUBJECT@site1 values(var, 'drawing', '8:00am', 'R133', 6);
	
	end if;
		  
end; 
/
	