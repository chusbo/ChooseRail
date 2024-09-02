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
-- Temporary view structure for view `v_train_seat`
--

DROP TABLE IF EXISTS `v_train_seat`;
/*!50001 DROP VIEW IF EXISTS `v_train_seat`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_train_seat` AS SELECT 
 1 AS `selectedSeats`,
 1 AS `hocha`,
 1 AS `startdate`,
 1 AS `trainType`,
 1 AS `trainno`,
 1 AS `depTime`,
 1 AS `arrTime`,
 1 AS `refund`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `v_train_seat`
--

/*!50001 DROP VIEW IF EXISTS `v_train_seat`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`crx`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_train_seat` AS select `paytrain`.`selectedSeats` AS `selectedSeats`,`paytrain`.`hocha` AS `hocha`,`paytrain`.`startdate` AS `startdate`,`paytrain`.`trainType` AS `trainType`,`paytrain`.`trainno` AS `trainno`,`paytrain`.`depTime` AS `depTime`,`paytrain`.`arrTime` AS `arrTime`,`paytrain`.`refund` AS `refund` from `paytrain` where (`paytrain`.`refund` is null) union select `reservtrain`.`selectedSeats` AS `selectedSeats`,`reservtrain`.`hocha` AS `hocha`,`reservtrain`.`startdate` AS `startdate`,`reservtrain`.`trainType` AS `trainType`,`reservtrain`.`trainno` AS `trainno`,`reservtrain`.`depTime` AS `depTime`,`reservtrain`.`arrTime` AS `arrTime`,NULL AS `refund` from `reservtrain` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-02 17:30:00
