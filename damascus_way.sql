CREATE DATABASE  IF NOT EXISTS `damascus_way` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `damascus_way`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 107.180.46.186    Database: damascus_way
-- ------------------------------------------------------
-- Server version	5.6.39-cll-lve

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Alcohol_Other_Drugs`
--

DROP TABLE IF EXISTS `Alcohol_Other_Drugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Alcohol_Other_Drugs` (
  `AOD_Log_ID` int(11) NOT NULL,
  `AOD_LName` varchar(45) NOT NULL,
  `AOD_FName` varchar(45) NOT NULL,
  PRIMARY KEY (`AOD_Log_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Assignment`
--

DROP TABLE IF EXISTS `Assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Assignment` (
  `Assignment_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Assignment_Facility_ID_FK` int(11) NOT NULL,
  `Assignment_Resident_ID_FK` int(11) NOT NULL,
  `Assignment_Arrival Date` datetime NOT NULL,
  `Assignment_ExitDate` datetime NOT NULL,
  `Assignment_RoomNumber` varchar(45) NOT NULL,
  PRIMARY KEY (`Assignment_ID`),
  KEY `assignment_facility_id_fk_idx` (`Assignment_Facility_ID_FK`),
  KEY `assignment_resident_if_fk_idx` (`Assignment_Resident_ID_FK`),
  CONSTRAINT `assignment_facility_id_fk` FOREIGN KEY (`Assignment_Facility_ID_FK`) REFERENCES `Facility` (`Facility_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `assignment_resident_if_fk` FOREIGN KEY (`Assignment_Resident_ID_FK`) REFERENCES `Resident` (`Resident_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Assistance`
--

DROP TABLE IF EXISTS `Assistance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Assistance` (
  `Assistance_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Assistance_Resident_ID_FK` int(11) NOT NULL,
  `Assistance_Caseworker_ID_FK` int(11) NOT NULL,
  PRIMARY KEY (`Assistance_ID`),
  KEY `assistance_resident_id_fk_idx` (`Assistance_Resident_ID_FK`),
  KEY `assistance_caseworker_id_fk_idx` (`Assistance_Caseworker_ID_FK`),
  CONSTRAINT `assistance_caseworker_id_fk` FOREIGN KEY (`Assistance_Caseworker_ID_FK`) REFERENCES `Caseworker` (`Caseworker_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `assistance_resident_id_fk` FOREIGN KEY (`Assistance_Resident_ID_FK`) REFERENCES `Resident` (`Resident_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Call_In`
--

DROP TABLE IF EXISTS `Call_In`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Call_In` (
  `Call_In_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Call_In_Resident_ID_FK` int(11) NOT NULL,
  `Call_In_Staff_ID_FK` int(11) NOT NULL,
  `Call_In_Daily_Planner_ID` int(11) NOT NULL,
  `Call_In_DateTime` datetime NOT NULL,
  `Call_In_PhoneNumber` varchar(45) NOT NULL,
  `Call_In_Action` varchar(45) NOT NULL,
  `Call_In_To` varchar(45) NOT NULL,
  `Call_In_From` varchar(45) NOT NULL,
  `Call_In_TimeLengthAtLocation` varchar(45) NOT NULL,
  `Call_In_Match_Planner` tinyint(1) NOT NULL,
  `Call_In_Message` varchar(150) NOT NULL,
  PRIMARY KEY (`Call_In_ID`),
  KEY `call_in_resident_id_fk_idx` (`Call_In_Resident_ID_FK`),
  KEY `call_in_staff_id_fk_idx` (`Call_In_Staff_ID_FK`),
  KEY `call_in_daily_planner_id_fk_idx` (`Call_In_Daily_Planner_ID`),
  CONSTRAINT `call_in_daily_planner_id_fk` FOREIGN KEY (`Call_In_Daily_Planner_ID`) REFERENCES `Daily_Planner` (`Daily_Planner_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `call_in_resident_id_fk` FOREIGN KEY (`Call_In_Resident_ID_FK`) REFERENCES `Resident` (`Resident_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `call_in_staff_id_fk` FOREIGN KEY (`Call_In_Staff_ID_FK`) REFERENCES `Staff` (`Staff_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Case_Notes`
--

DROP TABLE IF EXISTS `Case_Notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Case_Notes` (
  `Case_Notes_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Case_Notes_Record` varchar(150) NOT NULL,
  `Assistance_ID` int(11) NOT NULL,
  PRIMARY KEY (`Case_Notes_ID`),
  KEY `assistance_id_fk_idx` (`Assistance_ID`),
  CONSTRAINT `assistance_id_fk` FOREIGN KEY (`Assistance_ID`) REFERENCES `Assistance` (`Assistance_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Caseworker`
--

DROP TABLE IF EXISTS `Caseworker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Caseworker` (
  `Caseworker_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Caseworker_LName` varchar(45) NOT NULL,
  `Caseworker_FName` varchar(45) NOT NULL,
  PRIMARY KEY (`Caseworker_ID`),
  UNIQUE KEY `Caseworker_ID_UNIQUE` (`Caseworker_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Charge`
--

DROP TABLE IF EXISTS `Charge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Charge` (
  `Charge_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Charge_Resident_ID_FK` int(11) NOT NULL,
  `Charge_Offense_ID_FK` int(11) NOT NULL,
  PRIMARY KEY (`Charge_ID`),
  KEY `charge_offense_id_fk_idx` (`Charge_Offense_ID_FK`),
  KEY `charge_resident_id_fk_idx` (`Charge_Resident_ID_FK`),
  CONSTRAINT `charge_offense_id_fk` FOREIGN KEY (`Charge_Offense_ID_FK`) REFERENCES `Offense` (`Offense_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `charge_resident_id_fk` FOREIGN KEY (`Charge_Resident_ID_FK`) REFERENCES `Resident` (`Resident_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Check_In`
--

DROP TABLE IF EXISTS `Check_In`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Check_In` (
  `Check_In_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Check_In_Rounds_ID_FK` int(11) NOT NULL,
  `Check_In_Resident_ID_FK` int(11) NOT NULL COMMENT 'The Rounds table already has a resident_id reference, so this reference may not be necessary',
  `Check_In_Time` datetime NOT NULL,
  `Check_In_Status` varchar(100) NOT NULL,
  `Check_In_Notes` varchar(21844) DEFAULT NULL,
  PRIMARY KEY (`Check_In_ID`),
  KEY `check_in_rounds_id_fk_idx` (`Check_In_Rounds_ID_FK`),
  KEY `check_in_resident_if_fk_idx` (`Check_In_Resident_ID_FK`),
  CONSTRAINT `check_in_resident_if_fk` FOREIGN KEY (`Check_In_Resident_ID_FK`) REFERENCES `Resident` (`Resident_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `check_in_rounds_id_fk` FOREIGN KEY (`Check_In_Rounds_ID_FK`) REFERENCES `Rounds` (`Rounds_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Daily_Planner`
--

DROP TABLE IF EXISTS `Daily_Planner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Daily_Planner` (
  `Daily_Planner_ID` int(11) NOT NULL,
  `DP_Resident_ID_FK` int(11) NOT NULL,
  `DP_Staff_ID_FK` int(11) NOT NULL,
  `DP_Date` date NOT NULL,
  `DP_Location_Name` varchar(45) NOT NULL,
  `DP_Location_Street` varchar(45) NOT NULL,
  `DP_Location_City` varchar(45) NOT NULL,
  `DP_Location_State` varchar(45) NOT NULL,
  `DP_Location_Zip` int(11) NOT NULL,
  `DP_Location_Phone` varchar(45) NOT NULL,
  `DP_Purpose` varchar(45) NOT NULL,
  `DP_Time_Needed` varchar(45) NOT NULL,
  `DP_Contact_Name` varchar(45) NOT NULL,
  `DP_Leaving` varchar(45) NOT NULL,
  `DP_Returning` varchar(45) NOT NULL,
  `DP_Transport_Mode` varchar(45) NOT NULL,
  `DP_Bus_Route` varchar(45) DEFAULT NULL,
  `DP_Driver_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Daily_Planner_ID`),
  KEY `resident_id_idx` (`DP_Resident_ID_FK`),
  KEY `staff_fk_id_idx` (`DP_Staff_ID_FK`),
  CONSTRAINT `dp_resident_id_fk` FOREIGN KEY (`DP_Resident_ID_FK`) REFERENCES `Resident` (`Resident_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `dp_staff_id_fk` FOREIGN KEY (`DP_Staff_ID_FK`) REFERENCES `Staff` (`Staff_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Facility`
--

DROP TABLE IF EXISTS `Facility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Facility` (
  `Facility_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Facility_Name` varchar(45) NOT NULL,
  `Facility_Phone` varchar(45) NOT NULL,
  `Facility_Street` varchar(45) NOT NULL,
  `Facility_City` varchar(45) NOT NULL,
  `Facility_State` varchar(45) NOT NULL,
  `Facility_Zip` int(11) NOT NULL,
  PRIMARY KEY (`Facility_ID`),
  UNIQUE KEY `Facility_ID_UNIQUE` (`Facility_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Group`
--

DROP TABLE IF EXISTS `Group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Group` (
  `Group_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Group_Name` varchar(45) NOT NULL,
  PRIMARY KEY (`Group_ID`),
  UNIQUE KEY `Group_ID_UNIQUE` (`Group_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Mandated`
--

DROP TABLE IF EXISTS `Mandated`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Mandated` (
  `Mandated_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Mandated_Resident_ID_FK` int(11) NOT NULL,
  `Mandated_Group_ID_FK` int(11) NOT NULL,
  PRIMARY KEY (`Mandated_ID`),
  UNIQUE KEY `Mandated_ID_UNIQUE` (`Mandated_ID`),
  KEY `mandated_resident_id_fk_idx` (`Mandated_Resident_ID_FK`),
  KEY `mandated_group_id_fk_idx` (`Mandated_Group_ID_FK`),
  CONSTRAINT `mandated_group_id_fk` FOREIGN KEY (`Mandated_Group_ID_FK`) REFERENCES `Group` (`Group_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `mandated_resident_id_fk` FOREIGN KEY (`Mandated_Resident_ID_FK`) REFERENCES `Resident` (`Resident_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Offense`
--

DROP TABLE IF EXISTS `Offense`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Offense` (
  `Offense_ID` int(11) NOT NULL,
  `Offense_Type` varchar(45) NOT NULL,
  PRIMARY KEY (`Offense_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Prison`
--

DROP TABLE IF EXISTS `Prison`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Prison` (
  `Prison_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Prison_Name` varchar(45) NOT NULL,
  `Prison_Street` varchar(45) NOT NULL,
  `Prison_City` varchar(45) NOT NULL,
  `Prison_State` varchar(45) NOT NULL,
  `Prison_Zip` int(11) NOT NULL,
  PRIMARY KEY (`Prison_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Report`
--

DROP TABLE IF EXISTS `Report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Report` (
  `Report_ID` int(11) NOT NULL,
  `Report_Resident_ID_FK` int(11) NOT NULL,
  `Report_Group_ID_FK` int(11) NOT NULL,
  `Report_Date` datetime NOT NULL,
  `Report_Group` varchar(45) NOT NULL,
  PRIMARY KEY (`Report_ID`),
  KEY `report_resident_id_fk_idx` (`Report_Resident_ID_FK`),
  KEY `report_group_id_fk_idx` (`Report_Group_ID_FK`),
  CONSTRAINT `report_group_id_fk` FOREIGN KEY (`Report_Group_ID_FK`) REFERENCES `Group` (`Group_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `report_resident_id_fk` FOREIGN KEY (`Report_Resident_ID_FK`) REFERENCES `Resident` (`Resident_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Resident`
--

DROP TABLE IF EXISTS `Resident`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Resident` (
  `Resident_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Resident_LName` varchar(45) NOT NULL,
  `Resident_FName` varchar(45) NOT NULL,
  `Resident_MName` varchar(45) NOT NULL,
  `Resident_Photo` blob,
  `Resident_Offense` varchar(45) NOT NULL,
  `Resident_Sex_Offender` tinyint(1) NOT NULL,
  `Resident_Risk_Level` int(11) NOT NULL,
  `Resident_Eye_Color` varchar(10) NOT NULL,
  `Resident_Hair_Color` varchar(10) NOT NULL,
  `Resident_Sex` varchar(10) NOT NULL,
  `Resident_Race` varchar(45) NOT NULL,
  `Resident_Height` int(11) NOT NULL,
  `Resident_Weight` int(11) NOT NULL,
  `Resident_DOB` date NOT NULL,
  `Resident_Birthplace` varchar(45) NOT NULL,
  `Resident_Username` varchar(45) DEFAULT NULL,
  `Resident_Password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Resident_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Risk_Level`
--

DROP TABLE IF EXISTS `Risk_Level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Risk_Level` (
  `Risk_Level_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Risk_Level_Type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Risk_Level_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Rounds`
--

DROP TABLE IF EXISTS `Rounds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Rounds` (
  `Rounds_ID` int(11) NOT NULL,
  `Rounds_Staff_ID_FK` int(11) NOT NULL,
  `Rounds_Resident_ID_FK` int(11) NOT NULL,
  `Rounds_DateTime` datetime NOT NULL,
  `Rounds_Location` varchar(100) NOT NULL,
  `Rounds_Activity` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Rounds_ID`),
  KEY `rounds_resident_id_fk_idx` (`Rounds_Resident_ID_FK`),
  KEY `rounds_staff_id_fk_idx` (`Rounds_Staff_ID_FK`),
  CONSTRAINT `rounds_resident_id_fk` FOREIGN KEY (`Rounds_Resident_ID_FK`) REFERENCES `Resident` (`Resident_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `rounds_staff_id_fk` FOREIGN KEY (`Rounds_Staff_ID_FK`) REFERENCES `Staff` (`Staff_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Staff`
--

DROP TABLE IF EXISTS `Staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Staff` (
  `Staff_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Staff_LName` varchar(45) NOT NULL,
  `Staff_FName` varchar(45) NOT NULL,
  `Staff_Phone` varchar(45) NOT NULL,
  `Staff_Street1` varchar(45) NOT NULL,
  `Staff_City` varchar(45) NOT NULL,
  `Staff_State` varchar(45) NOT NULL,
  `Staff_Zip` int(11) NOT NULL,
  `Staff_Photo` longblob,
  `Staff_Username` varchar(45) NOT NULL,
  `Staff_Password` varchar(45) NOT NULL,
  PRIMARY KEY (`Staff_ID`),
  UNIQUE KEY `Agent_ID_UNIQUE` (`Staff_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Supervision`
--

DROP TABLE IF EXISTS `Supervision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Supervision` (
  `Supervision_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Super_Stafft_ID_FK` int(11) DEFAULT NULL,
  `Super_Resident_ID_FK` int(11) DEFAULT NULL,
  PRIMARY KEY (`Supervision_ID`),
  UNIQUE KEY `Agent_ID_UNIQUE` (`Super_Stafft_ID_FK`),
  UNIQUE KEY `Resident_ID_UNIQUE` (`Super_Resident_ID_FK`),
  CONSTRAINT `super_resident_if_fk` FOREIGN KEY (`Super_Resident_ID_FK`) REFERENCES `Resident` (`Resident_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `super_staff_id_fk` FOREIGN KEY (`Super_Stafft_ID_FK`) REFERENCES `Staff` (`Staff_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Test`
--

DROP TABLE IF EXISTS `Test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Test` (
  `Test_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Test_Resident_ID_FK` int(11) NOT NULL,
  `Test_AOD_Log_ID_FK` int(11) NOT NULL,
  PRIMARY KEY (`Test_ID`),
  KEY `test_resident_id_fk_idx` (`Test_Resident_ID_FK`),
  KEY `test_aod_log_id_fk_idx` (`Test_AOD_Log_ID_FK`),
  CONSTRAINT `test_aod_log_id_fk` FOREIGN KEY (`Test_AOD_Log_ID_FK`) REFERENCES `Alcohol_Other_Drugs` (`AOD_Log_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `test_resident_id_fk` FOREIGN KEY (`Test_Resident_ID_FK`) REFERENCES `Resident` (`Resident_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Transfer`
--

DROP TABLE IF EXISTS `Transfer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Transfer` (
  `Transfer_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Transfer_Prison_ID_FK` int(11) NOT NULL,
  `Transfer_Resident_ID_FK` int(11) NOT NULL,
  `Transfer_ArrivalDate` datetime NOT NULL,
  `Transfer_ExitDate` datetime DEFAULT NULL,
  PRIMARY KEY (`Transfer_ID`),
  KEY `transfer_prison_id_fk_idx` (`Transfer_Prison_ID_FK`),
  KEY `transfer_resident_id_fk_idx` (`Transfer_Resident_ID_FK`),
  CONSTRAINT `transfer_prison_id_fk` FOREIGN KEY (`Transfer_Prison_ID_FK`) REFERENCES `Prison` (`Prison_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `transfer_resident_id_fk` FOREIGN KEY (`Transfer_Resident_ID_FK`) REFERENCES `Resident` (`Resident_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `select_first_last_resident`
--

DROP TABLE IF EXISTS `select_first_last_resident`;
/*!50001 DROP VIEW IF EXISTS `select_first_last_resident`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `select_first_last_resident` AS SELECT 
 1 AS `Resident_ID`,
 1 AS `Resident_LName`,
 1 AS `Resident_FName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `select_resident_default`
--

DROP TABLE IF EXISTS `select_resident_default`;
/*!50001 DROP VIEW IF EXISTS `select_resident_default`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `select_resident_default` AS SELECT 
 1 AS `Resident_ID`,
 1 AS `Resident_LName`,
 1 AS `Resident_FName`,
 1 AS `Resident_MName`,
 1 AS `Resident_Photo`,
 1 AS `Resident_Offense`,
 1 AS `Resident_Sex_Offender`,
 1 AS `Resident_Risk_Level`,
 1 AS `Resident_Eye_Color`,
 1 AS `Resident_Hair_Color`,
 1 AS `Resident_Sex`,
 1 AS `Resident_Race`,
 1 AS `Resident_Height`,
 1 AS `Resident_Weight`,
 1 AS `Resident_DOB`,
 1 AS `Resident_Birthplace`,
 1 AS `Resident_Username`,
 1 AS `Resident_Password`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `select_first_last_resident`
--

/*!50001 DROP VIEW IF EXISTS `select_first_last_resident`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ColeS`@`68.112.174.243` SQL SECURITY DEFINER */
/*!50001 VIEW `select_first_last_resident` AS select `Resident`.`Resident_ID` AS `Resident_ID`,`Resident`.`Resident_LName` AS `Resident_LName`,`Resident`.`Resident_FName` AS `Resident_FName` from `Resident` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `select_resident_default`
--

/*!50001 DROP VIEW IF EXISTS `select_resident_default`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ColeS`@`68.112.174.243` SQL SECURITY DEFINER */
/*!50001 VIEW `select_resident_default` AS select `Resident`.`Resident_ID` AS `Resident_ID`,`Resident`.`Resident_LName` AS `Resident_LName`,`Resident`.`Resident_FName` AS `Resident_FName`,`Resident`.`Resident_MName` AS `Resident_MName`,`Resident`.`Resident_Photo` AS `Resident_Photo`,`Resident`.`Resident_Offense` AS `Resident_Offense`,`Resident`.`Resident_Sex_Offender` AS `Resident_Sex_Offender`,`Resident`.`Resident_Risk_Level` AS `Resident_Risk_Level`,`Resident`.`Resident_Eye_Color` AS `Resident_Eye_Color`,`Resident`.`Resident_Hair_Color` AS `Resident_Hair_Color`,`Resident`.`Resident_Sex` AS `Resident_Sex`,`Resident`.`Resident_Race` AS `Resident_Race`,`Resident`.`Resident_Height` AS `Resident_Height`,`Resident`.`Resident_Weight` AS `Resident_Weight`,`Resident`.`Resident_DOB` AS `Resident_DOB`,`Resident`.`Resident_Birthplace` AS `Resident_Birthplace`,`Resident`.`Resident_Username` AS `Resident_Username`,`Resident`.`Resident_Password` AS `Resident_Password` from `Resident` */;
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

-- Dump completed on 2018-10-23 15:10:30
