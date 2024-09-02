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
-- Table structure for table `lost`
--

DROP TABLE IF EXISTS `lost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lost` (
  `lostno` int NOT NULL AUTO_INCREMENT,
  `losttitle` varchar(50) DEFAULT NULL,
  `lostcontent` varchar(1000) DEFAULT NULL,
  `lostdate` date DEFAULT NULL,
  `lostplace` varchar(30) DEFAULT NULL,
  `losthit` int DEFAULT NULL,
  `member_memid` int NOT NULL,
  PRIMARY KEY (`lostno`),
  KEY `fk_lost_member1_idx` (`member_memid`),
  CONSTRAINT `fk_lost_member1` FOREIGN KEY (`member_memid`) REFERENCES `member` (`memid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lost`
--

LOCK TABLES `lost` WRITE;
/*!40000 ALTER TABLE `lost` DISABLE KEYS */;
INSERT INTO `lost` VALUES (1,'노란색 서핑보드','노란색 서핑보드','2024-08-25','양양역 분실물 센터',5,10006),(2,'검정색 장우산','검정색 장우산','2024-08-25','서울역 분실물 센터',2,10006),(3,'회색 캐리어','회색 캐리어','2024-08-25','인천공항 분실물 센터',1,10006),(4,'녹색 반지갑(김*겸)','녹색 반지갑(김*겸)','2024-08-25','대전역 분실물 센터',8,10006),(5,'흰색 텀블러','흰색 텀블러','2024-08-25','강남역 분실물 센터',13,10005),(6,'검정색 장지갑(추*보)','검정색 장지갑(추*보)','2024-08-29','인천공항 분실물 센터',0,10004),(7,'투명 비닐우산','투명 비닐우산','2024-08-29','광주역 분실물 센터',0,10004),(8,'녹색 텀블러','녹색 텀블러','2024-08-29','속초역 분실물 센터',0,10004),(9,'디지털 백팩','디지털 백팩','2024-08-29','양구역 분실물 센터',0,10004),(10,'갤럭시 버즈','갤럭시 버즈','2024-08-29','부산역 분실물 센터',0,10004),(11,'에어팟','에어팟','2024-08-29','인제역 분실물 센터',0,10004),(12,'갈색 파우치','갈색 파우치','2024-08-29','광주역 분실물 센터',0,10004),(13,'흰색 보조배터리','흰색 보조배터리','2024-08-29','서울역 분실물 센터',0,10004),(14,'검정색 삼성 갤럭시 휴대폰','검정색 삼성 갤럭시 휴대폰','2024-08-29','인천공항 분실물 센터',0,10004),(15,'흰색 USB- C타입 충전기','흰색 USB- C타입 충전기','2024-08-29','대전역 분실물 센터',0,10004),(16,'검정색 빗','검정색 빗','2024-08-29','대구역 분실물 센터',0,10004),(17,'검정색 카드지갑(오*수)','검정색 카드지갑(오*수)','2024-08-29','대전역 분실물 센터',0,10004),(18,'흰색 LG 그램 노트북','흰색 LG 그램 노트북','2024-08-29','강남역 분실물 센터',0,10004),(19,'갈색 여권케이스(이*진)','갈색 여권케이스(이*진)','2024-08-29','인천공항 분실물 센터',0,10004),(20,'검정색 스탠리 텀블러','검정색 스탠리 텀블러','2024-08-29','고성역 분실물 센터',0,10004),(21,'회색 크로스백','회색 크로스백','2024-08-29','대전역 분실물 센터',0,10004),(22,'노란색 필통','노란색 필통','2024-08-29','서울역 분실물 센터',0,10004),(23,'갈색 텀블러','갈색 텀블러','2024-08-29','광주역 분실물 센터',0,10004),(24,'검정색 노트북 파우치','검정색 노트북 파우치','2024-08-29','강남역 분실물 센터',0,10004);
/*!40000 ALTER TABLE `lost` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-02 16:29:45
