select employee_id 
from (
select * 
from employees 
union all
select *
from salaries ) as p 
where employee_id  not in (
select e.employee_id
from employees e cross join salaries s on e.employee_id =s.employee_id )
order by employee_id