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
-- Table structure for table `paytrain`
--

DROP TABLE IF EXISTS `paytrain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paytrain` (
  `payno` int NOT NULL AUTO_INCREMENT,
  `apply_num` int NOT NULL,
  `reservno` int DEFAULT NULL,
  `paid_amount` int DEFAULT NULL,
  `userid` int DEFAULT NULL,
  `selectedSeats` varchar(255) NOT NULL,
  `hocha` varchar(50) NOT NULL,
  `startname` varchar(100) NOT NULL,
  `endname` varchar(100) NOT NULL,
  `seatType` varchar(50) NOT NULL,
  `startdate` date NOT NULL,
  `trainType` varchar(50) NOT NULL,
  `personnelCount` int NOT NULL,
  `childCount` int NOT NULL,
  `trainno` varchar(50) NOT NULL,
  `depTime` time NOT NULL,
  `arrTime` time NOT NULL,
  `duration` varchar(50) NOT NULL,
  `totalAdultCharge` int DEFAULT NULL,
  `totalChildCharge` int DEFAULT NULL,
  `totalCharge` int DEFAULT NULL,
  `totalDiscount` int DEFAULT NULL,
  `endCharge` int DEFAULT NULL,
  `approvalDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `refund` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`payno`,`apply_num`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paytrain`
--

LOCK TABLES `paytrain` WRITE;
/*!40000 ALTER TABLE `paytrain` DISABLE KEYS */;
INSERT INTO `paytrain` VALUES (1,147604,314,100,10000,'7A,7B,8D,9D','2호차','화천','양양','일반','2024-08-30','CRX',1,3,'1010','17:44:00','19:44:00','02:00:00',17200,46440,68800,5160,63640,'2024-08-30 10:52:00',NULL),(2,494517,309,100,10101,'6A,6B','1호차','행신역','서울역','일반','2024-08-30','KTX',2,0,'405','06:00:00','06:17:00','0시간 17분',16800,0,16800,0,16800,'2024-08-30 09:05:04',NULL),(3,75591736,318,100,10000,'9D,9C','1호차','대전','부산','일반','2024-08-31','SRT',1,1,'357','18:53:00','20:29:00','1시간 36분',33100,29790,66200,3310,62890,'2024-09-02 09:23:41',NULL),(4,75794960,315,100,10000,'6A','1호차','화천','양구','일반','2024-08-31','CRX',1,0,'1008','13:24:00','13:41:00','00:17:00',4800,0,4800,0,4800,'2024-09-02 09:44:58',NULL),(5,75807583,322,100,10000,'7A','1호차','대전','부산','일반','2024-09-04','SRT',1,0,'313','08:54:00','10:33:00','1시간 39분',32700,0,32700,0,32700,'2024-09-02 09:46:15','Y'),(6,20654612,332,100,10206,'10B','1호차','화천','고성','일반','2024-09-05','CRX',0,1,'1009','15:49:00','17:29:00','01:40:00',0,11340,12600,1260,11340,'2024-09-02 16:54:45','Y'),(7,44206328,333,100,10000,'10C','1호차','양구','속초','일반','2024-09-03','CRX',1,0,'1007','12:31:00','13:50:00','01:19:00',10200,0,10200,0,10200,'2024-09-02 16:59:09','Y'),(8,69753030,335,100,10206,'9B,9C,9D,9A','1호차','대전역','수원역','일반','2024-09-06','KTX',2,2,'174','16:48:00','17:55:00','1시간 7분',25800,23220,51600,2580,49020,'2024-09-02 17:03:05','Y'),(9,44579435,338,100,10206,'7A','1호차','행신','서울','일반','2024-09-03','KTX',1,0,'405','06:00:00','06:17:00','0시간 17분',8400,0,8400,0,8400,'2024-09-02 17:28:22','Y');
/*!40000 ALTER TABLE `paytrain` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-02 17:30:00
