--1
create or replace 
procedure tech1
is
	Subnum int;
	Subname varchar2(30);
	meets_at varchar2(12); 
	room char(4); 
	Tid int;
	
	cursor c1 is 
		select Subnum, Subname, meets_at,room,Tid  from SUBJECT@site1 where Subnum=1 ;
		
	   

begin

	DBMS_OUTPUT.PUT_LINE('Tid'||' '||' Subname'||'  '||' Subnum '||' room '||'  meets_at');
	
	open c1;
	loop
		fetch c1 into Subnum, Subname, meets_at,room,Tid;
		exit when c1%notfound;
		DBMS_OUTPUT.PUT_LINE(Tid||' '|| Subname||'  '||Subnum ||'  ' ||room ||'  ' || meets_at);
	end loop;
	
end tech1;
/











