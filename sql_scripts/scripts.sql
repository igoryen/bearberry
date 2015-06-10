






 
 
 


DROP TABLE `bearberry`.`Progress` ; 

INSERT INTO `bearberry`.`Progress` 
(uid, eid, week, weight) 
VALUES
 (1,1,1521,35.5),
 (2,1,1521,25.5),
 (2,3,1520,30.0);

select `force` from bearberry.exercise where `name` like 'dabc';

select * from bearberry.exercise where name like 'dabc';
select * from bearberry.exercise where id = 11;
select * from bearberry.exercise;
select * from bearberry.progress where eid = 91;
select * from bearberry.progress;
