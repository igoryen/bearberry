# adding a new exercise to the database
INSERT INTO bearberry.exercise (abbreviation, `name`, `force`, main_muscle, other_muscle, description) 
VALUES
(
'kcw',  # abbreviation
'Seated Leg Tucks', # name
'abs', # force
'abs', # main_muscle
'shoulders',  # other_muscle
'Kneeling, pulling the cable horizontally');

SELECT * 
FROM bearberry.exercise 
where name like "%shrug%"
ORDER BY id DESC;
