# adding a new exercise to the database
INSERT INTO bearberry.exercise (abbreviation, `name`, `force`, main_muscle, other_muscle, description) 
VALUES
(
'pc',  # abbreviation
'Preacher Curl', # name
'pull', # force
'biceps', # main_muscle
'',  # other_muscle
'Barbell in hands, elbows on support, palms facing up');

SELECT * 
FROM bearberry.exercise 
where name like "%concentration curl%"
ORDER BY id DESC;

select * from bearberry.exercise;