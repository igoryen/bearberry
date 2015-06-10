# select/progress
SELECT 
  p.id AS 'p.id',
  u.first_name as 'Name', 
  e.`force` as 'Force',
  p.eid AS 'p.eid',
  e.abbreviation as 'Exercise Name', 
  max(p.week) AS 'Week', 
  #week AS 'Week', 
  w.weight AS 'w.weight'
FROM 
       bearberry.Progress AS p 
  JOIN bearberry.User AS u 
    ON p.uid = u.id
  JOIN bearberry.Exercise AS e 
    ON p.eid = e.id
  JOIN bearberry.weight AS w
    ON p.id = w.pid

WHERE
  u.id = 4
  AND 
  e.`force` = 'pull'

GROUP BY p.eid
#ORDER BY e.id
;

