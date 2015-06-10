CREATE TABLE `bearberry`.`User` (
  `id` INT NOT NULL,
  `first_name` VARCHAR(500) NOT NULL COMMENT 'the first name of the user',
  `last_name` VARCHAR(500) NOT NULL COMMENT 'the last name of the user',
  `handle` VARCHAR(500) NOT NULL COMMENT 'the nickname of the user',
  PRIMARY KEY (`id`))
COMMENT = 'The table to hold gym exercises';