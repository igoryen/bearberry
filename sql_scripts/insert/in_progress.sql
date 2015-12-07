SELECT * FROM bearberry.progress WHERE eid = 100;

# add a new record for an exercise this week
INSERT INTO bearberry.progress (uid, week, eid, weight, comments) VALUES (
1, # user ID: 1 - Igor, 2 - Jenica, 3 - Daniel, 4 - Joy
1549, # week
8, # exercise ID
150, # weight
''); 

SELECT * FROM bearberry.progress ORDER BY id DESC;