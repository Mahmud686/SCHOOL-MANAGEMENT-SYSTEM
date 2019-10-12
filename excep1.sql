DECLARE 
   t_id TEACHER.Tid%type; 
   t_name TEACHER.fName%type; 
   t_did TEACHER.deptid%type :=4;
   -- user defined exception 
   invalid_id  EXCEPTION; 
BEGIN 
    IF t_did > 3 THEN 
      RAISE invalid_id; 
    ELSE 
       SELECT  Tid,fName INTO  t_id, t_name
       FROM TEACHER@site1 
       WHERE deptid = t_did;
       DBMS_OUTPUT.PUT_LINE ('teacher id: '||  t_id); 
       DBMS_OUTPUT.PUT_LINE ('teacher name: ' || t_name);
    END IF; 

EXCEPTION 
    WHEN invalid_id THEN 
      dbms_output.put_line('ID must be less than three!'); 
    WHEN no_data_found THEN 
      dbms_output.put_line('No such entry!'); 
    WHEN others THEN 
      dbms_output.put_line('Error!');  
END; 
/














