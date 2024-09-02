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
-- Table structure for table `reply`
--

DROP TABLE IF EXISTS `reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reply` (
  `rno` int NOT NULL AUTO_INCREMENT,
  `rcontent` varchar(1000) DEFAULT NULL,
  `rdate` date DEFAULT NULL,
  `member_memid` int NOT NULL,
  `qna_qno` int NOT NULL,
  PRIMARY KEY (`rno`),
  KEY `fk_reply_member1_idx` (`member_memid`),
  KEY `fk_reply_qna1_idx` (`qna_qno`),
  CONSTRAINT `fk_reply_member1` FOREIGN KEY (`member_memid`) REFERENCES `member` (`memid`),
  CONSTRAINT `fk_reply_qna1` FOREIGN KEY (`qna_qno`) REFERENCES `qna` (`qno`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply`
--

LOCK TABLES `reply` WRITE;
/*!40000 ALTER TABLE `reply` DISABLE KEYS */;
INSERT INTO `reply` VALUES (1,'어린이 요금은 성인 요금의 90%로 책정되어 있습니다. 이용 시 참고 부탁드립니다.','2024-08-25',10005,2),(2,'다른 고객들의 이용에 불편을 끼쳐드릴 수 있어서 반려동물 탑승은 제한됩니다. 감사합니다.','2024-08-29',10006,3),(3,'현재까지는 계획이 없습니다. 어플을 사용하게 될 경우 미리 공지하겠습니다.','2024-08-29',10006,4),(4,'현재까지는 예정이 없습니다. 이용해 주셔서 감사합니다.','2024-08-29',10006,5),(5,'영업일 2~3일 정도 소요됩니다.','2024-08-29',10006,7),(6,'관광열차는 해당일 오전 12시까지 예약이 가능하며 이후 시간은 다음 날 예약이 가능합니다.','2024-08-29',10006,8),(7,'현재 지원하지 않고 있는 기능입니다. 추후 지원 시 공지하도록 하겠습니다. 감사합니다.','2024-08-29',10005,9),(8,'현재 지원하지 않고 있는 기능입니다. 추후 지원 시 공지하겠습니다. 감사합니다.','2024-08-29',10005,10);
/*!40000 ALTER TABLE `reply` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-02 16:29:43
