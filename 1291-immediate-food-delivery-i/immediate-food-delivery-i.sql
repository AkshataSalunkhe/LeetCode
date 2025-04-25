select round(count(delivery_id)*100/(select count(delivery_id) from delivery), 2) as immediate_percentage 
from delivery
where order_date= customer_pref_delivery_date 
