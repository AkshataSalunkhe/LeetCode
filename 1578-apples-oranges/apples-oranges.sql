select a.sale_date, (sna - sno) as diff
from 
(select sold_num as sna, sale_date
from sales
where fruit ='apples') a join 
(
select sold_num as sno, sale_date
from sales
where fruit ='oranges') o on a.sale_date= o.sale_date
order by a.sale_date