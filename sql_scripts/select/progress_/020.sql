SELECT 
  p1.id, 
    p1.pid, 
    p1.weight
FROM 
  bearberry.progress_ AS p1
LEFT JOIN 
  bearberry.progress_ p2 
    ON p1.id = p2.id AND p1.weight < p2.weight
WHERE p2.id IS NULL
;