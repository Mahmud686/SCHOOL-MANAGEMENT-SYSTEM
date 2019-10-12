set serveroutput on;
set verify off;

DECLARE
	sname varchar2(30):='&Sajid Abdullah';
BEGIN
	if sname='Sajid Abdullah' then
		tech2();
	end if;
END;
/