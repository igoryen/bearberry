ALTER TABLE `bearberry`.`list`
ADD CONSTRAINT unique_key UNIQUE (list_id, day_type, uid, eid)