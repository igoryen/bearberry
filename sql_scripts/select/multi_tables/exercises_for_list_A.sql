SELECT * FROM bearberry.list;

# show me exercises for list X with day type, user id, exe id and name
SELECT 
    l.list_id,
    l.day_type,
    l.uid,
    l.eid,
    e.name
FROM
    bearberry.list l 
    JOIN bearberry.exercise e
WHERE
    #uid = 3 AND 
    l.list_id = 1 AND
    l.eid = e.id ;