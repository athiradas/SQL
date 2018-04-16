/* Write your PL/SQL query statement below */


SELECT d.name Department, t.Name Employee, t.Salary
FROM
	(SELECT DepartmentId, Name, Salary, 
			(SELECT COUNT(DISTINCT SALARY) + 1 FROM Employee e2 WHERE e2.Salary> e1.Salary AND e1.DepartmentId = e2.DepartmentId) srank
	FROM 
	Employee e1) t
INNER JOIN Department d on t.DepartmentId = d.Id
WHERE srank = 1
ORDER BY Salary


/* Write your T-SQL query statement below */

SELECT d.name Department, t.Name Employee, t.Salary
FROM
	(SELECT DepartmentId, Name, Salary, 
			DENSE_RANK() OVER(PARTITION BY DepartmentId ORDER BY Salary DESC) srank
	FROM 
	Employee e1) t
INNER JOIN Department d on t.DepartmentId = d.Id
WHERE srank = 1

