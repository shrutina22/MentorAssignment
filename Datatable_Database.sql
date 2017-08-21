-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: datadb
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `datatable`
--

DROP TABLE IF EXISTS `datatable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datatable` (
  `name` varchar(20) DEFAULT NULL,
  `place` varchar(20) DEFAULT NULL,
  `animal` varchar(20) DEFAULT NULL,
  `thing` varchar(20) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datatable`
--

LOCK TABLES `datatable` WRITE;
/*!40000 ALTER TABLE `datatable` DISABLE KEYS */;
INSERT INTO `datatable` VALUES ('Pratiksha Paluskar','Nashik','Peacock','Pencil',1),('Vaidehi Dabir','Ahmedabad','Dog','Mike',2),('Sayali Chhajed','Nagpur','Donkey','Socls',3),('Jinu Joy','Kerala','Cow','Food',4),('Sayali Kakde','Kolkata','Buffalo','Rasgulla',5),('Keshav Deshpande','Aurangabad','Crow','Bag',6),('Aishwarya Deshpande','Nagpur','Hyna','Car',7),('Vishal Patil','Chennai','Giraffe','Mug',8),('Kishan Ambekar','Karnataka','Donkey','Bike',9),('Lakshmi Nair','Bangalore','Duck','Chocolate',10),('Rashmi Pawar','Sangli','Monkey','Scooty',11),('Neha Totla','Jammu & Kashmir','Jackal','Jacket',13),('Abhiruchi Karwa','Boston','Buffalo','Bag',14),('Shruti Nair','Aurangabad','Panda','Ice-Cream',15),('Saket Joshi','Nagpur','Giraffe','Bat',16),('ssss','sssss','ssss','sssss',18),('a','a','a','a',26);
/*!40000 ALTER TABLE `datatable` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-08-18 18:15:35
