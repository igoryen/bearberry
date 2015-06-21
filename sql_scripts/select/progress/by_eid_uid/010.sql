# select/progress

# for user 4 and exercise 82 show me weeks and weights
SELECT 
  p.id AS 'p.id',
  p.uid AS 'p.uid',
  p.eid AS 'p.eid',
  #max(p.week) AS 'p.week'
  p.week AS 'p.week'  
  #w.weight AS 'w.weight'

FROM 
  bearberry.Progress AS p
  #JOIN  bearberry.weight AS w  ON  p.id = w.pid
WHERE p.uid = 1 # <== user ID
  AND p.eid = 58 # <== exercise ID
#GROUP BY p.eid
;

