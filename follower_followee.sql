SELECT f1.follower, f1.followee 
FROM follow f1 INNER JOIN follow f2 ON(f1.follower = f2.followee)
WHERE f1.followee = f2.follower and f1.follower > f2.follower
