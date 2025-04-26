# Write your MySQL query statement below
select e.employee_id, team_size
from employee e join (select team_id, count(team_id) as team_size from employee group by team_id) as p on e.team_id=p.team_id 