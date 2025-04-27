select transaction_id
from (select *, max(amount) over (partition by day) as max_amount
      from Transactions) a
where amount = max_amount
order by transaction_id asc