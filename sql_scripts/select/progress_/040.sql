# This is the subquery for progress_ that goes into the query in #7

SELECT 
  id, 
  eid,
  MAX(week) AS 'week'
FROM
  bearberry.progress_
GROUP BY eid
;
