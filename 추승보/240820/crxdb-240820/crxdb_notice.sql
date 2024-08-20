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
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notice` (
  `nono` int NOT NULL AUTO_INCREMENT,
  `notitle` varchar(50) DEFAULT NULL,
  `nocontent` varchar(1000) DEFAULT NULL,
  `nodate` date DEFAULT NULL,
  `nofilename` varchar(150) DEFAULT NULL,
  `nofilepath` varchar(550) DEFAULT NULL,
  `nohit` int DEFAULT NULL,
  `member_memid` int NOT NULL,
  PRIMARY KEY (`nono`),
  KEY `fk_notice_member_idx_idx` (`member_memid`),
  CONSTRAINT `fk_notice_member_idx` FOREIGN KEY (`member_memid`) REFERENCES `member` (`memid`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT INTO `notice` VALUES (1,'네이버페이 결제 프로모션 이벤트 안내','네이버페이 결제 프로모션 이벤트 안내 내용입니다.','2024-08-09',NULL,NULL,NULL,10001),(2,'특별재난지역 수해복구 자원봉사자 지원 알림',' 운임할인 : 특별재난지역 선포지역 자원봉사자에 대하여 SRT 운임 할인','2024-07-29',NULL,NULL,NULL,10002),(3,'카카오페이 프로모션 이벤트','카카오페이 프로모션 이벤트 내용입니다.','2024-06-15',NULL,NULL,NULL,10003),(7,'SDFDSF','SDFDSF','2024-06-05',NULL,NULL,NULL,10001),(11,'ㅎㅇㅎ','ㅎㅇ',NULL,NULL,NULL,1,10001),(12,'ㅎㅇ','ㅎㅇ',NULL,NULL,NULL,2,10002),(63,'11111aaaaaaaaa','a111111aaaaaaa','2024-08-20',NULL,NULL,2,10004),(67,'ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ    ㅁ','ㅁㅁ','2024-08-20',NULL,NULL,3,10004),(68,'111111','1111','2024-08-20',NULL,NULL,13,10004);
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-20 17:43:52
