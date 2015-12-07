# What is the list of exercises for user X for day type Y?
# e.g. "What exercises do I do on leg day?"

SELECT
  List.day_type,
  Day.type_name AS `Day`,
  List.uid,
  User.first_name,
  List.eid,
  Exercise.name,
  Progress.week AS Week,
  Progress.weight AS Weight
FROM 
	bearberry.list AS List
    LEFT JOIN bearberry.day AS `Day` ON List.day_type = Day.id
    JOIN bearberry.User AS User ON List.uid = User.id
    JOIN bearberry.Exercise AS Exercise ON  List.eid = Exercise.id
    JOIN bearberry.Progress AS Progress
    INNER JOIN

    #3333333333333333333333333333333333333333333333333333333333333333333333333333333333333333

    FROM
    bearberry.list 
    LEFT JOIN
    #2222222222222222222222222222222222222222222222222222222222222222222222222222222222222
    (SELECT # What is the most recent date for each of ALL the exercises for user X?
      # 'eid' and 'week' will be the only 2 correct values
      uid,
      eid, # the ID of the exercise
      MAX(week) AS 'week' # return the greatest week number
    FROM
    #1111111111111111111111111111111111111111111
    # What are ALL the progress records (progress history) for user X?
      (SELECT * 
        FROM bearberry.Progress
        WHERE uid = 2
      ) AS ppu # ppu = Progress for Particular User
    #1111111111111111111111111111111111111111111
    GROUP BY eid)  AS mrd # mrd = Most Recent Date
  #2222222222222222222222222222222222222222222222222222222222222222222222222222222222222

  #3333333333333333333333333333333333333333333333333333333333333333333
WHERE 
	List.uid = 1 AND
    List.day_type = 1
    
;


# from Progress
# look through all the exercises and get the records that belong to the 
# get all the exercises for the latest (MAX) week for user A