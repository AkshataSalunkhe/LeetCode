# Write your MySQL query statement below
select w.name, w.population, w.area
from world as w
where w.area >= 3000000 OR population >=25000000