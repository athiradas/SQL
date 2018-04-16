SELECT AVG(Salary) Median
FROM
(SELECT Salary, 
ROW_NUMBER() OVER (ORDER BY Salary) r_num
FROM Empsalary) t_rn,  (SELECT  count(*) row_count FROM EmpSalary) t_med
WHERE r_num = FLOOR(row_count/2) OR r_num = CEILING((row_count/2)+1)




SELECT t_rn.Department, AVG(Salary) Median
FROM
	(SELECT Department, Salary, ROW_NUMBER() OVER (PARTITION BY Department ORDER BY Salary) r_num FROM Empsalary) t_rn,  
	(SELECT  Department, count(*) row_count FROM EmpSalary GROUP BY Department) t_med
WHERE r_num = FLOOR(row_count/2) OR r_num = CEILING((row_count/2)+1) AND t_med.Department = t_rn.Department
GROUP BY t_rn.Department
