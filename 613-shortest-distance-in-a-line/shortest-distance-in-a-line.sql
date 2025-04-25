select min(a.x-b.x) as shortest

from point as a
join point as b
where a.x>b.x