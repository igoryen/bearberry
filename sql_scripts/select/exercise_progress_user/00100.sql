# show abbreviation, week, weight
# for user X
# rows grouped by esercises
# NOT GOOD.
# each exercise to have the highest possible week number

SELECT
  p.id AS 'p.id',
  u.first_name as 'u.first_name', 
  e.`force`, 
  e.id, 
  e.abbreviation, 
  p.week, 
  p.weight  
FROM 
  bearberry.Progress AS p 
  JOIN  bearberry.User AS u 
    ON p.uid = u.id
  JOIN bearberry.Exercise AS e 
    ON p.eid = e.id

WHERE 
  u.id = 1
  #AND 
  #e.`force` = 'push'
  #AND 
  #p.week > 1500
ORDER BY 
  abbreviation
;  
