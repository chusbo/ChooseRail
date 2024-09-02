-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 211.230.242.63    Database: crxdb
-- ------------------------------------------------------
-- Server version	8.0.37

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `crx_fare`
--

DROP TABLE IF EXISTS `crx_fare`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crx_fare` (
  `id` int NOT NULL AUTO_INCREMENT,
  `departure_station` varchar(50) NOT NULL,
  `arrival_station` varchar(50) NOT NULL,
  `fare_special` int NOT NULL,
  `fare_standard` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crx_fare`
--

LOCK TABLES `crx_fare` WRITE;
/*!40000 ALTER TABLE `crx_fare` DISABLE KEYS */;
INSERT INTO `crx_fare` VALUES (1,'화천','양구',18300,15300),(2,'화천','인제',18000,15400),(3,'화천','고성',21800,18400),(4,'화천','속초',25000,22000),(5,'화천','양양',25000,22000),(6,'양구','인제',9500,7500),(7,'양구','고성',16000,13000),(8,'양구','속초',14000,11000),(9,'양구','양양',17400,12800),(10,'인제','고성',14000,11000),(11,'인제','속초',8000,6500),(12,'인제','양양',7200,5700),(13,'고성','속초',3200,2400),(14,'고성','양양',7000,5600),(15,'속초','양양',15500,12500),(16,'양양','속초',4600,2200),(17,'양양','고성',8700,3500),(18,'양양','인제',14200,7400),(19,'양양','양구',18000,11800),(20,'양양','화천',25000,22000),(21,'속초','고성',3200,2400),(22,'속초','인제',7600,6700),(23,'속초','양구',14000,11000),(24,'속초','화천',19000,16000),(25,'고성','화천',18000,15000),(26,'고성','양구',16000,13000),(27,'인제','화천',15700,12700),(28,'인제','양구',9500,7500),(29,'양구','화천',15000,12000),(30,'고성','양구',16000,13000),(31,'고성','인제',14000,11000),(32,'속초','양양',15500,12500),(33,'속초','화천',19000,16000),(34,'속초','양구',14000,11000),(35,'양양','화천',25000,22000);
/*!40000 ALTER TABLE `crx_fare` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-02 17:29:59
