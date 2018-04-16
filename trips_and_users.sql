SELECT Request_at AS Day, 
ROUND(SUM(CASE WHEN Status like 'cancelled_%' THEN 1.0 ELSE 0.0 END) / COUNT(*), 2) AS 'Cancellation Rate'
FROM Trips t 
INNER JOIN Users u ON (u.Users_Id = t.Client_Id AND u.Banned  = 'No' AND Request_at BETWEEN '2013-10-01' AND '2013-10-03')
GROUP BY t.Request_at
