SELECT Score, (SELECT COUNT(distinct Score)+1 FROM Scores s1 WHERE s1.score > s.score) Rank
FROM 
Scores s 
order by Score desc
