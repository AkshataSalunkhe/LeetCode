with cte as
(
    select * from Friendship
    union all 
    select user2_id, user1_id from Friendship
)

select distinct(page_id) as recommended_page 
from likes l join cte c on l.user_id=c.user2_id
where c.user1_id = 1 and page_id not in (select page_id from likes where user_id=1)