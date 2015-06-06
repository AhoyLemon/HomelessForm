CREATE DATABASE  IF NOT EXISTS `thebridge` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `thebridge`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: thebridge
-- ------------------------------------------------------
-- Server version	5.5.29

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
-- Table structure for table `client_worker`
--

DROP TABLE IF EXISTS `client_worker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_worker` (
  `tb_client_worker_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_no` varchar(45) DEFAULT NULL,
  `intake_id` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `agency` varchar(45) DEFAULT NULL,
  `remarks` text,
  `is_validated` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`tb_client_worker_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_worker`
--

LOCK TABLES `client_worker` WRITE;
/*!40000 ALTER TABLE `client_worker` DISABLE KEYS */;
/*!40000 ALTER TABLE `client_worker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demographic`
--

DROP TABLE IF EXISTS `demographic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `demographic` (
  `tb_demographic_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_no` varchar(500) DEFAULT NULL,
  `first_name` varchar(500) DEFAULT NULL,
  `middle_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(500) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `age` varchar(45) DEFAULT NULL,
  `db` date DEFAULT NULL,
  `datetime_of_call` datetime DEFAULT NULL,
  `name_caller` varchar(500) DEFAULT NULL,
  `relationship_youth` varchar(45) DEFAULT NULL,
  `called_phone_number` varchar(45) DEFAULT NULL,
  `preferred_name` varchar(500) DEFAULT NULL,
  `db_quality` varchar(45) DEFAULT NULL,
  `birth_country_region` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `sexual_orientation` varchar(45) DEFAULT NULL,
  `ethnicity` varchar(45) DEFAULT NULL,
  `current_last_permanent_address1` varchar(500) DEFAULT NULL,
  `current_last_permanent_address2` varchar(500) DEFAULT NULL,
  `zipcode` varchar(45) DEFAULT NULL,
  `zipcode_quality` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `county` varchar(45) DEFAULT NULL,
  `language` varchar(45) DEFAULT NULL,
  `langauge_other` varchar(100) DEFAULT NULL,
  `race` varchar(45) DEFAULT NULL,
  `phone_type` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `served_active_duty_arm_force` varchar(45) DEFAULT NULL,
  `ssn` varchar(45) DEFAULT NULL,
  `ssn_quality` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`tb_demographic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demographic`
--

LOCK TABLES `demographic` WRITE;
/*!40000 ALTER TABLE `demographic` DISABLE KEYS */;
/*!40000 ALTER TABLE `demographic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exit`
--

DROP TABLE IF EXISTS `exit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exit` (
  `tb_exit_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_no` varchar(45) DEFAULT NULL,
  `intake_id` varchar(45) DEFAULT NULL,
  `reason_unable_to_served` varchar(100) DEFAULT NULL,
  `ruts_recent_assualtive_has_been_charged` varchar(45) DEFAULT NULL,
  `ruts_recent_assualtive_has_gone_court` varchar(45) DEFAULT NULL,
  `ruts_recent_assualtive_was_addressed` varchar(45) DEFAULT NULL,
  `ruts_recent_assualtive_was_weapon` varchar(45) DEFAULT NULL,
  `ruts_sexual_assult_youth_been_charged` varchar(45) DEFAULT NULL,
  `ruts_sexual_assult_gone_court` varchar(45) DEFAULT NULL,
  `ruts_sexual_assult_was_addressed` varchar(45) DEFAULT NULL,
  `reason_details` text,
  `exit_date` date DEFAULT NULL,
  `personal_property_returned` varchar(45) DEFAULT NULL,
  `prescription_medicine` varchar(45) DEFAULT NULL,
  `discharged_to_name` varchar(45) DEFAULT NULL,
  `discharged_to_address` varchar(45) DEFAULT NULL,
  `discharged_to_phone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`tb_exit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exit`
--

LOCK TABLES `exit` WRITE;
/*!40000 ALTER TABLE `exit` DISABLE KEYS */;
/*!40000 ALTER TABLE `exit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `family_member`
--

DROP TABLE IF EXISTS `family_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `family_member` (
  `tb_family_member_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_no` varchar(500) DEFAULT NULL,
  `first_name` varchar(500) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `relationship` varchar(45) DEFAULT NULL,
  `live_together` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`tb_family_member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `family_member`
--

LOCK TABLES `family_member` WRITE;
/*!40000 ALTER TABLE `family_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `family_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `followup`
--

DROP TABLE IF EXISTS `followup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `followup` (
  `tb_followup_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_no` varchar(45) DEFAULT NULL,
  `intake_id` varchar(45) DEFAULT NULL,
  `staff_conducting_followup` varchar(100) DEFAULT NULL,
  `followup_made` varchar(45) DEFAULT NULL,
  `where_living_now` varchar(45) DEFAULT NULL,
  `have_you_run_away` varchar(45) DEFAULT NULL,
  `currently_attending_school` varchar(45) DEFAULT NULL,
  `currently_working` varchar(45) DEFAULT NULL,
  `access_to_healtcare` varchar(45) DEFAULT NULL,
  `relationship_better_parent` varchar(45) DEFAULT NULL,
  `overall_things_better_family` varchar(45) DEFAULT NULL,
  `family_violence` varchar(45) DEFAULT NULL,
  `feel_we_helped` varchar(45) DEFAULT NULL,
  `able_trust_people` varchar(45) DEFAULT NULL,
  `problem_dominate` varchar(45) DEFAULT NULL,
  `things_going_well` varchar(45) DEFAULT NULL,
  `better_in_5_years` varchar(45) DEFAULT NULL,
  `accept_who_i_am` varchar(45) DEFAULT NULL,
  `able_do_like_others` varchar(45) DEFAULT NULL,
  `rate_life_before_bridge` varchar(45) DEFAULT NULL,
  `rate_life_after_bridge` varchar(45) DEFAULT NULL,
  `how_many_people_listen_you` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`tb_followup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `followup`
--

LOCK TABLES `followup` WRITE;
/*!40000 ALTER TABLE `followup` DISABLE KEYS */;
/*!40000 ALTER TABLE `followup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guardian`
--

DROP TABLE IF EXISTS `guardian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guardian` (
  `tb_guardian_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_no` varchar(500) DEFAULT NULL,
  `first_name` varchar(500) DEFAULT NULL,
  `last_name` varchar(500) DEFAULT NULL,
  `relationship` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`tb_guardian_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guardian`
--

LOCK TABLES `guardian` WRITE;
/*!40000 ALTER TABLE `guardian` DISABLE KEYS */;
/*!40000 ALTER TABLE `guardian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `intake`
--

DROP TABLE IF EXISTS `intake`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `intake` (
  `tb_intake_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_no` varchar(45) DEFAULT NULL,
  `intake_id` varchar(45) DEFAULT NULL,
  `intake_date` date DEFAULT NULL,
  `program_service_flag` varchar(45) DEFAULT NULL,
  `program_service_flag_other` text,
  `program_service_flag_system_involved` varchar(45) DEFAULT NULL,
  `program_service_flag_juvenile` varchar(45) DEFAULT NULL,
  `consideration` varchar(500) DEFAULT NULL,
  `consideration_details` text,
  `consideration_intensity_conflict_parent` varchar(45) DEFAULT NULL,
  `consideration_intensity_safety_self_parent` varchar(45) DEFAULT NULL,
  `consideration_intensity_safety_others_parent` varchar(45) DEFAULT NULL,
  `consideration_comment` text,
  `harm_risk_suiside_history` varchar(45) DEFAULT NULL,
  `harm_risk_suiside_no_attempt` varchar(45) DEFAULT NULL,
  `harm_risk_suiside_how` varchar(45) DEFAULT NULL,
  `harm_risk_suiside_when` varchar(45) DEFAULT NULL,
  `harm_risk_self_harm` varchar(45) DEFAULT NULL,
  `harm_risk_self_harm_no_attempt` varchar(45) DEFAULT NULL,
  `harm_risk_self_harm_how` varchar(45) DEFAULT NULL,
  `harm_risk_self_harm_when` varchar(45) DEFAULT NULL,
  `harm_risk_harm_others` varchar(45) DEFAULT NULL,
  `harm_risk_harm_others_no_attempt` varchar(45) DEFAULT NULL,
  `harm_risk_harm_others_how` varchar(45) DEFAULT NULL,
  `harm_risk_harm_others_when` varchar(45) DEFAULT NULL,
  `harm_risk_harm_others_toward_whom` varchar(45) DEFAULT NULL,
  `harm_risk_homicidal` varchar(45) DEFAULT NULL,
  `harm_risk_homicidal_no` varchar(45) DEFAULT NULL,
  `harm_risk_homicidal_how` varchar(45) DEFAULT NULL,
  `harm_risk_homicidal_when` varchar(45) DEFAULT NULL,
  `harm_risk_homicidal_whom` varchar(45) DEFAULT NULL,
  `mhis_no` varchar(45) DEFAULT NULL,
  `RHYMIS_no` varchar(45) DEFAULT NULL,
  `consideration_intensity_conflict_youth` varchar(45) DEFAULT NULL,
  `consideration_intensity_safety_self_youth` varchar(45) DEFAULT NULL,
  `consideration_intensity_safety_others_youth` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`tb_intake_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `intake`
--

LOCK TABLES `intake` WRITE;
/*!40000 ALTER TABLE `intake` DISABLE KEYS */;
/*!40000 ALTER TABLE `intake` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service` (
  `tb_service_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_no` varchar(45) NOT NULL,
  `service_received_case_management` varchar(500) DEFAULT NULL,
  `service_received_emergency` varchar(500) DEFAULT NULL,
  `service_received_emergency_other` text,
  `service_received_transition` varchar(45) DEFAULT NULL,
  `service_received_transition_other` text,
  `service_received_clinical` varchar(500) DEFAULT NULL,
  `service_received_clinical_other` text,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `client_present` varchar(45) DEFAULT NULL,
  `staff_present` varchar(45) DEFAULT NULL,
  `other_ppl_present` varchar(45) DEFAULT NULL,
  `notes` text,
  `outcome` text,
  PRIMARY KEY (`tb_service_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service`
--

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-06 14:37:01
