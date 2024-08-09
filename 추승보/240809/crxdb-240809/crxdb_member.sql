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
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `memid` int NOT NULL,
  `mempwd` varchar(50) DEFAULT NULL,
  `memname` varchar(50) DEFAULT NULL,
  `memmail` varchar(100) DEFAULT NULL,
  `memtel` varchar(50) DEFAULT NULL,
  `memdate` date DEFAULT NULL,
  `memgender` varchar(10) DEFAULT NULL,
  `memage` int DEFAULT NULL,
  `memgrade` varchar(20) DEFAULT NULL,
  `memadd` varchar(100) DEFAULT NULL,
  `user_userid` int NOT NULL,
  `diivision_divno` varchar(10) NOT NULL,
  PRIMARY KEY (`memid`),
  KEY `userid_idx` (`user_userid`),
  KEY `divno_idx` (`diivision_divno`),
  CONSTRAINT `divno` FOREIGN KEY (`diivision_divno`) REFERENCES `division` (`divno`),
  CONSTRAINT `userid` FOREIGN KEY (`user_userid`) REFERENCES `user` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (10000,'1234','김의겸',NULL,NULL,NULL,NULL,NULL,NULL,NULL,10000,'CRX00'),(10001,'10001','김지민','crx0001@crx.com','010-8862-6243','2016-10-28','남성',40,'부장','대전광역시 서구 둔산대로 001',10001,'CRX01'),(10002,'10002','이수빈','crx0002@crx.com','010-5590-3695','2012-07-07','여성',45,'처장','대전광역시 서구 둔산대로 002',10002,'CRX01'),(10003,'10003','박지훈','crx0003@crx.com','010-5137-0767','2022-05-29','남성',45,'과장','대전광역시 서구 둔산대로 003',10003,'CRX01'),(10004,'10004','최유리','crx0004@crx.com','010-6590-4137','2011-05-08','여성',44,'부장','대전광역시 서구 둔산대로 004',10004,'CRX02'),(10005,'10005','강민석','crx0005@crx.com','010-5473-5519','2011-09-26','여성',58,'처장','대전광역시 서구 둔산대로 005',10005,'CRX02'),(10006,'10006','정하늘','crx0006@crx.com','010-8770-0963','2022-07-12','남성',44,'과장','대전광역시 서구 둔산대로 006',10006,'CRX02'),(10007,'10007','조한별','crx0007@crx.com','010-4485-8902','2011-07-21','남성',55,'부장','대전광역시 서구 둔산대로 007',10007,'CRX03'),(10008,'10008','서연수','crx0008@crx.com','010-3898-1782','2020-08-16','여성',42,'처장','대전광역시 서구 둔산대로 008',10008,'CRX03'),(10009,'10009','임준호','crx0009@crx.com','010-2614-9945','2012-10-11','남성',41,'과장','대전광역시 서구 둔산대로 009',10009,'CRX03'),(10010,'10010','하윤서','crx0010@crx.com','010-7144-7256','2017-02-21','여성',45,'부장','대전광역시 서구 둔산대로 010',10010,'CRX04'),(10011,'10011','유진호','crx0011@crx.com','010-4921-9582','2014-08-19','여성',50,'처장','대전광역시 서구 둔산대로 011',10011,'CRX04'),(10012,'10012','장예린','crx0012@crx.com','010-5414-7996','2015-07-06','여성',41,'과장','대전광역시 서구 둔산대로 012',10012,'CRX04'),(10013,'10013','노경민','crx0013@crx.com','010-1210-3074','2012-07-26','남성',32,'사원','대전광역시 서구 둔산대로 013',10013,'CRX04'),(10014,'10014','송은지','crx0014@crx.com','010-6285-3679','2024-01-20','여성',27,'사원','대전광역시 서구 둔산대로 014',10014,'CRX02'),(10015,'10015','문태현','crx0015@crx.com','010-4013-9144','2015-06-04','남성',28,'사원','대전광역시 서구 둔산대로 015',10015,'CRX02'),(10016,'10016','오하나','crx0016@crx.com','010-9762-0050','2011-06-02','여성',37,'사원','대전광역시 서구 둔산대로 016',10016,'CRX03'),(10017,'10017','배다빈','crx0017@crx.com','010-9211-1784','2011-11-23','여성',28,'사원','대전광역시 서구 둔산대로 017',10017,'CRX04'),(10018,'10018','신경호','crx0018@crx.com','010-7651-4899','2012-04-09','남성',35,'사원','대전광역시 서구 둔산대로 018',10018,'CRX02'),(10019,'10019','최지은','crx0019@crx.com','010-4293-2119','2021-05-12','여성',32,'사원','대전광역시 서구 둔산대로 019',10019,'CRX02'),(10020,'10020','이서준','crx0020@crx.com','010-0961-5981','2020-05-07','남성',22,'사원','대전광역시 서구 둔산대로 020',10020,'CRX02'),(10021,'10021','박하은','crx0021@crx.com','010-8933-6573','2018-12-08','여성',27,'사원','대전광역시 서구 둔산대로 021',10021,'CRX02'),(10022,'10022','김성민','crx0022@crx.com','010-8258-3538','2014-04-19','남성',32,'사원','대전광역시 서구 둔산대로 022',10022,'CRX02'),(10023,'10023','전지윤','crx0023@crx.com','010-5045-4180','2018-06-29','여성',32,'사원','대전광역시 서구 둔산대로 023',10023,'CRX02'),(10024,'10024','채우석','crx0024@crx.com','010-6981-9246','2017-10-14','남성',28,'사원','대전광역시 서구 둔산대로 024',10024,'CRX01'),(10025,'10025','강하영','crx0025@crx.com','010-6868-8537','2013-01-24','여성',33,'사원','대전광역시 서구 둔산대로 025',10025,'CRX01'),(10026,'10026','허준','crx0026@crx.com','010-8168-8025','2018-04-12','남성',39,'사원','대전광역시 서구 둔산대로 026',10026,'CRX02'),(10027,'10027','윤수정','crx0027@crx.com','010-1688-5527','2013-10-17','여성',38,'사원','대전광역시 서구 둔산대로 027',10027,'CRX02'),(10028,'10028','오민석','crx0028@crx.com','010-7908-0063','2019-09-15','남성',34,'사원','대전광역시 서구 둔산대로 028',10028,'CRX04'),(10029,'10029','양서연','crx0029@crx.com','010-7113-0057','2023-03-08','여성',28,'사원','대전광역시 서구 둔산대로 029',10029,'CRX01'),(10030,'10030','하성준','crx0030@crx.com','010-4005-0770','2012-09-15','남성',32,'사원','대전광역시 서구 둔산대로 030',10030,'CRX03'),(10031,'10031','문정훈','crx0031@crx.com','010-2162-9531','2011-09-22','남성',27,'사원','대전광역시 서구 둔산대로 031',10031,'CRX02'),(10032,'10032','조윤아','crx0032@crx.com','010-2352-5340','2024-03-15','여성',32,'사원','대전광역시 서구 둔산대로 032',10032,'CRX01'),(10033,'10033','안지현','crx0033@crx.com','010-2566-1563','2010-03-05','남성',25,'사원','대전광역시 서구 둔산대로 033',10033,'CRX02'),(10034,'10034','백지현','crx0034@crx.com','010-2674-9309','2022-07-21','여성',38,'사원','대전광역시 서구 둔산대로 034',10034,'CRX04'),(10035,'10035','심영호','crx0035@crx.com','010-3020-9105','2019-07-11','남성',32,'사원','대전광역시 서구 둔산대로 035',10035,'CRX03'),(10036,'10036','신주희','crx0036@crx.com','010-9836-9045','2018-06-03','여성',30,'사원','대전광역시 서구 둔산대로 036',10036,'CRX02'),(10037,'10037','장준서','crx0037@crx.com','010-0437-3744','2020-11-30','남성',34,'사원','대전광역시 서구 둔산대로 037',10037,'CRX03'),(10038,'10038','권민재','crx0038@crx.com','010-3838-8522','2011-08-14','남성',34,'사원','대전광역시 서구 둔산대로 038',10038,'CRX03'),(10039,'10039','송하늘','crx0039@crx.com','010-9897-4201','2011-12-09','여성',34,'사원','대전광역시 서구 둔산대로 039',10039,'CRX01'),(10040,'10040','민세영','crx0040@crx.com','010-0748-0628','2011-04-27','여성',34,'사원','대전광역시 서구 둔산대로 040',10040,'CRX04'),(10041,'10041','이재훈','crx0041@crx.com','010-7151-4971','2015-01-05','남성',32,'사원','대전광역시 서구 둔산대로 041',10041,'CRX02'),(10042,'10042','정미래','crx0042@crx.com','010-5319-0842','2022-02-26','여성',33,'사원','대전광역시 서구 둔산대로 042',10042,'CRX03'),(10043,'10043','서현수','crx0043@crx.com','010-5741-3153','2022-07-31','남성',36,'사원','대전광역시 서구 둔산대로 043',10043,'CRX04'),(10044,'10044','강소연','crx0044@crx.com','010-5073-5193','2011-02-05','여성',36,'사원','대전광역시 서구 둔산대로 044',10044,'CRX02'),(10045,'10045','오진수','crx0045@crx.com','010-4148-7017','2013-11-20','남성',32,'사원','대전광역시 서구 둔산대로 045',10045,'CRX04'),(10046,'10046','정태진','crx0046@crx.com','010-9408-4363','2015-04-15','남성',28,'사원','대전광역시 서구 둔산대로 046',10046,'CRX04'),(10047,'10047','임서윤','crx0047@crx.com','010-4556-3714','2017-03-21','여성',37,'사원','대전광역시 서구 둔산대로 047',10047,'CRX02'),(10048,'10048','박현우','crx0048@crx.com','010-5996-8584','2017-04-08','남성',32,'사원','대전광역시 서구 둔산대로 048',10048,'CRX01'),(10049,'10049','김주원','crx0049@crx.com','010-1410-0600','2022-12-03','남성',32,'사원','대전광역시 서구 둔산대로 049',10049,'CRX01'),(10050,'10050','이진영','crx0050@crx.com','010-7133-4178','2023-12-23','남성',38,'사원','대전광역시 서구 둔산대로 050',10050,'CRX02'),(10051,'10051','하서연','crx0051@crx.com','010-0599-5646','2019-06-24','여성',36,'사원','대전광역시 서구 둔산대로 051',10051,'CRX03'),(10052,'10052','조민석','crx0052@crx.com','010-2819-8020','2012-06-02','남성',39,'사원','대전광역시 서구 둔산대로 052',10052,'CRX04'),(10053,'10053','신유진','crx0053@crx.com','010-5875-9369','2023-07-31','여성',38,'사원','대전광역시 서구 둔산대로 053',10053,'CRX03'),(10054,'10054','양은수','crx0054@crx.com','010-0485-0019','2022-09-23','남성',36,'사원','대전광역시 서구 둔산대로 054',10054,'CRX03'),(10055,'10055','문서우','crx0055@crx.com','010-8826-5158','2023-09-20','여성',28,'사원','대전광역시 서구 둔산대로 055',10055,'CRX04'),(10056,'10056','이수연','crx0056@crx.com','010-9345-3556','2024-05-10','여성',28,'사원','대전광역시 서구 둔산대로 056',10056,'CRX02'),(10057,'10057','최지훈','crx0057@crx.com','010-3027-1354','2021-04-28','남성',34,'사원','대전광역시 서구 둔산대로 057',10057,'CRX01'),(10058,'10058','전민서','crx0058@crx.com','010-8625-0052','2016-06-17','여성',31,'사원','대전광역시 서구 둔산대로 058',10058,'CRX01'),(10059,'10059','배수정','crx0059@crx.com','010-9379-6957','2019-10-17','여성',33,'사원','대전광역시 서구 둔산대로 059',10059,'CRX02'),(10060,'10060','강다은','crx0060@crx.com','010-6621-5678','2022-07-24','여성',37,'사원','대전광역시 서구 둔산대로 060',10060,'CRX01'),(10061,'10061','장우진','crx0061@crx.com','010-0082-3924','2023-10-23','남성',39,'사원','대전광역시 서구 둔산대로 061',10061,'CRX03'),(10062,'10062','노성훈','crx0062@crx.com','010-6149-5744','2010-05-28','남성',39,'사원','대전광역시 서구 둔산대로 062',10062,'CRX01'),(10063,'10063','서지훈','crx0063@crx.com','010-5254-5333','2011-05-02','남성',38,'사원','대전광역시 서구 둔산대로 063',10063,'CRX03'),(10064,'10064','조하늘','crx0064@crx.com','010-9821-7407','2021-02-24','여성',38,'사원','대전광역시 서구 둔산대로 064',10064,'CRX02'),(10065,'10065','임태훈','crx0065@crx.com','010-5808-7709','2011-08-27','남성',33,'사원','대전광역시 서구 둔산대로 065',10065,'CRX01'),(10066,'10066','신하연','crx0066@crx.com','010-1358-3733','2016-10-06','여성',31,'사원','대전광역시 서구 둔산대로 066',10066,'CRX04'),(10067,'10067','윤시현','crx0067@crx.com','010-4542-2904','2011-04-26','여성',33,'사원','대전광역시 서구 둔산대로 067',10067,'CRX04'),(10068,'10068','권도윤','crx0068@crx.com','010-7454-7860','2020-03-21','여성',29,'사원','대전광역시 서구 둔산대로 068',10068,'CRX02'),(10069,'10069','김은지','crx0069@crx.com','010-7650-7125','2013-12-10','여성',32,'사원','대전광역시 서구 둔산대로 069',10069,'CRX01'),(10070,'10070','오유진','crx0070@crx.com','010-3939-7731','2020-01-28','여성',28,'사원','대전광역시 서구 둔산대로 070',10070,'CRX02'),(10071,'10071','하경민','crx0071@crx.com','010-3942-1248','2016-07-03','남성',24,'사원','대전광역시 서구 둔산대로 071',10071,'CRX04'),(10072,'10072','채수빈','crx0072@crx.com','010-0135-9449','2020-01-29','여성',28,'사원','대전광역시 서구 둔산대로 072',10072,'CRX03'),(10073,'10073','송다연','crx0073@crx.com','010-5498-8364','2017-11-06','여성',30,'사원','대전광역시 서구 둔산대로 073',10073,'CRX03'),(10074,'10074','정윤서','crx0074@crx.com','010-5397-4590','2019-12-15','여성',25,'사원','대전광역시 서구 둔산대로 074',10074,'CRX02'),(10075,'10075','최성진','crx0075@crx.com','010-5963-2542','2017-02-07','남성',37,'사원','대전광역시 서구 둔산대로 075',10075,'CRX04'),(10076,'10076','이예진','crx0076@crx.com','010-8292-0112','2018-05-18','여성',33,'사원','대전광역시 서구 둔산대로 076',10076,'CRX01'),(10077,'10077','이유리','crx0077@crx.com','010-4215-2350','2023-05-31','여성',28,'사원','대전광역시 서구 둔산대로 077',10077,'CRX02'),(10078,'10078','박다은','crx0078@crx.com','010-4871-4258','2019-11-03','여성',27,'사원','대전광역시 서구 둔산대로 078',10078,'CRX01'),(10079,'10079','김승현','crx0079@crx.com','010-8819-3220','2024-03-15','남성',34,'사원','대전광역시 서구 둔산대로 079',10079,'CRX02'),(10080,'10080','권태우','crx0080@crx.com','010-6747-2722','2014-12-18','남성',39,'사원','대전광역시 서구 둔산대로 080',10080,'CRX02'),(10081,'10081','오하연','crx0081@crx.com','010-2010-8941','2022-10-12','여성',32,'사원','대전광역시 서구 둔산대로 081',10081,'CRX01'),(10082,'10082','이수호','crx0082@crx.com','010-0789-1263','2015-10-25','남성',38,'사원','대전광역시 서구 둔산대로 082',10082,'CRX02'),(10083,'10083','하나래','crx0083@crx.com','010-4491-7551','2016-04-22','여성',31,'사원','대전광역시 서구 둔산대로 083',10083,'CRX01'),(10084,'10084','정하나','crx0084@crx.com','010-9363-1504','2023-11-22','여성',34,'사원','대전광역시 서구 둔산대로 084',10084,'CRX04'),(10085,'10085','송현주','crx0085@crx.com','010-8825-3952','2014-11-03','여성',31,'사원','대전광역시 서구 둔산대로 085',10085,'CRX03'),(10086,'10086','박성호','crx0086@crx.com','010-7680-4370','2022-12-24','남성',28,'사원','대전광역시 서구 둔산대로 086',10086,'CRX01'),(10087,'10087','문정수','crx0087@crx.com','010-8527-6566','2020-09-04','남성',39,'사원','대전광역시 서구 둔산대로 087',10087,'CRX04'),(10088,'10088','윤하늘','crx0088@crx.com','010-3670-2359','2011-02-27','남성',29,'사원','대전광역시 서구 둔산대로 088',10088,'CRX03'),(10089,'10089','서민정','crx0089@crx.com','010-9072-8492','2017-09-22','여성',27,'사원','대전광역시 서구 둔산대로 089',10089,'CRX04'),(10090,'10090','김민규','crx0090@crx.com','010-5006-1610','2014-06-19','남성',26,'사원','대전광역시 서구 둔산대로 090',10090,'CRX04'),(10091,'10091','이선영','crx0091@crx.com','010-0870-9270','2015-07-05','여성',28,'사원','대전광역시 서구 둔산대로 091',10091,'CRX01'),(10092,'10092','장예진','crx0092@crx.com','010-7158-5738','2020-08-16','여성',32,'사원','대전광역시 서구 둔산대로 092',10092,'CRX02'),(10093,'10093','양서진','crx0093@crx.com','010-5050-5489','2013-05-18','여성',28,'사원','대전광역시 서구 둔산대로 093',10093,'CRX03'),(10094,'10094','오민재','crx0094@crx.com','010-3376-0267','2011-10-11','남성',27,'사원','대전광역시 서구 둔산대로 094',10094,'CRX03'),(10095,'10095','최현진','crx0095@crx.com','010-7255-5365','2017-06-14','남성',37,'사원','대전광역시 서구 둔산대로 095',10095,'CRX03'),(10096,'10096','박서연','crx0096@crx.com','010-0270-1694','2021-04-14','여성',36,'사원','대전광역시 서구 둔산대로 096',10096,'CRX03'),(10097,'10097','서준희','crx0097@crx.com','010-0454-4371','2010-09-23','남성',22,'사원','대전광역시 서구 둔산대로 097',10097,'CRX03'),(10098,'10098','이정호','crx0098@crx.com','010-6046-5086','2020-09-26','남성',29,'사원','대전광역시 서구 둔산대로 098',10098,'CRX04'),(10099,'10099','김세영','crx0099@crx.com','010-2099-9876','2014-07-17','남성',36,'사원','대전광역시 서구 둔산대로 099',10099,'CRX03'),(10100,'10100','하윤호','crx0100@crx.com','010-6430-8845','2017-04-08','남성',26,'사원','대전광역시 서구 둔산대로 100',10100,'CRX01');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-09 17:28:07
