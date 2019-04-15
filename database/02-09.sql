-- MySQL dump 10.15  Distrib 10.0.29-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: 64.62.211.131    Database: 64.62.211.131
-- ------------------------------------------------------
-- Server version	5.6.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `issue`
--

DROP TABLE IF EXISTS `issue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issue` (
  `UID` varchar(32) DEFAULT NULL,
  `Title` varchar(32) DEFAULT NULL,
  `Description` varchar(32) DEFAULT NULL,
  `Subject` varchar(32) DEFAULT NULL,
  `IID` int(11) NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `status` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`IID`),
  KEY `UID` (`UID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issue`
--

LOCK TABLES `issue` WRITE;
/*!40000 ALTER TABLE `issue` DISABLE KEYS */;
INSERT INTO `issue` VALUES ('U1510999','Econmoics','Simple and compund intrest','ISEE',1234,56,NULL,'Awaiting approval'),('U1510232','JDBC','Connectivity','DBMS',11321,98,NULL,'Awaiting approval'),('U1510532','PDA','States and transitions','TOC',35321,58,NULL,'Awaiting approval'),('U1510783','Testing','Blackbox and whitebox','SEPM',56421,28,NULL,'Solved');
/*!40000 ALTER TABLE `issue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `password` char(15) DEFAULT NULL,
  `type` char(10) DEFAULT NULL,
  `uname` varchar(32) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('qw','Admin','Saurabh'),('onkar','Admin','Onkar'),('admin','Admin','admin'),('admin','Student','jai'),('password','Student','U1510999'),('password','Student','U1510232'),('password','Student','U1510532'),('password','Student','U1510783');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uinfo`
--

DROP TABLE IF EXISTS `uinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uinfo` (
  `uid` varchar(10) DEFAULT NULL,
  `email` varchar(10) DEFAULT NULL,
  `mobileno` varchar(10) DEFAULT NULL,
  `class` varchar(10) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `pass` varchar(10) DEFAULT NULL,
  `image` blob
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uinfo`
--

LOCK TABLES `uinfo` WRITE;
/*!40000 ALTER TABLE `uinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `uinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vote`
--

DROP TABLE IF EXISTS `vote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vote` (
  `IID` int(11) NOT NULL,
  `UID` varchar(32) NOT NULL,
  `up_down` int(11) DEFAULT NULL,
  PRIMARY KEY (`IID`,`UID`),
  KEY `UID` (`UID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vote`
--

LOCK TABLES `vote` WRITE;
/*!40000 ALTER TABLE `vote` DISABLE KEYS */;
/*!40000 ALTER TABLE `vote` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-02  9:38:16
