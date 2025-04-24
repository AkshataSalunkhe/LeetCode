select name 
from salesperson 
where sales_id not in (
        select distinct(sales_id)
        from company as c join orders as o on c.com_id = o.com_id
        where c.name = 'RED')

