INSERT INTO `bearberry`.`list` (`list_id`, `day_type`, `uid`, `eid`) VALUES (
'7', # list ID
'3', # work-out day type (1 = pull, 2 = push, 3 = leg)
'2', # user ID (1 = Igor, 2 = Jenica, 3 = Daniel, 4 = Joy)
'102'  # exercise ID
);

SELECT * FROM `bearberry`.`list`;

SELECT * FROM `bearberry`.`list` WHERE list_id = 7;