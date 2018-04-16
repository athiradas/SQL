SELECT d.Name   Department , e1.Name Employee , e1.Salary
FROM Employee e1
INNER JOIN Department  d ON (e1.DepartmentId  = d.Id)
WHERE (select count(DISTINCT Salary) + 1  from Employee e2 where e1.salary < e2.salary AND e1.DepartmentId = e2.DepartmentId) <= 3
ORDER BY d.Name, e1.Salary DESC



