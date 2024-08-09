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
-- Table structure for table `tourreserv`
--

DROP TABLE IF EXISTS `tourreserv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tourreserv` (
  `reservno` int NOT NULL AUTO_INCREMENT,
  `tourtitle` varchar(100) DEFAULT NULL,
  `tourno` varchar(50) DEFAULT NULL,
  `tourname` varchar(20) DEFAULT NULL,
  `tourcount` int DEFAULT NULL,
  `tourdate` varchar(20) DEFAULT NULL,
  `totalcoin` varchar(20) DEFAULT NULL,
  `userid` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`reservno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tourreserv`
--

LOCK TABLES `tourreserv` WRITE;
/*!40000 ALTER TABLE `tourreserv` DISABLE KEYS */;
INSERT INTO `tourreserv` VALUES (1,NULL,'1',NULL,2,'2024년 08월 14일','4',NULL),(2,'DLT 바다열차 속초↔양양','DLT1005','DLT 바다열차',1,'2024년 08월 22일','20000','10100'),(3,'CRX 관광열차','CRX1005','CRX 관광열차',5,'2024년 08월 22일','100000','10100');
/*!40000 ALTER TABLE `tourreserv` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-09 17:28:08
