
create or replace function func1(r1 out number,r2 out number)
	return number
	is

v number;
S1 number;
S2 number;

begin

	select count(snum) into S1 from fees@site1 where money is null;
	select count(snum) into S2 from fees where money is null;
	
	r1:=S1;
	r2:=S2;
	
	v:=S1+S2;
	return r1;

end func1;
/
