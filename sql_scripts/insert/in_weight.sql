INSERT INTO 
  `bearberry`.`weight` (pid, weight)
SELECT 
  id, weight 
FROM 
  `bearberry`.`progress`
; 

# check if success
SELECT pid, weight 
FROM `bearberry`.`weight`;