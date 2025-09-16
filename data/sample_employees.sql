-- MySQL dump 10.13  Distrib 8.0.40, for macos14 (arm64)
--
-- Host: localhost    Database: sample
-- ------------------------------------------------------
-- Server version	8.4.3

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
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `eId` int NOT NULL,
  `empName` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `salary` bigint DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `officeCode` varchar(10) NOT NULL,
  `reportsTo` int DEFAULT NULL,
  `jobTitle` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `department` varchar(100) DEFAULT NULL,
  `level` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`eId`),
  KEY `reportsTo` (`reportsTo`),
  KEY `officeCode` (`officeCode`),
  CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`reportsTo`) REFERENCES `employees` (`eId`),
  CONSTRAINT `employees_ibfk_2` FOREIGN KEY (`officeCode`) REFERENCES `offices` (`officeCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (496,'Rajeshwar',24444,'mgerard@classicmodelcars.com','4',1102,'SEO Head','4','HIGH'),(1002,'Diane Murphy',0,'kanhaiya@gmail.com','1',NULL,'President','2','MEDIUM'),(1056,'Mary Patterson',NULL,'mpatterso@classicmodelcars.com','1',1002,'VP Sales','2','MEDIUM'),(1076,'Jeff son Firrelli',14712,'jfirrelli@classicmodelcars.com','1',1002,'VP Marketing','1','MEDIUM'),(1088,'William Patterson',33031,'wpatterson@classicmodelcars.com','6',1056,'Sales Manager (APAC)',NULL,'HIGH'),(1102,'Rajeshwar',NULL,'gbondur@classicmodelcars.com','4',1056,'Sale Manager (EMEA)','4','MEDIUM'),(1143,'Anthony Bow',13001,'abow@classicmodelcars.com','1',1056,'Sales Manager (NA)','2','MEDIUM'),(1165,'Leslie Jennings',12950,'ljennings@classicmodelcars.com','1',1143,'Sales HOD',NULL,'MEDIUM'),(1166,'Leslie Thompson',NULL,'lthompson@classicmodelcars.com','1',1143,'Marketing Head','5','LOW'),(1188,'Julie Firrelli',36880,'jfirrelli@classicmodelcars.com','2',1143,'Sales Admin','1','HIGH'),(1216,'Steve Patterson',0,'spatterson@classicmodelcars.com','2',1143,'Dept Head','5','MEDIUM'),(1286,'Foon Yue Tseng',29666,'ftseng@classicmodelcars.com','3',1143,'HOD','5','HIGH'),(1323,'George Vanauf',43346,'gvanauf@classicmodelcars.com','3',1143,'Sales Rep','2','HIGH'),(1337,'Loui Bondur',27230,'lbondur@classicmodelcars.com','4',1102,'Sales Rep','2','HIGH'),(1370,'Gerard Hernandez',5614,'ghernande@classicmodelcars.com','4',1102,'Digital Marketing','5','LOW'),(1401,'Pamela Castillo',45883,'pcastillo@classicmodelcars.com','4',1102,'Sales Rep','5','HIGH'),(1501,'Larry Bott',26469,'lbott@classicmodelcars.com','7',1102,'Admin',NULL,'MEDIUM'),(1504,'Barry Barry',22189,'bjones@classicmodelcars.com','7',1102,'Sales Rep','3','MEDIUM'),(1611,'Andy Fixter',24243,'afixter@classicmodelcars.com','6',1088,'Sales Rep','5','MEDIUM'),(1612,'Peter Peter',14712,'pmarsh@classicmodelcars.com','6',1088,'Sales Rep','2','MEDIUM'),(1619,'Tom son King',47520,'tking@classicmodelcars.com','6',1088,'Regional Head','5','HIGH'),(1621,'Mami Nishi',24648,'mnishi@classicmodelcars.com','5',1056,'Sales Rep','4','MEDIUM'),(1625,'Yoshimi Kato',30183,'ykato@classicmodelcars.com','5',1621,'Store Admin','5','HIGH'),(1702,'Martin Gerard',24444,'mgerard@classicmodelcars.com','4',1102,'SEO Head','4','HIGH');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-02 10:43:22
