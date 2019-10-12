set serveroutput on;
create or replace 
procedure th3
is
	w int;
	q varchar2(30); 
    v int;
	
	cursor HK is 
		select s.snum,s.sname,f.money
		from STUDENT@site2 s
	    join FEES f on s.Snum=f.snum ;
begin

	DBMS_OUTPUT.PUT_LINE('snum'||'  '||' sname '||'   '||' money');
	
	open HK;
	loop
		fetch HK into w,q,v;
		exit when HK%notfound;
		DBMS_OUTPUT.PUT_LINE(w||'    '||q||'    '||v);
	end loop;
	close HK;
end th3;
/