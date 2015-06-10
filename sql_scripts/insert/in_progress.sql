SELECT * FROM bearberry.progress WHERE eid = 91;

# add a new record for an exercise this week
INSERT INTO bearberry.progress (uid, eid, week, weight, comments) VALUES (
2, # user ID
59, # exercise ID
1523, # week
90, # weight
null); 

SELECT * FROM bearberry.progress;


DROP TABLE bearberry.progress;