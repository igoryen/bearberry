# This one is good BUT it does not return 
# the p2 table sifts out the user ID (uid)  that you might be looking for.
# The query in 00910.sql is better because it adds another dynamic sub-table (ppu)
# that first sifts everything that doesn't have the sought user ID  
# and then returns it for other stuff to be sifted out
SELECT 
  p.id, # the ID of the progress record
  u.first_name as 'Name', 
  e.`force`, 
  e.id, 
  e.abbreviation, # TODO: rename the 'abbreviation' column into 'name'
  p.week, 
  p.weight  
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
      bearberry.progress # from the same table
    GROUP BY eid) # stack the rows so only one of the similar is visible and on the top
  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                          AS p2 ON  p.eid  = p2.eid # so that exercise ID coincide in both tables
                                AND p.uid  = p.uid
                                AND p.week = p2.week # so that week numbers coincide in both tables
								#AND p.id = p2.id
  JOIN bearberry.User     AS u  ON  p.uid = u.id
  JOIN bearberry.Exercise AS e  ON  p.eid = e.id

WHERE   
        p.uid = 1 
        #AND 
        #p.id = 190
        AND   
        e.`force` = 'push'
		AND   
        p.week > 1500
;  
