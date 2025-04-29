select user_id, max(diff) as biggest_window
from (
    SELECT U1.user_id, datediff( LEAD(U1.visit_date) OVER (PARTITION BY user_id ORDER BY visit_date), visit_date) as diff
    FROM UserVisits U1

    UNION ALL

    SELECT user_id, Datediff('2021-01-01',MAX(visit_date)) AS diff
    FROM UserVisits
    GROUP BY user_id
    ORDER BY user_id
) as p 
group by user_id
