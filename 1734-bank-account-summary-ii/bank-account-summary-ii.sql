select name, sum(amount) as balance
from Transactions  t join users u on t.account=u.account
group by t.account
having  balance > 10000