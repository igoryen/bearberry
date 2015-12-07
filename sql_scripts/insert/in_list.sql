INSERT INTO `bearberry`.`list` (`list_id`, `day_type`, `uid`, `eid`) VALUES (
'8', # list ID
'1', # work-out day type (1 = pull, 2 = push, 3 = leg)
'1', # user ID (1 = Igor, 2 = Jenica, 3 = Daniel, 4 = Joy)
'38'  # exercise ID
);

SELECT * FROM `bearberry`.`list`;

SELECT * FROM `bearberry`.`list` WHERE list_id = 9;
SELECT * FROM `bearberry`.`list` WHERE eid = 91;

DELETE FROM `bearberry`.`list` WHERE eid = 91;

INSERT INTO `list` VALUES 
(58,1,1,1,80),
(59,1,1,1,91),
(49,2,1,2,80),
(50,2,1,2,91),
(82,3,1,3,80),
(83,3,1,3,91),
(73,4,1,4,80),
(239,5,1,1,80),
(243,5,1,1,91),
(303,6,1,3,80),
(307,6,1,3,91),
(368,7,1,2,80),
(372,7,1,2,91),
(406,8,1,1,80),
(407,8,1,1,91),
(447,9,1,2,80),
(448,9,1,2,91),
(80,4,1,4,91)
;

select * from `bearberry`.`list` where list_id = 8;

delete from `bearberry`.`list` where id = 464;