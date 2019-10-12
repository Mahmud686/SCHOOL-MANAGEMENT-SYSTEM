--2

create or replace function func2(r1 out number,r2 out number)
 return number
	is

v number:=0;
S1 number:=0;
S2 number:=0;
begin


	select count(Subnum) into S1 from SUBJECT@site1 where Tid=1;
	select count(Subnum) into S2 from SUBJECT where Tid=4;
	
	r1:=S1;
	r2:=S2;
	
	v:=S1+S2;
	return v;

end func2;
/
