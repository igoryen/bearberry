DROP TABLE IF EXISTS `list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `list_id` int(11) DEFAULT NULL,
  `day_type` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL COMMENT 'user ID',
  `eid` int(11) DEFAULT NULL COMMENT 'exercise ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='This is the table that will store sets of exercises for each user';