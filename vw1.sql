create or replace view  view1 as 
select t.Tid as ID,t.fName as name ,s.Subname as sub,s.meets_at as schedule 
from TEACHER@site1 t, SUBJECT@site1 s
where t.Tid = s.Tid;
select * from view1;











 