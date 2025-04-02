WITH Ranked AS (
    SELECT requester_id AS id, COUNT(requester_id) AS num
    FROM (
        SELECT requester_id FROM RequestAccepted 
        UNION ALL 
        SELECT accepter_id FROM RequestAccepted
    ) AS p
    GROUP BY id
)
SELECT id, num
FROM Ranked
WHERE num = (SELECT MAX(num) FROM Ranked)
ORDER BY id;
