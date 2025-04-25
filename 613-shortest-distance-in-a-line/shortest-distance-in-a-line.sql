# Write your MySQL query statement below
select min(dist) shortest 
from(
select abs(p1.x-p2.x) dist
from point p1, point p2
where p1.x!=p2.x) as p 
