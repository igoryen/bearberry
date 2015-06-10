# adding a new exercise to the database
INSERT INTO bearberry.exercise (id, abbreviation, `name`, `force`, main_muscle, other_muscle, description) 
VALUES
(100, 
'khropb', 
'Knee/Hip Raise On Parallel Bars', 
'abs', 
'abs',
null, 
null);

SELECT * 
FROM bearberry.exercise 
ORDER BY id DESC;
