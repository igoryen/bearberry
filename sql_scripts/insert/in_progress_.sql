# insert

INSERT INTO bearberry.progress_ (id, eid, week, weight) VALUES
(1,1,1501,10),
(2,1,1502,11),
(3,1,1503,12),
(4,1,1504,13),  # <==
(5,2,1501,100),
(6,2,1502,110),
(7,2,1503,120),
(8,2,1504,130);  # <==

INSERT INTO bearberry.progress_ (id, eid, week, weight) VALUES
(9, 3,1501,40),
(10,3,1502,50), # <==
(11,4,1501,140),
(12,4,1502,150), # <==
(13,5,1501,20),
(14,5,1502,30), # <==
(15,6,1501,70),
(16,6,1502,80); # <==

SELECT * FROM bearberry.progress_;

DROP TABLE bearberry.progress_;