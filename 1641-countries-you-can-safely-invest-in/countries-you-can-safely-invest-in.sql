WITH con_code AS (
    SELECT id, LEFT(phone_number, 3) AS code
    FROM person
),
unionall AS (
    SELECT caller_id, callee_id, duration
    FROM calls
    UNION ALL
    SELECT callee_id, caller_id, duration
    FROM calls
)

SELECT country.name AS country
FROM Country
JOIN con_code ON country.country_code = con_code.code
JOIN unionall ON con_code.id = unionall.caller_id
GROUP BY country.name
HAVING AVG(unionall.duration) > (
    SELECT AVG(duration) FROM calls
);
