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
-- Table structure for table `qna`
--

DROP TABLE IF EXISTS `qna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qna` (
  `qno` int NOT NULL AUTO_INCREMENT,
  `qtitle` varchar(50) DEFAULT NULL,
  `qcontent` varchar(1000) DEFAULT NULL,
  `qdate` date DEFAULT NULL,
  `qstatus` varchar(20) DEFAULT NULL,
  `qhit` int DEFAULT NULL,
  `user_userid` int NOT NULL,
  PRIMARY KEY (`qno`),
  KEY `fk_qna_user1_idx` (`user_userid`),
  CONSTRAINT `fk_qna_user1` FOREIGN KEY (`user_userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qna`
--

LOCK TABLES `qna` WRITE;
/*!40000 ALTER TABLE `qna` DISABLE KEYS */;
INSERT INTO `qna` VALUES (1,'대전역의 위치가 어디인가요?','대전역의 위치가 어디인가요?','2024-08-26','답변대기',7,10194),(2,'어린이 할인 되나요?','어린이 할인은 얼마인가요?','2024-08-25','답변대기',45,10101),(3,'반려동물도 같이 탑승할 수 있나요?','반려동물도 같이 탑승할 수 있나요?','2024-08-29','답변대기',4,10176),(4,'CRX 어플','CRX는 다른 홈페이지처럼 어플은 없나요?','2024-08-29','답변대기',5,10188),(5,'CRX 정기권','CRX는 정기권 서비스는 예정이 없나요?','2024-08-29','답변대기',4,10101),(6,'열차 운행시 약냉방칸은 어디인가요?','열차 운행시 약냉방칸은 어디인가요?','2024-08-29','답변대기',4,10190),(7,'지연배상 신청','지연배상 신청할 경우 계좌반환은 시간이 얼마정도 소요되나요?','2024-08-29','답변대기',2,10191),(8,'관광열차 예약','관광열차는 해당일 몇시까지 예약신청이 가능한가요?','2024-08-29','답변대기',2,10194),(9,'자주 사용하는 카드 즐겨찾기 등록','자주 사용하는 카드 즐겨찾기 등록이 가능한가요?','2024-08-29','답변대기',3,10101),(10,'행선지 즐겨찾기','행선지 즐겨찾기 기능 지원되나요?','2024-08-29','답변대기',3,10176),(11,'환승정보는 어떻게 이용하나요?','환승정보는 내가 하차하는 역 기준으로 조회가 가능한가요? 어떻게 이용하는 건가요?','2024-08-29','답변대기',0,10188);
/*!40000 ALTER TABLE `qna` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-02 16:29:44
