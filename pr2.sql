--2
create or replace 
procedure tech2
is
	snum int; 
	sname varchar2(30);
	Subnum int;
	
	cursor c2 is 
		(select s.snum,s.sname,e.Subnum
		from STUDENT@site1 s
	      join ENROLLED e on s.snum=e.snum where s.sname='Abid Barkatullah');
begin

	DBMS_OUTPUT.PUT_LINE('snum'||' '||'  'sname'||'  '||' 'Subnum');
	
	open c2;
	loop
		fetch c2 into snum , Subnum ,sname;
		exit when c2%notfound;
		DBMS_OUTPUT.PUT_LINE(Tid||'             '||Subnum||'      '||fname|| );
	end loop;
	
end tech2;
/