 CREATE TABLE `bearberry`.`Progress` ( 
  id INT(11) NOT NULL AUTO_INCREMENT COMMENT 'progress record ID',
  uid INT(11) NOT NULL COMMENT 'user ID',
  eid INT(11) NOT NULL COMMENT 'exercise ID',
  week INT(11) NOT NULL COMMENT 'week number, like 1522 (15 for 2015, 22 for week 22)',
  weight DOUBLE,
 PRIMARY KEY (`id`))
COMMENT = 'The table to hold progress by week';