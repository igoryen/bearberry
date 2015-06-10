# This is the final good working one for progress
SELECT 
    p.id, 
    p.eid, 
    p.week,
    p.weight
FROM
    bearberry.progress AS p
INNER JOIN
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  (SELECT # a subquery, i.e. an included / dynamic table
    # 'eid' and 'week' will be the only 2 correct values
    eid, # the ID of the exercise
    MAX(week) AS 'week' # return the greatest week number
  FROM
    bearberry.progress # from the same table
  GROUP BY eid) # stack the rows so only one of the similar is visible and on the top
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  AS p2 # the alias of this dynamic table will be "p2"
ON 
      p.eid = p2.eid # so that exercise ID coincide in both tables
  AND p.week = p2.week # so that week numbers coincide in both tables
;
