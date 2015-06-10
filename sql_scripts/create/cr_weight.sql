CREATE TABLE `bearberry`.`weight` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `pid` INT NOT NULL COMMENT 'pid = progress ID, the ID of the row in the Progress table',
  `weight` FLOAT NOT NULL COMMENT 'the weight you lifted for that exercise for that week',
  PRIMARY KEY (`id`));


DROP TABLE `bearberry`.`weight`;

SELECT * FROM `bearberry`.`weight`;

DESCRIBE `bearberry`.`weight`;