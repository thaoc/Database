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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Assignment`
--

DROP TABLE IF EXISTS `Assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Assignment` (
  `Assignment_ID` int(11) NOT NULL,
  `Facility_ID` int(11) DEFAULT NULL,
  `Resident_ID` int(11) DEFAULT NULL,
  `Assignment_Arrival Date` datetime DEFAULT NULL,
  `Assignment_ExitDate` datetime DEFAULT NULL,
  PRIMARY KEY (`Assignment_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Assistance`
--

DROP TABLE IF EXISTS `Assistance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Assistance` (
  `Assistance_ID` int(11) NOT NULL,
  `Resident_ID` int(11) NOT NULL,
  `Caseworker_ID` int(11) NOT NULL,
  PRIMARY KEY (`Assistance_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Call_In`
--

DROP TABLE IF EXISTS `Call_In`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Call_In` (
  `Call_In_ID` int(11) NOT NULL,
  `Resident_ID` int(11) NOT NULL,
  `Call_In_DateTime` datetime NOT NULL,
  `Call_In_PhoneNumber` varchar(45) NOT NULL,
  `Call_In_Action` varchar(45) NOT NULL,
  `Call_In_To` varchar(45) NOT NULL,
  `Call_In_From` varchar(45) NOT NULL,
  `Call_In_Message` varchar(150) NOT NULL,
  `Staff_ID` int(11) NOT NULL,
  PRIMARY KEY (`Call_In_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Case_Notes`
--

DROP TABLE IF EXISTS `Case_Notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Case_Notes` (
  `Case_Notes_ID` int(11) NOT NULL,
  `Case_Notes_Record` varchar(150) DEFAULT NULL,
  `Assistance_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Case_Notes_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Charge`
--

DROP TABLE IF EXISTS `Charge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Charge` (
  `Charge_ID` int(11) NOT NULL,
  `Resident_ID` int(11) NOT NULL,
  `Offense_ID` int(11) NOT NULL,
  PRIMARY KEY (`Charge_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Daily_Planner`
--

DROP TABLE IF EXISTS `Daily_Planner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Daily_Planner` (
  `Daily_Planner_ID` int(11) NOT NULL,
  `DP_Date` date NOT NULL,
  `DP_Location_Name` varchar(45) NOT NULL,
  `DP_Location_Street` varchar(45) NOT NULL,
  `DP_Location_City` varchar(45) NOT NULL,
  `DP_Location_State` varchar(45) NOT NULL,
  `DP_Location_Zip` int(11) NOT NULL,
  `DP_Location_Phone` varchar(45) NOT NULL,
  `DP_Purpose` varchar(45) NOT NULL,
  `DP_Contact_FName` varchar(45) DEFAULT NULL,
  `DP_Contact_LName` varchar(45) DEFAULT NULL,
  `DP_Leaving` varchar(45) NOT NULL,
  `DP_Returning` varchar(45) NOT NULL,
  `DP_Transport_Mode` varchar(45) NOT NULL,
  `DP_Time_Needed` varchar(45) NOT NULL,
  `Resident_ID` int(11) NOT NULL,
  `Staff_ID` int(11) NOT NULL,
  `DP_Bus_Route` varchar(45) NOT NULL,
  `DP_Driver_Name` varchar(45) NOT NULL,
  PRIMARY KEY (`Daily_Planner_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Group`
--

DROP TABLE IF EXISTS `Group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Group` (
  `Group_ID` int(11) NOT NULL,
  `Group_Name` varchar(45) NOT NULL,
  PRIMARY KEY (`Group_ID`),
  UNIQUE KEY `Group_ID_UNIQUE` (`Group_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Mandated`
--

DROP TABLE IF EXISTS `Mandated`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Mandated` (
  `Mandated_ID` int(11) NOT NULL,
  `Resident_ID` int(11) NOT NULL,
  `Group_ID` int(11) NOT NULL,
  PRIMARY KEY (`Mandated_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Offense`
--

DROP TABLE IF EXISTS `Offense`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Offense` (
  `Offense_ID` int(11) NOT NULL,
  `Offense_Type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Offense_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Prison`
--

DROP TABLE IF EXISTS `Prison`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Prison` (
  `Prison_ID` int(11) NOT NULL,
  `Prison_Name` varchar(45) NOT NULL,
  `Prison_Street` varchar(45) NOT NULL,
  `Prison_City` varchar(45) NOT NULL,
  `Prison_State` varchar(45) NOT NULL,
  `Prison_Zip` int(11) NOT NULL,
  PRIMARY KEY (`Prison_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Report`
--

DROP TABLE IF EXISTS `Report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Report` (
  `Report_ID` int(11) NOT NULL,
  `Resident_ID` int(11) DEFAULT NULL,
  `Group_ID` int(11) DEFAULT NULL,
  `Report_Date` datetime DEFAULT NULL,
  `Report_Group` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Report_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
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
  PRIMARY KEY (`Resident_ID`),
  UNIQUE KEY `Resident_ID_UNIQUE` (`Resident_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Risk_Level`
--

DROP TABLE IF EXISTS `Risk_Level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Risk_Level` (
  `Risk_Level_ID` int(11) NOT NULL,
  `Risk_Level_Type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Risk_Level_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Rounds`
--

DROP TABLE IF EXISTS `Rounds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Rounds` (
  `Rounds_ID` int(11) NOT NULL,
  `Rounds_DateTime` datetime NOT NULL,
  `Resident_ID` int(11) NOT NULL,
  `Rounds_Activity` varchar(45) DEFAULT NULL,
  `Agent_ID` int(11) NOT NULL,
  PRIMARY KEY (`Rounds_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Supervision`
--

DROP TABLE IF EXISTS `Supervision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Supervision` (
  `Supervision_ID` int(11) NOT NULL,
  `Agent_ID` int(11) DEFAULT NULL,
  `Resident_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Supervision_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Test`
--

DROP TABLE IF EXISTS `Test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Test` (
  `Test_ID` int(11) NOT NULL,
  `Resident_ID` int(11) DEFAULT NULL,
  `AOD_Log_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Test_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Transfer`
--

DROP TABLE IF EXISTS `Transfer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Transfer` (
  `Transfer_ID` int(11) NOT NULL,
  `Prison_ID` int(11) DEFAULT NULL,
  `Resident_ID` int(11) DEFAULT NULL,
  `Transfer_ArrivalDate` datetime DEFAULT NULL,
  `Transfer_ExitDate` datetime DEFAULT NULL,
  PRIMARY KEY (`Transfer_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-14 20:47:51
