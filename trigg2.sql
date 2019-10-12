set serveroutput on;

create or replace trigger s_audit
BEFORE INSERT OR DELETE OR UPDATE ON STUDENT@site1
FOR EACH ROW

DECLARE
	a_user varchar2(50);
	a_date varchar2(50);
BEGIN
SELECT user , TO_CHAR(sysdate,'DD/MON/YYYY HH24:MI:SS') into a_user, a_date from dual;
IF INSERT  THEN 
	INSERT INTO STU_AUDIT@site1(nname, oname,uname, entry_date, action)
	values(:NEW.sname,NUll,a_user,a_date,'INSERT');
ELSIF UPDATE  then
	INSERT INTO STU_AUDIT@site1(nname, oname,uname, entry_date, action)
	values(:New.sname, :old.sname,a_user,a_date,'Update');
ELSIF DELETE  then
	INSERT INTO STU_AUDIT@site1(nname, oname,uname, entry_date, action)
	values(NULL, :OLD.sname,a_user,a_date,'Delete');

END IF;
END;
/


----

insert into student@site1 values (9, 'Rahmat', 'SCIENCE', '7', 11); 


----
select * from STU_AUDIT@site1;
