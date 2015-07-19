CREATE TABLE `bearberry`.`day` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `type_name` VARCHAR(45) NULL COMMENT 'The name of the type of the day: \"pull\", \"push\", or \"leg\"',
  PRIMARY KEY (`id`))
COMMENT = 'The type of work-out day: \"pull\", \"push\", or \"leg\"';
