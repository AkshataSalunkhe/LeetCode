select team_id, team_name, sum(score) as num_points
from (
select team_id, team_name, 
case 
when host_goals > guest_goals then 3
when host_goals = guest_goals then  1
else 0
End as score
from teams t left join matches m on t.team_id=m.host_team

UNION ALL

select team_id, team_name, 
case 
when host_goals < guest_goals then 3
when host_goals = guest_goals then  1
else 0
End as score
from teams t left join matches m on t.team_id=m.guest_team) as p 
group by team_id
order by num_points DESC, team_id ASC