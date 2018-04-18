CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      # Write your MySQL query statement below.
      SELECT Salary
      FROM
      (SELECT (SELECT COUNT(DISTINCT Salary) + 1 FROM Employee e2 WHERE e2.Salary > e1.Salary) AS Rank, Salary FROM Employee e1) t1
     WHERE Rank = N LIMIT 1
  );
END




SELECT MIN(Score) FROM 
(SELECT TOP 3 Score FROM Scores ORDER BY Score DESC) T


