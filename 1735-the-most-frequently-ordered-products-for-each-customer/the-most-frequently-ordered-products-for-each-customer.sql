
SELECT customer_id,product_id,product_name
FROM (
SELECT customer_id,products.product_id,product_name
    ,RANK() OVER(PARTITION BY customer_id ORDER BY COUNT(*) desc) as rank_count 

from Orders
JOIN Products on Products.product_id=Orders.product_id
group by customer_id,product_id
) as a
where a.rank_count=1