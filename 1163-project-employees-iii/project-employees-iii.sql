SELECT p.project_id, e.employee_id
from project as p
inner join employee as e on e.employee_id = p.employee_id
where (p.project_id, e.experience_years) in
(SELECT p.project_id, max(e.experience_years)
from project as p
inner join employee as e on e.employee_id = p.employee_id
group by project_id)