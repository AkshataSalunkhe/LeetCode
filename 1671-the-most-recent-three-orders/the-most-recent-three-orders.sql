with cte as
(select c.name, c.customer_id, order_id, order_date, Rank() over(partition by c.customer_id order by order_date DESC) as Rank_No
from Customers c join orders o on o.customer_id=c.customer_id
order by name ASC, c.customer_id ASC , order_date DESC
)

select c.name customer_name , c.customer_id, order_id, order_date
from cte c
where Rank_No<=3