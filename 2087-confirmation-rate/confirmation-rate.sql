select signups.user_id, round(Sum(case when confirmations.action = 'confirmed' then 1 ELSE 0 END)/ count(signups.user_id) , 2) as confirmation_rate  
from signups left join confirmations on signups.user_id = confirmations.user_id
group by user_id