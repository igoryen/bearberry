# This is the final good one for progress!!!
# This query is better than 00900.sql because it adds another dynamic sub-table (ppu)
# that first sifts everything that doesn't have the sought user ID  
# and then returns it for other stuff to be sifted out
SELECT 
  #p.id AS 'p.id', # the ID of the progress record
  u.first_name as 'u.fname', 
  e.`force` AS 'e.force', 
  e.id AS 'e.id', 
  e.main_muscle AS 'e.main',
  e.other_muscle AS 'e.other',
  e.`name` AS 'e.name',
  p.week AS 'p.week', 
  p.weight AS 'p.weight',
  p.comments AS 'p.comments'
FROM 
  bearberry.Progress AS p 
  INNER JOIN
  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    (SELECT # a subquery, i.e. an included / dynamic table
      # 'eid' and 'week' will be the only 2 correct values
      uid,
      eid, # the ID of the exercise
      MAX(week) AS 'week' # return the greatest week number
    FROM
    #-----------------------------
      (SELECT * 
        FROM bearberry.Progress
        WHERE uid = 4
      ) 
    #-----------------------------
    AS ppu # progress particular user

    GROUP BY eid) # stack the rows so only one of the similar is visible and on the top
  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                          AS p2 ON  p.eid  = p2.eid # so that exercise ID coincide in both tables
                                #AND p.uid  = p.uid # not sure what changes if it's included
                                AND p.week = p2.week # so that week numbers coincide in both tables
                                #AND p.id = p2.id
  JOIN bearberry.User     AS u  ON  p.uid = u.id
  JOIN bearberry.Exercise AS e  ON  p.eid = e.id

WHERE   
        p.uid = 4
        AND  
        e.`force` IN ('leg', 'abs')
        AND   
        p.week > 1500

ORDER BY e.main_muscle
;  
