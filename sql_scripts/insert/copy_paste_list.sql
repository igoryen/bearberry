INSERT INTO bearberry.list (list_id, day_type, uid, eid)
SELECT 7, day_type, uid, eid 
FROM bearberry.list 
WHERE list_id = 2;