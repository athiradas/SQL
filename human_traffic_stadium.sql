SELECT id1 id, date1 date, people1 people
FROM
(SELECT s1.id id1, s1.date date1, s1.people people1, s2.id id2, s2.date date2, s2.people people2, s3.id id3,s3.date date3, s3.people people3
FROM 
stadium s1
LEFT JOIN stadium s2 ON (s1.id = s2.id+1)
LEFT JOIN stadium s3 ON (s1.id = s3.id+2)
WHERE (s1.people >= 100 and s2.people >= 100 and s3.people >= 100))tab
UNION 
SELECT  id2, date2, people2
FROM
(SELECT s1.id id1, s1.date date1, s1.people people1, s2.id id2, s2.date date2, s2.people people2, s3.id id3,s3.date date3, s3.people people3
FROM 
stadium s1
LEFT JOIN stadium s2 ON (s1.id = s2.id+1)
LEFT JOIN stadium s3 ON (s1.id = s3.id+2)
WHERE (s1.people >= 100 and s2.people >= 100 and s3.people >= 100))tab
UNION 
SELECT id3, date3, people3
FROM
(SELECT s1.id id1, s1.date date1, s1.people people1, s2.id id2, s2.date date2, s2.people people2, s3.id id3,s3.date date3, s3.people people3
FROM 
stadium s1
LEFT JOIN stadium s2 ON (s1.id = s2.id+1)
LEFT JOIN stadium s3 ON (s1.id = s3.id+2)
WHERE (s1.people >= 100 and s2.people >= 100 and s3.people >= 100))tab
ORDER BY id



SELECT DISTINCT s1.*
FROM 
stadium s1
LEFT JOIN stadium s2 ON (s1.id = s2.id+1 OR s1.id = s2.id-1 OR s1.id = s2.id-2 OR s1.id = s2.id-2)
LEFT JOIN stadium s3 ON (s1.id = s3.id+2 OR s1.id = s3.id-2 OR s1.id = s3.id+1 OR s1.id = s3.id-1)
WHERE (s1.people >= 100 and s2.people >= 100 and s3.people >= 100)
