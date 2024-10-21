Select w1.id
from weather as w1, weather as w2
where w1.Temperature > w2.temperature 
and DATEDIFF(w1.recordDate, w2.recordDate) = 1