select distinct(title) 
from content c join TVProgram t on t.content_id=c.content_id
where month(program_date) =6 and year(program_date)=2020 and Kids_content  = 'Y' and content_type  = 'Movies'