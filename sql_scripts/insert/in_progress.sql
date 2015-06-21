SELECT * FROM bearberry.progress WHERE eid = 100;

# add a new record for an exercise this week
INSERT INTO bearberry.progress (uid, eid, week, weight, comments) VALUES (
2, # user ID: 1 - Igor, 2 - Jenica, 3 - Daniel, 4 - Joy
87, # exercise ID
1525, # week
27.5, # weight
'Up from 25 in 1523'); 

SELECT * FROM bearberry.progress ORDER BY id DESC;


DROP TABLE bearberry.progress;