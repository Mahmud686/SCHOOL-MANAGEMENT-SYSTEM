 SET SERVEROUTPUT ON;

create or replace trigger trigger_sub
after update of meets_at
on SUBJECT
for each row 
begin
   
 
	dbms_output.put_line('meeting time changed');
    dbms_output.put_line('New time: ' || :NEW.meets_at);

end;
/
UPDATE SUBJECT@site1 set meets_at='8.30am' where Tid=1;


create or replace trigger trigger_st
after update of dept
on Student 
for each row 
begin
   
	dbms_output.put_line('student department updated');
	 dbms_output.put_line('old department: ' || :OLD.dept|| 'New department: ' || :NEW.dept);
	
	
   

end;
/

UPDATE student@site1 
SET dept ='ARTS' WHERE snum = 1  ;

create or replace trigger trigger_t
after insert 
on teacher 
for each row 
begin

	dbms_output.put_line('data inserted on teacher table');
end;
/

create or replace trigger trigger_s
after insert 
on student
for each row 
begin

	dbms_output.put_line('data inserted on student table');
end;
/
create or replace trigger trigger_su
after insert 
on subject 
for each row 
begin

	dbms_output.put_line('data inserted on subject table');
end;
/

