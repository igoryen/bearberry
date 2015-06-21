# select/progress/by_eid
SELECT * FROM bearberry.progress WHERE eid = 86;

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
