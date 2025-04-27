
    select Department,e1.name Employee, Salary
    from employee e1 join
    (
    select d.name as Department,e.id,  e.name Employee, max(salary)  over (partition by d.name order by salary DESC) as max_salary 
    from employee e join department d on e.departmentId =d.id 
    ) as p on e1.id=p.id
    where salary = max_salary