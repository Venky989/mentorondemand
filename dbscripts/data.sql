-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: mentor_on_demand
-- ------------------------------------------------------
-- Server version	5.7.10-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (114);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mentor`
--

DROP TABLE IF EXISTS `mentor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mentor` (
  `me_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `me_confirm_password` varchar(255) DEFAULT NULL,
  `me_contact_no` varchar(255) DEFAULT NULL,
  `me_email` varchar(255) DEFAULT NULL,
  `me_firstname` varchar(255) DEFAULT NULL,
  `me_lastname` varchar(255) DEFAULT NULL,
  `me_linkedin_url` varchar(255) DEFAULT NULL,
  `me_password` varchar(255) DEFAULT NULL,
  `me_userid` varchar(255) DEFAULT NULL,
  `me_years_of_experience` float DEFAULT NULL,
  PRIMARY KEY (`me_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mentor`
--

LOCK TABLES `mentor` WRITE;
/*!40000 ALTER TABLE `mentor` DISABLE KEYS */;
INSERT INTO `mentor` VALUES (1,'$2a$10$S0BomkHUNIeT/o9l0Z83l.qQUmwRFnjudZSBm4kq93vPaGUBPUno.','9877678896','lalith@gmail.com','lalith','la','sai@linkedin.com','$2a$10$S0BomkHUNIeT/o9l0Z83l.qQUmwRFnjudZSBm4kq93vPaGUBPUno.','lalith',8),(2,'$2a$10$S0BomkHUNIeT/o9l0Z83l.qQUmwRFnjudZSBm4kq93vPaGUBPUno.','9876896789','arav@gmail.com','aravind','va','arul@linkedin.com','$2a$10$S0BomkHUNIeT/o9l0Z83l.qQUmwRFnjudZSBm4kq93vPaGUBPUno.','aravind',6),(3,'$2a$10$S0BomkHUNIeT/o9l0Z83l.qQUmwRFnjudZSBm4kq93vPaGUBPUno.','8765789876','pawan@gmail.com','pawan','n','durga@linkedin.com','$2a$10$S0BomkHUNIeT/o9l0Z83l.qQUmwRFnjudZSBm4kq93vPaGUBPUno.','pawan',7),(4,'$2a$10$S0BomkHUNIeT/o9l0Z83l.qQUmwRFnjudZSBm4kq93vPaGUBPUno.','7657876568','venky@gmail.com','venky','n','kumarrr@linkedin.com','$2a$10$S0BomkHUNIeT/o9l0Z83l.qQUmwRFnjudZSBm4kq93vPaGUBPUno.','venky',7),(5,'$2a$10$S0BomkHUNIeT/o9l0Z83l.qQUmwRFnjudZSBm4kq93vPaGUBPUno.','7654324567','ash@gmail.com','ashwin','z','mozhirr@linkedin.com','$2a$10$S0BomkHUNIeT/o9l0Z83l.qQUmwRFnjudZSBm4kq93vPaGUBPUno.','mozhi',8),(6,'$2a$10$S0BomkHUNIeT/o9l0Z83l.qQUmwRFnjudZSBm4kq93vPaGUBPUno.','7894561230','gopi@gmail.com','gopi','b','gopi@linkedin.com','$2a$10$S0BomkHUNIeT/o9l0Z83l.qQUmwRFnjudZSBm4kq93vPaGUBPUno.','gopi',7),(7,'$2a$10$S0BomkHUNIeT/o9l0Z83l.qQUmwRFnjudZSBm4kq93vPaGUBPUno.','7548216682','dema@gmail.com','dema','g','dema@linkedin.com','$2a$10$S0BomkHUNIeT/o9l0Z83l.qQUmwRFnjudZSBm4kq93vPaGUBPUno.','dema',4),(8,'$2a$10$S0BomkHUNIeT/o9l0Z83l.qQUmwRFnjudZSBm4kq93vPaGUBPUno.','3545465655','GHRT','obuli','h','DH','$2a$10$S0BomkHUNIeT/o9l0Z83l.qQUmwRFnjudZSBm4kq93vPaGUBPUno.','obuli',6),(9,'$2a$10$S0BomkHUNIeT/o9l0Z83l.qQUmwRFnjudZSBm4kq93vPaGUBPUno.','7894512345','lalith@gmail.com','lalith','laa','lalith@linkedin.com','$2a$10$S0BomkHUNIeT/o9l0Z83l.qQUmwRFnjudZSBm4kq93vPaGUBPUno.','lali',4),(10,'$2a$10$ucB0Cirmq7LvnYu9jQ.ff.lgfuxL5OcsaceKHB/WoKRQZ95ySvGjK','7894512345','lali@gmail.com','lali','laa','lali@linkedin.com','$2a$10$S0BomkHUNIeT/o9l0Z83l.qQUmwRFnjudZSBm4kq93vPaGUBPUno.','lalu',4),(11,'$2a$10$D89LLef54jPibtvCbXBH3esQlW7MXwy3.tawbH5EP0YrwaYM./K0i','7418828117','vaasu@gmail.com','vaa','su','vaasu@linkedin.com','$2a$10$Ry/XKOI6VOrLeId8ARh0Pu3mrcKsPNOtE2ChjVlEsqymli7tpLzv2','vaasu',5),(12,'$2a$10$Tkt4LHY.r7dR8J9.xE.hZ.hi962CF.1wtPCwuYa9zonDPsduym5Em','7548639425','sara@gmail.com','sara','vana','sara@linkedin.com','$2a$10$SEAx47KVU1iBzBv3Cy2/WeYIjUEOpjA9cPzjk6l7xj0YLy7cwxBMi','saravana',5),(13,'$2a$10$YNYkEqTRA6oirmCimROWFOwwec07W/W1bqUa7BhkEoYgtF06NXrFi','7418825695','nvp989@gmail.com','d','f','sdfs@g.com','$2a$10$JYJaLFMRFqTmjzdFVb9QrOY0LkkhkaT4TeJGVtlIueg3va3v9BdC.','d',4),(14,'$2a$10$2hHW4rJ83/wDj5cX6wqIheh0IEWY2.s8HsweSwRPBhAmB9cbcVQz.','7418825695','ddd@gmail.com','d','f','sdfs@g.com','$2a$10$q3fWIMRinQ.l8LYw/AE0wubMNXYMp2YFJ/kxcdmlP.Z1fKId7XPEW','ddsdsds',4),(15,'$2a$10$Uxm7xh.aA1Zpb93IV3gFK.dqS1X1KzLaHcUssNtDboeMZSJpDiv9m','7541268551','ffdfsdft989@gmail.com','sdc','sdfsd','daa@g,com','$2a$10$AFi0BHz9yV6ktwE6fQ6ceeQwueJHhKxai8Y5U.VMDrvUHXgdWreTa','kaa',4),(16,'$2a$10$/vecdVsYk5GA96YCDhBDCuRyDk8v4gtboHhNpO8sNRf6xjixBCTR.','7894589745','sdfgd@g.com','cbdf','dfgd','sdfd@g,com','$2a$10$YpPlH9of/cgZ6bc37BOeq.a10jWClKR/PU2lo2uj/xWxSvBC.g8vG','het',6),(17,'$2a$10$R./CBaukdok4gQlbZhuHgeFw.9lzCQYMBghK.EGw9IdEmPv8igor.','7598568745','dddfgdf@g.com','dfg','dfg','ddfgdf@g.com','$2a$10$php0PGvzGnMvDeLymVgODe2i2IHyhF76wugGJBRfjojnOnC8lg9am','dfg',6),(18,'$2a$10$NQD6YonxX3eTWff4yJE/FOhEEci3zcUKUX/JPdiRKI9EoiLefCIjm','8498874651','nvsdfgdfgp989@gmail.com','dfg','dfg','dgf@g.com','$2a$10$bFE71p3eslHQjCzCUzIas.uA2RD8DtMrRPPVWi3M.kuZMrhdAell2','dfgsdfsdf',5),(19,'$2a$10$yMRI8hYIy6/QKMKF1gnpTu1bqXGdwxOscNCVxogIH0EEADbGDuK/m','7894654165','nvp95df89@gmail.com','sdf','dfgssd','ddsf@g.com','$2a$10$1BWdK3vsRZnxbFLeDiAfXONpbh2gwo/g13mgJIAathSzEhv5AHi9W','subu',6);
/*!40000 ALTER TABLE `mentor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mentor_calendar`
--

DROP TABLE IF EXISTS `mentor_calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mentor_calendar` (
  `mc_id` bigint(20) NOT NULL,
  `mc_end_date` date DEFAULT NULL,
  `mc_end_time` time DEFAULT NULL,
  `mc_start_date` date DEFAULT NULL,
  `mc_start_time` time DEFAULT NULL,
  `mc_me_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`mc_id`),
  KEY `FKg0vtymuejgf1nynfyxj70y4jt` (`mc_me_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mentor_calendar`
--

LOCK TABLES `mentor_calendar` WRITE;
/*!40000 ALTER TABLE `mentor_calendar` DISABLE KEYS */;
INSERT INTO `mentor_calendar` VALUES (1,'2019-12-06','12:00:00','2019-12-06','09:00:00',19),(2,'2019-12-07','06:00:00','2019-12-07','02:00:00',23),(3,'2019-12-08','06:00:00','2019-12-08','02:00:00',19),(4,'2019-12-09','12:00:00','2019-12-09','09:00:00',23);
/*!40000 ALTER TABLE `mentor_calendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mentor_skill`
--

DROP TABLE IF EXISTS `mentor_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mentor_skill` (
  `ms_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ms_exp` bigint(20) DEFAULT NULL,
  `ms_facilities` varchar(255) DEFAULT NULL,
  `ms_self_rating` bigint(20) DEFAULT NULL,
  `ms_trainings_delivered` varchar(255) DEFAULT NULL,
  `ms_me_id` bigint(20) DEFAULT NULL,
  `ms_sk_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ms_id`),
  KEY `FK49a3ygnib52wsm2kmp7a0937c` (`ms_me_id`),
  KEY `FKgu5jer1ugx4p79xhr6js7jtqs` (`ms_sk_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mentor_skill`
--

LOCK TABLES `mentor_skill` WRITE;
/*!40000 ALTER TABLE `mentor_skill` DISABLE KEYS */;
INSERT INTO `mentor_skill` VALUES (1,7,'notes,lab',5,'7',1,5),(2,6,'notes,handson',4,'6',1,4),(3,8,'notes, record',4,'4',2,4),(4,4,'lab',3,'5',2,2),(5,6,'hands on, notes',5,'7',3,4),(6,5,'records',4,'5',3,5),(7,4,'notes',5,'4',4,1),(8,5,'notes,lab',4,'3',4,5),(9,4,'notes, record',3,'5',5,3),(10,5,'notes,handson',3,'5',5,4),(11,4,'4',5,'3',10,1),(12,4,'2',3,'7',11,1),(13,4,'video training',3,'3',12,2);
/*!40000 ALTER TABLE `mentor_skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `ro_id` int(11) NOT NULL AUTO_INCREMENT,
  `ro_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ro_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'MENTOR'),(2,'TRAINEE');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `technology`
--

DROP TABLE IF EXISTS `technology`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `technology` (
  `te_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `te_duration` varchar(255) DEFAULT NULL,
  `te_prereq` varchar(255) DEFAULT NULL,
  `te_name` varchar(255) DEFAULT NULL,
  `te_toc` varchar(255) DEFAULT NULL,
  `te_image` varchar(800) DEFAULT NULL,
  PRIMARY KEY (`te_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `technology`
--

LOCK TABLES `technology` WRITE;
/*!40000 ALTER TABLE `technology` DISABLE KEYS */;
INSERT INTO `technology` VALUES (1,'2 Months','Basics of C','C++','C Basics, OOPS Concepts,Threads ','https://images.unsplash.com/photo-1497633762265-9d179a990aa6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),(2,'3 Months','C, C++','Java','OOPs Concepts, Cllases and Objects ,Inheritance, Threads','https://images.unsplash.com/photo-1497633762265-9d179a990aa6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),(3,'1 Month','Html, CSS','Bootstrap','HTML Basics, Classes, Scripts','https://images.unsplash.com/photo-1497633762265-9d179a990aa6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),(4,'5 Months','Java','Spring Framework','Java Basics,Dependency Injection, IoC, Spring boot Introduction','https://images.unsplash.com/photo-1497633762265-9d179a990aa6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),(5,'4 Months','Html, CSS','Angular','JS Basics, Modularisation, Classes','https://images.unsplash.com/photo-1497633762265-9d179a990aa6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),(6,'1 Month',' Database Basics','MySQL','Basics,DDL,DML,DCL,TCL,Joins','https://images.unsplash.com/photo-1497633762265-9d179a990aa6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60');
/*!40000 ALTER TABLE `technology` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trainee`
--

DROP TABLE IF EXISTS `trainee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trainee` (
  `tr_id` bigint(20) NOT NULL,
  `tr_confirm_password` varchar(255) DEFAULT NULL,
  `tr_contact_no` varchar(255) DEFAULT NULL,
  `tr_email` varchar(255) DEFAULT NULL,
  `tr_firstname` varchar(255) DEFAULT NULL,
  `tr_lastname` varchar(255) DEFAULT NULL,
  `tr_password` varchar(255) DEFAULT NULL,
  `tr_userid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trainee`
--

LOCK TABLES `trainee` WRITE;
/*!40000 ALTER TABLE `trainee` DISABLE KEYS */;
INSERT INTO `trainee` VALUES (97,'$2a$10$7WJ/DCOwvKfLSuHN.gZcte6FNjYrgRsGyXwv1iXbrlii3RY8pxNte','7418828773','nvp@gmail.com','obuli','obuli','$2a$10$rdi.EVkC98jIjyd7meHn4eFou4w.Uj5jiEaN1Fy0vpGF51wUEfPAG','obu'),(99,'$2a$10$JQyK3UAh8Uk3AzYTVQ4l/eeAGTm79YzJ526wEb1D4NJROlncnx2wu','7541258654','ef@gmail.com','ss','ss','$2a$10$9aJiKjzW1ym/JnizPTC4a.csXntQhtW218Hura1TgDkNA4qj1/Zuy','obuli'),(105,'$2a$10$1nfUKeOE4b3nzrnQUnXK9uZJmJiE/0doi1aPVHE6xiZ.Qsk59HmFi','7418828773','lal@hotmail.com','la','lith','$2a$10$y2vzVRGsY.G8QQS2gdHmXOhCRUUJpJuWhR6xDx7r7tq6Qr8bj/Kyq','lalith');
/*!40000 ALTER TABLE `trainee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `training`
--

DROP TABLE IF EXISTS `training`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `training` (
  `tg_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tg_status` varchar(255) DEFAULT NULL,
  `tg_me_id` bigint(20) DEFAULT NULL,
  `tg_tr_id` bigint(20) DEFAULT NULL,
  `tg_te_id` bigint(20) DEFAULT NULL,
  `tg_progress` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tg_id`),
  KEY `FKgasjjefouws5l6x434nrlt6dk` (`tg_me_id`),
  KEY `FKplyquytxxusj2pqevwp7v1dsi` (`tg_te_id`),
  KEY `FK1n0bwq78qcj0a4e5qcnbkdkvl` (`tg_tr_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `training`
--

LOCK TABLES `training` WRITE;
/*!40000 ALTER TABLE `training` DISABLE KEYS */;
INSERT INTO `training` VALUES (8,'APPROVED',3,90,5,NULL),(12,'APPROVED',4,90,1,NULL),(11,'APPROVED',4,90,5,NULL),(14,'PENDING',4,97,1,NULL),(15,'PENDING',2,97,2,NULL),(16,'PENDING',1,99,5,NULL),(17,'PENDING',1,99,4,NULL),(18,'APPROVED',12,105,2,NULL),(19,'PENDING',2,105,4,NULL),(20,'PENDING',1,105,5,NULL),(21,'PENDING',2,105,2,NULL),(22,'PENDING',11,105,1,NULL);
/*!40000 ALTER TABLE `training` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `us_id` bigint(20) NOT NULL,
  `us_password` varchar(255) DEFAULT NULL,
  `us_username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`us_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (108,'$2a$10$q3fWIMRinQ.l8LYw/AE0wubMNXYMp2YFJ/kxcdmlP.Z1fKId7XPEW','ddsdsds'),(87,'$2a$10$.S5.ltkrkde9P0NWUnNjmefxUYGH2Aj0E1Gl4t3eBC8rGUFXH5EOa','venky'),(107,'$2a$10$JYJaLFMRFqTmjzdFVb9QrOY0LkkhkaT4TeJGVtlIueg3va3v9BdC.','d'),(100,'$2a$10$9aJiKjzW1ym/JnizPTC4a.csXntQhtW218Hura1TgDkNA4qj1/Zuy','obuli'),(101,'$2a$10$0N0NFx.pF0uAOPHoeRRmKOKMsSFjT7j0Wj2HdBDHdoyd8YBscZ2fy','lali'),(102,'$2a$10$S0BomkHUNIeT/o9l0Z83l.qQUmwRFnjudZSBm4kq93vPaGUBPUno.','lalu'),(103,'$2a$10$Ry/XKOI6VOrLeId8ARh0Pu3mrcKsPNOtE2ChjVlEsqymli7tpLzv2','vaasu'),(104,'$2a$10$SEAx47KVU1iBzBv3Cy2/WeYIjUEOpjA9cPzjk6l7xj0YLy7cwxBMi','saravana'),(106,'$2a$10$y2vzVRGsY.G8QQS2gdHmXOhCRUUJpJuWhR6xDx7r7tq6Qr8bj/Kyq','lalith'),(109,'$2a$10$AFi0BHz9yV6ktwE6fQ6ceeQwueJHhKxai8Y5U.VMDrvUHXgdWreTa','kaa'),(110,'$2a$10$YpPlH9of/cgZ6bc37BOeq.a10jWClKR/PU2lo2uj/xWxSvBC.g8vG','het'),(111,'$2a$10$php0PGvzGnMvDeLymVgODe2i2IHyhF76wugGJBRfjojnOnC8lg9am','dfg'),(112,'$2a$10$bFE71p3eslHQjCzCUzIas.uA2RD8DtMrRPPVWi3M.kuZMrhdAell2','dfgsdfsdf'),(113,'$2a$10$1BWdK3vsRZnxbFLeDiAfXONpbh2gwo/g13mgJIAathSzEhv5AHi9W','subu');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_role` (
  `ur_us_id` bigint(20) NOT NULL,
  `ur_ro_id` bigint(20) NOT NULL,
  PRIMARY KEY (`ur_us_id`,`ur_ro_id`),
  KEY `FKjia4161ecu6h4p0egc2oc04lt` (`ur_ro_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (87,1),(100,2),(101,1),(102,1),(103,1),(104,1),(106,2),(107,1),(108,1),(109,1),(110,1),(111,1),(112,1),(113,1);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-11 16:49:07
