with cte as 
(
select distinct student_id, student_name  
from Student 
where student_id in (select distinct(student_id) from Exam)
),
cte1 as 
(
    select 
    score,  
    exam_id,
    student_id, 
    min(score) over(partition by exam_id) as min_score, 
    max(score) over(partition by exam_id) as max_score
    from Exam
)

select student_id, student_name
from cte
where student_id not in (
select distinct cte.student_id
from cte join cte1 on cte.student_id=cte1.student_id
where score in (min_score, max_score)
order by exam_id)