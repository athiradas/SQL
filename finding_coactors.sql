SELECT f1.actor, string_agg(f2.actor,',')
FROM movies f1 INNER JOIN movies f2 ON(f1.actor = f2.actor)
WHERE  f1.actor > f2.actor
GROUP BY f1.actor
