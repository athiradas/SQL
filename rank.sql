SELECT Score, 
(SELECT COUNT(*)+1 FROM Scores S2 WHERE s1.Score<s2.Score) Rank, 
Rank() OVER (ORDER BY Score DESC) Rank_fn,
(SELECT COUNT(DISTINCT Score)+1 FROM Scores S2 WHERE s1.Score<s2.Score) Dense_Rank, 
dense_rank() OVER (ORDER BY Score DESC) Dense_Rank_fn,
-- (SELECT COUNT(*) FROM Scores S2 WHERE s1.Score<=s2.Score) Row_Number,
Row_Number() OVER (ORDER BY Score DESC) Row_Number_fn
FROM Scores s1

Score	Rank	  Rank_fn	Dense_Rank	Dense_Rank_fn	Row_Number	Row_Number_fn
4.00		1			1			1				1			2				1
4.00		1			1			1				1			2				2
3.85		3			3			2				2			3				3
3.65		4			4			3				3			5				4
3.65		4			4			3				3			5				5
3.50		6			6			4				4			6				6
