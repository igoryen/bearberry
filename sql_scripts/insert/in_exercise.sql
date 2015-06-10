# adding a new exercise to the database
INSERT INTO bearberry.exercise (id, `name`, abbreviation, `force`, main_muscle, other_muscle, description) 
VALUES
(99, 
'sms', 
'Smith Machine Shrug', 
'pull', 
'traps',
'middle back, shoulders', 
'Hard to hold the barbell in hands');

SELECT * 
FROM bearberry.exercise 
ORDER BY id DESC;
