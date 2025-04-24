select customer_number
from 
(
select customer_number, count(order_number) as suma 
from Orders 
group by customer_number 
order by suma DESC
limit 1 ) as p