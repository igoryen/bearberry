# /update/exercise
UPDATE bearberry.exercise SET `main_muscle`='abs'   WHERE id = 1;
UPDATE bearberry.exercise SET `abbreviation`='scwc' WHERE id = 1;
UPDATE bearberry.exercise SET `description`='Weight shown is for plates, without the bar' WHERE id = 89;

#######################
SELECT * FROM bearberry.exercise ORDER BY id DESC;