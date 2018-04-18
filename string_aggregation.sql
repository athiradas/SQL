SELECT string_agg( follower, ',' )+','+string_agg(followee,',') FROM follow

-- a,b,a,c,c,b,b,a,c,b,a,d
