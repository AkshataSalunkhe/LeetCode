select p.product_name, p.product_id, order_id, order_date
from products p join orders o on p.product_id=o.product_id
and (p.product_id, o.order_date) in 
    (
    select distinct(product_id),max(order_date) over (partition by product_id )as order_date 
    from orders
    )
order by p.product_name ASC, p.product_id ASC, o.order_id ASC