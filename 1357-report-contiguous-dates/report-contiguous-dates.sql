WITH cte AS (
    SELECT fail_date AS task_date, 'failed' AS type
    FROM failed
    WHERE YEAR(fail_date) = 2019

    UNION ALL

    SELECT success_date AS task_date, 'succeeded' AS type
    FROM succeeded
    WHERE YEAR(success_date) = 2019
),
ordered_cte AS (
    SELECT *,
           LAG(type) OVER (ORDER BY task_date) AS prev_type,
           LEAD(type) OVER (ORDER BY task_date) AS lead_type
    FROM cte
),
p1 AS (
    SELECT 
        type,
        task_date AS start_date,
        ROW_NUMBER() OVER (ORDER BY task_date) AS row_num
    FROM ordered_cte
    WHERE type != prev_type OR prev_type IS NULL
),
p2 AS (
    SELECT 
        type,
        task_date AS end_date,
        ROW_NUMBER() OVER (ORDER BY task_date) AS row_num_end
    FROM ordered_cte
    WHERE  type != lead_type or lead_type is null
)

SELECT 
    p1.type as period_state , 
    p1.start_date, 
    p2.end_date
FROM p1
JOIN p2 ON p1.row_num = p2.row_num_end;

