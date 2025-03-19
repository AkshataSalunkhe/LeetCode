
/* Solution 1
WITH cte_unique_salary AS (
    select distinct(salary) from Employee
)

SELECT 
    CASE 
        WHEN count(salary) >=2 THEN (SELECT salary FROM cte_unique_salary ORDER BY salary DESC LIMIT 1 OFFSET 1) 
        ELSE NULL 
    END AS SecondHighestSalary
FROM cte_unique_salary

*/ 
SELECT
    IFNULL(
        (SELECT DISTINCT salary
         FROM Employee
         ORDER BY salary DESC
         LIMIT 1 OFFSET 1),
    NULL) AS SecondHighestSalary;