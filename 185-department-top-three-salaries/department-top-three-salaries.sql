SELECT Department, Employee, Salary
FROM (
    SELECT D.name AS Department, 
           E.name AS Employee, 
           E.salary,
           DENSE_RANK() OVER (PARTITION BY D.name ORDER BY E.salary DESC) AS rnk
    FROM Employee AS E 
    JOIN Department AS D 
    ON E.departmentId  = D.id  
) AS ranked
WHERE rnk <= 3;
