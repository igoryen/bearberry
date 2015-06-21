ALTER TABLE `bearberry`.`exercise` 
CHANGE COLUMN `id` `id` INT(11) NOT NULL AUTO_INCREMENT ,
ADD PRIMARY KEY (`id`);


ALTER TABLE `bearberry`.`exercise` 
CHANGE COLUMN `name` `abbreviation` 
VARCHAR(500) NOT NULL COMMENT 'the name of the exercise' ,
CHANGE COLUMN `abbreviation` `name` 
VARCHAR(500) NOT NULL COMMENT 'an abbreviation like CD for chest dips' ;
