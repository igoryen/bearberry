# adding a new exercise to the database
INSERT INTO bearberry.exercise (id, abbreviation, `name`, `force`, main_muscle, other_muscle, description) 
VALUES
(102, 
'dc', 
'Decline Crunch', 
'abs', 
'abs',
null, 
'Shoulders come up about 10 cm, lower back remains on the bench');

SELECT * 
FROM bearberry.exercise 
ORDER BY id DESC;
