-- Write your PostgreSQL query statement below
WITH cte AS (
    SELECT 
        e.left_operand,
        v1.value AS left_op,
        e.operator,
        e.right_operand,
        v2.value AS right_op,
        ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS row_num
    FROM expressions e
    JOIN variables v1 ON v1.name = e.left_operand
    JOIN variables v2 ON v2.name = e.right_operand
)
SELECT 
    left_operand, 
    operator, 
    right_operand, 
    CASE 
        WHEN operator = '=' THEN if(left_op = right_op, 'true', 'false')
        WHEN operator = '<' THEN if(left_op < right_op, 'true', 'false')
        WHEN operator = '>' THEN if(left_op > right_op, 'true', 'false')
    END AS Value 
FROM cte
ORDER BY row_num DESC;  
