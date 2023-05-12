-- MySQL dump 10.13  Distrib 8.0.25, for Linux (x86_64)
--
-- Host: localhost    Database: module2
-- ------------------------------------------------------
-- Server version	8.0.25-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `surname` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `price` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Brandon','Scott','brandon.scott@mysql.com',1,10),(2,'Stewart','Mitchell','stewart.mitchell@mysql.com',2,10),(3,'Lisa','Mathis','lisa.mathis@mysql.com',3,10),(4,'Felicity','Young','felicity.young@mysql.com',4,20),(5,'Una','Ferguson','una.ferguson@mysql.com',1,20),(6,'Diana','Wright','diana.wright@mysql.com',2,20),(7,'Olivia','Mackenzie','olivia.mackenzie@mysql.com',3,30),(8,'Anthony','Ogden','anthony.ogden@mysql.com',4,30),(9,'Trevor','Ogden','trevor.ogden@mysql.com',1,30),(10,'Gavin','Miller','gavin.miller@mysql.com',2,35),(11,'Chloe','Abraham','chloe.abraham@mysql.com',3,38),(12,'Amanda','Edmunds','amanda.edmunds@mysql.com',4,41),(13,'Andrea','Hart','andrea.hart@mysql.com',1,44),(14,'Charles','Terry','charles.terry@mysql.com',2,47),(15,'Joan','Fraser','joan.fraser@mysql.com',3,50),(16,'Blake','Bower','blake.bower@mysql.com',4,53),(17,'Carolyn','Taylor','carolyn.taylor@mysql.com',1,56),(18,'Sean','Parr','sean.parr@mysql.com',2,59),(19,'Connor','Cameron','connor.cameron@mysql.com',3,62),(20,'Zoe','Nolan','zoe.nolan@mysql.com',4,65);
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

-- Dump completed on 2021-07-13 15:43:20
