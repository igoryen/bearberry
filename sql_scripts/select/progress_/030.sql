# This is the final good working one for progress_!
SELECT 
    p.id, 
    p.eid, 
    p.week,
    p.weight
FROM
    bearberry.progress_ AS p
INNER JOIN
  (SELECT # a subquery, i.e. an included / dynamic table
    id, # not necessary because it is not referenced anywhere
    eid, # the ID of the exercise
    MAX(week) AS 'week' # return the greatest week number
  FROM
    bearberry.progress_ # from the same table
  GROUP BY eid) # stack the rows so only one of the similar is visible and on the top
  AS p2 # the alias of this dynamic table will be "p2"
ON 
      p.eid = p2.eid # so that exercise ID coincide in both tables
  AND p.week = p2.week # so that week numbers coincide in both tables
;


