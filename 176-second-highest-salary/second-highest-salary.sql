/*SELECT IF(COUNT(*) > 2, (SELECT salary FROM Employee ORDER BY salary DESC LIMIT 1 OFFSET 1), IF (COUNT(*)=2, 
       IF(count(distinct(salary))=2, min(salary), NULL) ,NULL)) AS SecondHighestSalary
FROM Employee


/*
SELECT IF(COUNT(*) > 2, (SELECT salary FROM Employee ORDER BY salary DESC LIMIT 1 OFFSET 1), NULL) AS SecondHighestSalary 
from 
(select distinct(salary) from Employee) as Empl*/

WITH cte_unique_salary AS (
    select distinct(salary) from Employee
)

SELECT 
    CASE 
        WHEN count(salary) >=2 THEN (SELECT salary FROM cte_unique_salary ORDER BY salary DESC LIMIT 1 OFFSET 1) 
        ELSE NULL 
    END AS SecondHighestSalary
FROM cte_unique_salary
