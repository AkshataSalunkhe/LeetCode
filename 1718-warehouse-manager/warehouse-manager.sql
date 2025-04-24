with P_vol as(
select product_id, width * length* height as volume 
from products)

select name as warehouse_name, sum(units * volume) as volume 
from warehouse w join P_vol as p on w.product_id = p.product_id
group by name 