with cte as 
(select customer_id,month(order_date) as mon, sum(quantity*price) as amount
from orders o join product p on p.product_id=o.product_id
where year(order_date) = 2020
group by customer_id, month(order_date)
)

select c.customer_id , name 
from Customers as c 
where c.customer_id in (select customer_id from cte where c.customer_id = customer_id and mon = 6 and amount>=100) and c.customer_id in (select customer_id from cte where c.customer_id = customer_id and mon = 7 and amount>=100)