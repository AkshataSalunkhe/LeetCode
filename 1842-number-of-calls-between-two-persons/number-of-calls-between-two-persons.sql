select from_id person1 , to_id person2, count(duration) as call_count , sum(duration) as total_duration
from (
select * 
from calls 
Union all
select to_id, from_id, duration
from calls ) as p
where from_id<to_id
group by from_id, to_id