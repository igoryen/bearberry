# show me how many lists a user has

SELECT 
DISTINCT l.list_id,
#l.day_type,
l.uid,
u.first_name
#l.eid
 FROM bearberry.list AS l
JOIN bearberry.user AS u
ON l.uid = u.id
WHERE l.uid = '%s'
;