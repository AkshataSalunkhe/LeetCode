
select id, if(p_id is null, 'Root', if(id not in (select p_id from Tree where p_id != 'null'), 'Leaf', 'Inner')) as type
from Tree
