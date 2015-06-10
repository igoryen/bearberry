# adding a new exercise to the database
INSERT INTO bearberry.exercise (id, `name`, abbreviation, `force`, muscle, description) VALUES
(98, 'rm', 'Row Machine', 'pull', 'lats', 'Seated');

SELECT * 
FROM bearberry.exercise 
ORDER BY id DESC;
