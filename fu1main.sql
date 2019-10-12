set serveroutput on;

DECLARE
	r1 number:=0;
	r2 number:=0;
	s number:=0;
BEGIN
	s:=func1(r1,r2);
	DBMS_OUTPUT.PUT_LINE('Site1    Site2       Total');
	DBMS_OUTPUT.PUT_LINE(r1||'    '||r2||'    '||s);
	
END;
/