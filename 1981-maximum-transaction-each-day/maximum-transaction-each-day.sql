with cte as 
(
    select date(day) order_date, max(amount) over(partition by date(day)) as Max_amount
    from Transactions 
)
select distinct(transaction_id) 
from transactions t, cte c
where amount =max_amount and order_date= date(day)
order by transaction_id 


