
SELECT p1.id, p1.pid, p1.weight
FROM   bearberry.progress_ AS p1
WHERE  weight = (SELECT MAX(p2.weight)
              FROM bearberry.progress_ AS p2
              WHERE p1.id = p2.id);
              
