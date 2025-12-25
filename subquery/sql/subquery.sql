-- filter sudent with higher score than average score
SELECT * from staging.students
WHERE grade_math >
(select avg(grade_math)
from staging.students)
ORDER BY grade_math

select avg(grade_math)
from staging.students

/* ===================
   Multi-row subquery 
   =================== */
   -- the subquery returns mutiple rows
   -- often used with IN operator
   -- filter students in classes taught by Anna S.
   --“Show me all students who are in classes taught by the teacher named Anna S.”

select  * from 
staging.students
WHERE class_name 
IN 
(select class_name
from staging.teachers
where teacher_name = 'Anna S.')

Correlated subquery 
=================== */
-- the subquery depends on column values of the outer query
-- the subquery is execuated per row of the outer query
-- filter students obtaining math grade higher than the average of their own classes
select
   *
from
   staging.students s
where
   s.grade_math > (
      select
         avg(grade_math)
      from
         staging.students
      where
         class_name = s.class_name
   ) -- subquery in ()
order by
   s.class_name;

   -- check the resutls of the above by looking at the avg grade per class
select
   class_name,
   avg(grade_math) as class_avg_grade
FROM
   staging.students
group by
   class_name;