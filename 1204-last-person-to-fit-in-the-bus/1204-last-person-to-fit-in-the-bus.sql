select person_name 
from (select person_name , turn, sum(weight)  over(order by turn) as weight from queue order by turn) as table1
where 1000 >= weight
order by turn DESC
limit 1
