# find record in Progress by exercise ID
SELECT * FROM bearberry.progress WHERE eid = 56;

SELECT 
  id, 
  uid,
  eid,
  #week,
  MAX(week) AS 'week',
  weight
FROM
  bearberry.progress
  #WHERE eid = 56
GROUP BY eid
;
