select seat_id 
from (
select distinct(c1.seat_id), (c1.free + c2.free) suma
from cinema c1, cinema c2
where c1.seat_id +1 = c2.seat_id or c1.seat_id - 1 = c2.seat_id) as p
where suma=2
order by seat_id 