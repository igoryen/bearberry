# adding a new exercise to the database
INSERT INTO bearberry.exercise (abbreviation, `name`, `force`, main_muscle, other_muscle, description) 
VALUES
(
'cmss', 
'Calf-Machine Shoulder Shrug', 
'pull', 
'traps',
'', 
'');

SELECT * 
FROM bearberry.exercise 
where name like "%shrug%"
ORDER BY id DESC;
