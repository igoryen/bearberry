# adding a new exercise to the database
INSERT INTO bearberry.exercise (abbreviation, `name`, `force`, main_muscle, other_muscle, description) 
VALUES
(
'test', 
'Test', 
'test', 
'test',
'', 
'test test');

SELECT * 
FROM bearberry.exercise 
ORDER BY id DESC;
