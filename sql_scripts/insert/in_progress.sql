SELECT * FROM bearberry.progress WHERE eid = 100;

# add a new record for an exercise this week
INSERT INTO bearberry.progress (uid, week, eid, weight, comments) VALUES (
2, # user ID: 1 - Igor, 2 - Jenica, 3 - Daniel, 4 - Joy
1529, # week
102, # exercise ID
0, # weight
''); 

SELECT * FROM bearberry.progress ORDER BY id DESC;