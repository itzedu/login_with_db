CREATE DATABASE  IF NOT EXISTS `login_ci` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `login_ci`;
-- MySQL dump 10.13  Distrib 5.5.24, for osx10.5 (i386)
--
-- Host: 127.0.0.1    Database: login_ci
-- ------------------------------------------------------
-- Server version	5.5.34

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Andrew','Lee','andrewlee@gmail.com','password','0000-00-00 00:00:00',NULL),(2,'Eduardo','Baik','edubaik@hotmail.com','password',NULL,NULL),(3,'Eric','Choi','ericchoi@gmail.com','password','2014-08-30 06:49:30',NULL),(4,'Michael','Choi','michael@codingdojo.com','password','2014-08-30 06:50:30','2014-08-30 06:50:30'),(5,'Emerson','Baik','emerson@email.com','password','2014-08-30 06:54:52','2014-08-30 06:54:52'),(6,'Priscilla','Baik','pri@email.com','password','2014-08-31 03:28:00','2014-08-31 03:28:00'),(7,'James','Lee','james@hotmail.com','password','2014-08-31 03:29:46','2014-08-31 03:29:46'),(8,'Vivian','Huang','vivian@hotmail.com','password','2014-08-31 03:30:48','2014-08-31 03:30:48'),(9,'John','Doe','john@email.com','password','2014-08-31 03:32:14','2014-08-31 03:32:14'),(10,'Jane','Doe','jane@email.com','password','2014-08-31 03:33:20','2014-08-31 03:33:20'),(11,'sadfdsafsadf','sadfsdafsad','fat@gmail.com','password','2014-08-31 03:33:49','2014-08-31 03:33:49'),(12,'asdfdsafasdf','dsafds','taf@gmail.com','password','2014-08-31 03:34:49','2014-08-31 03:34:49'),(13,'asdfdsafasdf','dsafds','taf1@gmail.com','password','2014-08-31 03:35:05','2014-08-31 03:35:05');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-08-30 20:18:04
