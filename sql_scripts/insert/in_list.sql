INSERT INTO `bearberry`.`list` (`list_id`, `day_type`, `uid`, `eid`) VALUES (
'4', # list ID
'2', # work-out day type (1 = pull, 2 = push, 3 = leg)
'1', # user ID (1 = Igor, 2 = Jenica, 3 = Daniel, 4 = Joy)
'34'  # exercise ID
);

SELECT * FROM `bearberry`.`list`;
SELECT * FROM `bearberry`.`list` WHERE  list_id = 7;