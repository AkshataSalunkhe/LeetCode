# Write your MySQL query statement below
select product_name, sum(unit) as unit
from products join orders on products.product_id = orders.product_id
WHERE (order_date between '2020-02-01' and '2020-02-29')
group by orders.product_id
having sum(unit)>=100