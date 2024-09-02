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
-- Table structure for table `faq`
--

DROP TABLE IF EXISTS `faq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq` (
  `faqno` int NOT NULL AUTO_INCREMENT,
  `faqtitle` varchar(50) DEFAULT NULL,
  `faqcontent` varchar(1000) DEFAULT NULL,
  `faqdate` date DEFAULT NULL,
  `faqhit` int DEFAULT NULL,
  `member_memid` int NOT NULL,
  PRIMARY KEY (`faqno`),
  KEY `fk_faq_member1_idx` (`member_memid`),
  CONSTRAINT `fk_faq_member1` FOREIGN KEY (`member_memid`) REFERENCES `member` (`memid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq`
--

LOCK TABLES `faq` WRITE;
/*!40000 ALTER TABLE `faq` DISABLE KEYS */;
INSERT INTO `faq` VALUES (1,'[승차권] CRX 회원이 아닌데 승차권을 살 수 있나요?','CRX에서는 온라인 결제는 회원가입을 해야 이용이 가능하며, \r\n\r\n회원이 아니실 경우 현장에서 발권하여 이용해주시기 바랍니다.','2024-08-25',3,10006),(2,'[승차권] 승차권을 환불했는데 결제금액 환불은 언제되나요?','당일 결제, 당일 환불하신 경우 당일 취소 처리됩니다.(부분취소 제외)\r\n\r\n그 외의 경우는 결제하신 수단에 따라 환불소요기간이 다르며, 카드결제건의 경우 카드사마다 환불방식과 기간이 상이할 수 있음을 알려드립니다.\r\n\r\n- 신용카드 : 승차권 환불일로부터 약 5~7일 소요\r\n\r\n- 체크카드 : 승차권 환불일로부터 약 6~8일 소요\r\n\r\n- 계좌이체 : 승차권 환불일로부터 약 5~10일 소요','2024-08-25',1,10006),(3,'[역사 이용] 유실물 문의는 어디로 해야하나요?','1. 역에서 분실했거나 하차 직후 분실한 사실을 아셨다면, 해당 역 직원에게 즉시 문의해주시기 바랍니다.\r\n\r\n2. 열차 탑승 후 분실한 사실을 아셨다면, 승무원에게 즉시 문의해주시기 바랍니다.\r\n\r\n(CRX 홈페이지 챗봇으로 승무원 호출메시지 이용 가능)\r\n\r\n3. 하차 후 분실한 사실을 아셨다면, 유실물센터 또는 고객센터로 신고해주시기 바랍니다.\r\n\r\n<긴급 연락처>\r\n\r\n- 고객센터 : 1005-1005','2024-08-25',2,10006),(4,'[승차권] 구매한 승차권의 날짜와 시간을 변경하려면 어떻게 해야하나요?','CRX 홈페이지를 통해 예매하신 승차권을 변경하고자 하시는 경우, \r\n\r\n승차권을 환불하고 새로 예매하시거나, 매표창구에 방문하여 변경을 요청하여 주시기 바랍니다.\r\n\r\n단, 기존에 예매하신 승차권을 환불하고 새로 구입하실 때는 약관에 따라 위약금이 발생할 수 있습니다. \r\n\r\n역 창구에서 구입하신 승차권은 창구에서만 변경이 가능합니다.','2024-08-25',4,10006),(5,'[승차권] 승차권을 변경하고 싶어요.','승차권을 발권 받은 뒤, 열차시각, 구간, 좌석 등을 변경하는 방법은 다음과 같습니다.\r\n\r\n- CRX 홈페이지에서 발권 받은 승차권 : 승차권 환불 후 다시 구입\r\n\r\n- 역 창구에서 발권 받은 승차권 : 매표창구에 방문하여 변경 요청\r\n\r\n승차권을 환불 또는 변경할 경우, CRX 여객운송약관에 따라 위약금이 발생할 수 있습니다.','2024-08-25',9,10006),(6,'[제도] 장애인 도우미 서비스를 신청할 수 있나요?','휠체어 대여, 휠체어리프트 사용, 시각장애인 동행 서비스 이용을 희망하시는 고객님께선 출발역에 열차 출발시각보다 약 30분 일찍 도착하셔서 역사 내 안내센터를 방문하여 직원에게 말씀해주세요. 친절하게 도와드리겠습니다.\r\n\r\n출발하는 역 직원에게 서비스를 신청해주시면 승무원과 도착역의 직원에게도 공유하여 도움을 이어받으실 수 있습니다.\r\n\r\n미리 서비스를 예약하고 싶을 땐 아래 연락처로 문의 부탁드립니다.\r\n\r\n- CRX 고객센터 : 1005-1005','2024-08-29',1,10005),(7,'[열차 이용] CRX 내에 캐리어를 보관 할 수 있는 곳이 있나요?','각 열차 호선 사이에 짐칸이 배치 되어 있으며 상단에 선반에도 캐리어를 보관 하실 수 있습니다.','2024-08-29',1,10005),(8,'[제도] 유아 할인 되나요?','보호자 1명당 만 6세 미만의 유아 1명은 무임으로 이용할 수 있습니다.\r\n\r\n다만, 무임의 경우, 좌석을 제공하지 않기 때문에 안고 타셔야 하며 별도로 발권하지 않으셔도 됩니다.\r\n\r\n만약 만 6세 미만의 유아에게 좌석을 이용하고 싶다면 기본 운임의 90% 할인을 적용합니다. \r\n\r\nCRX 홈페이지에서 예매할 땐 승차인원을 우선 \'어린이\'로 선택해주시면 됩니다.','2024-08-29',4,10005),(9,'[열차 이용] CRX 내에 콘센트가 배치되어 있나요?','각 좌석 바로 밑에 콘센트가 배치 되어 있습니다.','2024-08-29',1,10005),(10,'[역사 이용] 역에 있는 자동발매기는 어떤 기능이 있나요?','역사 내 자동발매기를 통해 승차권 구입, 환불, 영수증 재발행 기능을 이용할 수 있습니다.\r\n\r\nCRX 홈페이지에서 구매한 승차권을 재발행 받고자 하시는 경우엔 매표창구를 방문해주시기 바랍니다.','2024-08-29',1,10005),(11,'[지연배상] 열차 지연에 따른 배상 안내','천재지변 이외 회사의 귀책사유로 CRX가 20분 이상 지연된 경우\r\n소비자 분쟁 해결기준(공정거래위원회 고시)에 정한 금액을 배상해드립니다.\r\n\r\n* 신용카드로 결제한 경우 신용카드 계좌로 자동 환불되며, 현금의 경우 지연된 날부터 1년 이내에 승차권을 전국 모든 역에 제출하여 배상 신청\r\n\r\n* 특실 요금은 배상금액에 포함되지 않습니다.\r\n\r\n지연시간                                배상금액\r\n\r\n20분 이상 ~ 40분 미만                12.5%\r\n\r\n40분 이상 ~ 60분 미만                25%\r\n\r\n60분 이상                                 50%','2024-08-29',4,10005),(12,'[열차 이용] 객실 냉난방 불량 발생 시 보상은 어떻게 이루어지나요?','객차 내 냉방, 난방 장치 불량으로 이용에 불편이 발생한 경우 승차권에 표시된 영수금액의 50%를 환불해드리오니,\r\n\r\n위와 같은 상황이 발생하면 즉시 객실장이나 승무원에게 말씀해주시기 바랍니다.\r\n\r\n보상 대상인 승차권은 승차일로부터 1년 이내에 역 창구에 제출하여 보상금액(영수금액의 50%)을 결제하신 수단으로 환불받으실 수 있습니다.','2024-08-29',1,10005),(13,'[기타] CRX에는 왜 식당칸이 없나요?','보다 쾌적한 환경을 조성하기 위해 식당 칸을 만들지 않았습니다.\r\n\r\n대신 자판기에 음료와 과자류가 있으니 2호차와 6호차에 있는 자판기를 이용해 주시기 바랍니다.\r\n\r\n자판기는 카드, 현금 모두 사용 가능 하나 일부 카드(하나카드)는 결제 되지 않으니 참고 바랍니다.','2024-08-29',1,10004),(14,'[지연보상] 여름철 선로 과열로 감속 운행 시 지연보상을 받을 수 있나요?','여름철 폭염으로 인해 선로의 온도가 상승한 경우, 열차의 안전운행을 위하여 부득이 감속운행을 하게 됩니다.\r\n\r\n이로 인해 지연이 발생한 경우, 이는 천재지변에 의한 것으로서 지연보상 대상에서 제외됩니다. ','2024-08-29',3,10004);
/*!40000 ALTER TABLE `faq` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-02 16:29:42
