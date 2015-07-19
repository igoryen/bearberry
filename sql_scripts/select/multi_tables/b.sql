SELECT 
	#four.Prog_id,
    four.list_id,
    #four.uid,
    #User.first_name,
    four.eid,
    Exer.name,
    #Exer.`force`,
    CONCAT_WS('; ', lower(Exer.main_muscle), lower(Exer.other_muscle)) AS 'main_others',
    four.week,
    four.weight
    
FROM
    
(
#4444444444444444444444444444444444444444444444444444444444
# four
SELECT 
	ulew.Prog_id,
	List.list_id,
	ulew.uid,
    ulew.eid,
    ulew.week,
    ulew.Prog_weight AS `weight`
    FROM
    (
#3333333333333333333333333333333333333333333333333333333333333333
      # "ulew" = user's list exercises with weight
      # Selected exercises based on whether they are in List
      SELECT 
      mrd.uid,
      mrd.eid,
		#mrd.id AS `mrd_id`
		#List.id AS `List_id`,
        -- , List.list_id AS `List_id`
        -- , List.day_type AS `List_day_type`
        #, Day.type_name AS `Day_type_name`
        -- , List.uid AS `List_uid`
        #, User.first_name AS `User_fname`
        -- , List.eid AS `List_eid`
        #, Exer.name AS `Exer_name`
         mrd.week, 
        Prog.id AS `Prog_id`,
        Prog.weight AS `Prog_weight`

      FROM      
          (
              #2222222222222222222222222222222222222222222222222222222222222222222222222222222222222
              # mrd = Most Recent Date
              # What is the most recent date for each of ALL the exercises for user X?
              # only the rows with the maximum (most recent) recent date (week)
              SELECT 
                # NB: 'eid' and 'week' will be the only 2 correct values
                # NB: No "id" because the id will not be that of the latest week 
                uid, 
                eid, 
                MAX(week) AS 'week' 
                # NB: No "weight" because the weight will not be that of the latest week
              FROM
                        (
                          #1111111111111111111111111111111111111111111
                          # "ppu" = Progress for Particular User
                          # Strain ALL the Progress records by user ID
                          # What are ALL the progress records (progress history) for user X?
                          SELECT * FROM bearberry.Progress WHERE uid = '%s'
                          # ppu
                          #1111111111111111111111111111111111111111111
                        ) AS ppu # ppu
              GROUP BY eid
              # mrd 
              #2222222222222222222222222222222222222222222222222222222222222222222222222222222222222
        )  AS mrd 
        
      LEFT JOIN
      bearberry.Progress AS Prog ON Prog.uid  = mrd.uid AND
                                    Prog.eid  = mrd.eid AND
									Prog.week = mrd.week
          

          
          
         
          # ulew
#33333333333333333333333333333333333333333333333333333333333333333333
) AS ulew

LEFT JOIN bearberry.List AS `List`
ON List.uid = ulew.uid
AND List.eid = ulew.eid
WHERE List.list_id = '%s'
#44444444444444444444444444444444444444444444444444444444444444444
) AS four
 INNER JOIN bearberry.user     AS User ON User.id  = four.uid
 INNER JOIN bearberry.exercise AS Exer ON Exer.id  = four.eid
 #INNER JOIN bearberry.day      AS `Day` ON `Day`.id  = four.eid
          
ORDER BY Exer.main_muscle

    ;