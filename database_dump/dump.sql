-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: cti_project
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `all_employee_trainee`
--

DROP TABLE IF EXISTS `all_employee_trainee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `all_employee_trainee` (
  `trainee_id` int(11) NOT NULL,
  `performance` varchar(45) DEFAULT NULL,
  `attendance` varchar(45) DEFAULT NULL,
  `trainings_attended` varchar(45) DEFAULT NULL,
  `employee_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`trainee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `all_employee_trainee`
--

LOCK TABLES `all_employee_trainee` WRITE;
/*!40000 ALTER TABLE `all_employee_trainee` DISABLE KEYS */;
/*!40000 ALTER TABLE `all_employee_trainee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `department` (
  `department_id` varchar(45) NOT NULL,
  `department_name` varchar(45) DEFAULT NULL,
  `department_loc` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES ('DEPT001','HR','Nagaon,Assam'),('DEPT002','Information Technology','Dispur,GHY');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employee` (
  `employee_id` varchar(45) NOT NULL,
  `employee_name` varchar(45) DEFAULT NULL,
  `employee_join_date` varchar(45) DEFAULT NULL,
  `department_id` varchar(45) DEFAULT NULL,
  `original_salary` varchar(45) DEFAULT NULL,
  `current_salary` varchar(45) DEFAULT NULL,
  `region` varchar(45) DEFAULT NULL,
  `designation` varchar(45) DEFAULT NULL,
  `ddo_code` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`employee_id`),
  KEY `department_id_idx` (`department_id`),
  CONSTRAINT `department_id` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES ('EMP001','Pranjal Das','2010-01-01','DEPT002','202000','10100','GHY','Marketing Head','DDO1'),('EMP002','Amlan Bordoloi','2010-01-01','DEPT001','200100','10200','JURHAT','Software Engineer','DDO2'),('EMP003','Vinod Sharmah','2009-04-05','DEPT002','452000','87520','SHILLONG','Analyser','DDO3'),('EMP004','Akrur Ranjan Borah','2015-04-04','DEPT001','614951','1545','BOKAKHAT','Tester','DDO4'),('EMP005','Gitartha Puzari','2015-06-06','DEPT001','546232','53453453','DERGAON','developer','DDO5'),('EMP006','Devraj Bhattacharjee','2009-02-01','DEPT002','785201140','4421255','Nagaon','developer','DDO6');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_training_attendance`
--

DROP TABLE IF EXISTS `employee_training_attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employee_training_attendance` (
  `training_id` int(11) NOT NULL,
  `training_date` date DEFAULT NULL,
  `trainee_id` varchar(45) DEFAULT NULL,
  `training_start_time` varchar(45) DEFAULT NULL,
  `trainee_present_status` varchar(45) DEFAULT NULL,
  `training_remark` varchar(45) DEFAULT NULL,
  `training_prg_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`training_id`),
  KEY `trainee_id_idx` (`trainee_id`),
  KEY `traininh_prg_id_idx` (`training_prg_id`),
  CONSTRAINT `trainee_id` FOREIGN KEY (`trainee_id`) REFERENCES `trainee_employee` (`trainee_id`),
  CONSTRAINT `traininh_prg_id` FOREIGN KEY (`training_prg_id`) REFERENCES `training_program` (`training_prg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_training_attendance`
--

LOCK TABLES `employee_training_attendance` WRITE;
/*!40000 ALTER TABLE `employee_training_attendance` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_training_attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `events` (
  `event_id` int(11) NOT NULL,
  `color` varchar(255) DEFAULT NULL,
  `end` date DEFAULT NULL,
  `start` date DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,'#678RT90','2020-06-30','2020-06-01','asrbr'),(2,'#678RT90','2020-06-27','2020-06-20','Service Training'),(3,'#678RT90','2020-06-22','2020-06-08','stykjtk'),(4,'#678RT90','2020-06-22','2020-06-08','stykjtk'),(5,'#678RT90','2020-06-25','2020-06-01','ERGRGETG');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (6);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration`
--

DROP TABLE IF EXISTS `registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `registration` (
  `reg_id` varchar(255) NOT NULL,
  `department_no` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `employee_no` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`reg_id`),
  KEY `FK1` (`employee_no`),
  KEY `FK2` (`department_no`),
  CONSTRAINT `FK1` FOREIGN KEY (`employee_no`) REFERENCES `employee` (`employee_id`),
  CONSTRAINT `FK2` FOREIGN KEY (`department_no`) REFERENCES `department` (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration`
--

LOCK TABLES `registration` WRITE;
/*!40000 ALTER TABLE `registration` DISABLE KEYS */;
INSERT INTO `registration` VALUES ('1591PRANEMPPRAN967','DEPT002','pranjaldas525@gmail.com','EMP001','Pranjal Das','9678186292');
/*!40000 ALTER TABLE `registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trainee_employee`
--

DROP TABLE IF EXISTS `trainee_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `trainee_employee` (
  `trainee_id` varchar(45) NOT NULL,
  `performance_percentage` varchar(45) DEFAULT NULL,
  `attendance_percentage` varchar(45) DEFAULT NULL,
  `training_program_id` varchar(45) DEFAULT NULL,
  `employee_id` varchar(45) DEFAULT NULL,
  `trainee_name` varchar(45) DEFAULT NULL,
  `ddo_code` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`trainee_id`),
  KEY `employee_id_idx` (`employee_id`),
  CONSTRAINT `employee_id` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trainee_employee`
--

LOCK TABLES `trainee_employee` WRITE;
/*!40000 ALTER TABLE `trainee_employee` DISABLE KEYS */;
/*!40000 ALTER TABLE `trainee_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trainer`
--

DROP TABLE IF EXISTS `trainer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `trainer` (
  `trainer_id` varchar(255) NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `trainer_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`trainer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trainer`
--

LOCK TABLES `trainer` WRITE;
/*!40000 ALTER TABLE `trainer` DISABLE KEYS */;
INSERT INTO `trainer` VALUES ('DEMO7849','Director','Abhishek Bhardwaj'),('EMP0089','Director','Sandip Gogoi'),('EMP890','Senior Deveoloper','Debajit Bhatta');
/*!40000 ALTER TABLE `trainer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `training_applications`
--

DROP TABLE IF EXISTS `training_applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `training_applications` (
  `application_id` varchar(50) NOT NULL DEFAULT 'AUTO_INCREMENT',
  `department_no` varchar(255) DEFAULT NULL,
  `employee_no` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `reg_no` varchar(255) DEFAULT NULL,
  `training_prog_id` varchar(255) DEFAULT NULL,
  `application_status` varchar(45) DEFAULT NULL,
  `reason` varchar(45) DEFAULT NULL,
  `ddo_code` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `publish` bit(1) DEFAULT NULL,
  `training_apply_date` date DEFAULT NULL,
  PRIMARY KEY (`application_id`),
  KEY `department_no` (`department_no`),
  KEY `employee_no` (`employee_no`),
  KEY `training_prog_id` (`training_prog_id`),
  CONSTRAINT `department_no` FOREIGN KEY (`department_no`) REFERENCES `department` (`department_id`),
  CONSTRAINT `employee_no` FOREIGN KEY (`employee_no`) REFERENCES `employee` (`employee_id`),
  CONSTRAINT `training_prog_id` FOREIGN KEY (`training_prog_id`) REFERENCES `training_program` (`training_prg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `training_applications`
--

LOCK TABLES `training_applications` WRITE;
/*!40000 ALTER TABLE `training_applications` DISABLE KEYS */;
INSERT INTO `training_applications` VALUES ('2A2C2T2V37EAVVR2','DEPT002','EMP006','Devraj Bhattacharjee',NULL,'1217INDU310DEMOTRA','accepted',NULL,'DDO6','Developer',_binary '\0','2020-06-15'),('A67O7OB3AA56A3AU','DEPT001','EMP004','Akrur Ranjal Borah',NULL,'1217INDU310DEMOTRA','accepted',NULL,'DDO4','Tester',_binary '\0','2020-06-15');
/*!40000 ALTER TABLE `training_applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `training_program`
--

DROP TABLE IF EXISTS `training_program`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `training_program` (
  `training_prg_id` varchar(45) NOT NULL,
  `training_prg_name` varchar(45) DEFAULT NULL,
  `training_prg_duration` varchar(45) DEFAULT NULL,
  `training_prg_type` varchar(45) DEFAULT NULL,
  `training_prg_trainer_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `training_start_date` datetime DEFAULT NULL,
  `display_status` bit(1) NOT NULL,
  `training_description` varchar(510) DEFAULT NULL,
  `training_create_date` date DEFAULT NULL,
  `training_status` varchar(255) DEFAULT NULL,
  `training_update_date` datetime DEFAULT NULL,
  `training_end_date` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`training_prg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `training_program`
--

LOCK TABLES `training_program` WRITE;
/*!40000 ALTER TABLE `training_program` DISABLE KEYS */;
INSERT INTO `training_program` VALUES ('1036BASI010ERGRTRA','ERGRGETG',NULL,'Basic','Abhishek Bhardwaj:DEMO7849','2020-06-01 00:00:00',_binary '\0','yGDJKVErv','2020-06-14','created','2020-06-14 10:36:48','2020-06-25'),('1217INDU310DEMOTRA','Demo Training','2 months','Induction','Sandip Gogoi :EMP0089,Abhishek Bhardwaj:DEMO7849','2020-07-31 00:00:00',_binary '','Inviting the name of Sr. Assistant/ Jr. Assistant / Accountant /Clerk of your Establishment(s) for undergoing financial and Accounts Training, batch in C.T.I. DoAT Dispur, Guwahati.','2020-04-20','created','2020-04-20 12:17:13','2020-08-31'),('1554BASI200SERVTRA','Service Training',NULL,'Basic','Sandip Gogoi :EMP0089','2020-06-20 00:00:00',_binary '','Demo Training','2020-06-12','created','2020-06-12 15:54:22','2020-06-27');
/*!40000 ALTER TABLE `training_program` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `username` varchar(255) NOT NULL,
  `active` bit(1) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('pranjaldas525@gmail.com',_binary '','123456','USER');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-15 22:13:47
