set serveroutput on;

CREATE OR REPLACE TRIGGER S_FEES
BEFORE UPDATE ON FEES@site1
BEFORE UPDATE ON FEES

FOR EACH ROW 
DECLARE
	f_fees varchar2(20);
BEGIN
 dbms_output.put_line('New FEES: ' || :NEW.money);
END;
/
------------------



UPDATE FEES@site1
SET money = 1000 WHERE snum = 1 and months = 'january' ;


UPDATE FEES
SET money = 1000 WHERE snum = 26 and months = 'February' ;

-----------------
commit;