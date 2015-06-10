CREATE TABLE `bearberry`.`Exercise` (
  `id` INT NOT NULL,
  `name` VARCHAR(500) NOT NULL COMMENT 'the name of the exercise',
  `abbreviation` VARCHAR(500) NOT NULL COMMENT 'an abbreviation like CD for chest dips',
  `force` VARCHAR(500) NOT NULL COMMENT 'pull, push etc',
  `muscle` VARCHAR(500) NOT NULL COMMENT 'main muscle group worked',
  `description` VARCHAR(500) NULL,
  PRIMARY KEY (`id`))
COMMENT = 'The table to hold gym exercises';


SELECT * FROM bearberry.exercise;