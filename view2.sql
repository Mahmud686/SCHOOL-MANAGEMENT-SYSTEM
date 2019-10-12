

create or replace view  mark_view as 
select s.snum as ID,s.sname as Name ,m.Subnum as subjectID ,m.marks as Marks
from STUDENT@site1 s, MARKS@site1 m
where s.snum= m.snum;
select * from mark_view;



