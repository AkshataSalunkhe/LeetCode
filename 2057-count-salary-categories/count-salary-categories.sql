
select 'High Salary' as category,
count(if(income>50000,1,NULL)) as accounts_count
from Accounts
UNION ALL
select 'Low Salary' as category,
count(if(income<20000,1,NULL)) as accounts_count
from Accounts
UNION ALL
select 'Average Salary' as category,
count(if(income>=20000 and income<=50000,1,NULL)) as accounts_count
from Accounts


