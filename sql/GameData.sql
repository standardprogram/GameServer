-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: gamedata
-- ------------------------------------------------------
-- Server version	5.7.11-log

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
-- Table structure for table `bastion`
--

DROP TABLE IF EXISTS `bastion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bastion` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `level` tinyint(3) unsigned DEFAULT NULL,
  `camp` tinyint(3) unsigned DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `energy` int(10) unsigned DEFAULT NULL,
  `signature` varchar(400) DEFAULT NULL,
  `owner` int(11) DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `range` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bastion`
--

LOCK TABLES `bastion` WRITE;
/*!40000 ALTER TABLE `bastion` DISABLE KEYS */;
INSERT INTO `bastion` VALUES (1,'富力城29号楼',4,1,0,1000,NULL,1,108.875885,34.163691,50),(2,'富力城北门',3,0,0,1000,NULL,1,108.977391,34.17208,50),(3,'富力城花坛',2,2,0,2000,NULL,0,108.977487,34.170855,50),(4,'富力城西门',1,1,0,500,NULL,0,108.975738,34.167872,50),(5,'沁园停车场入口',2,0,0,2000,NULL,1,108.874533,34.164597,50),(6,'沁园南门',3,2,0,2000,NULL,1,108.876153,34.161774,50),(7,'樱花广场',4,1,0,4000,NULL,0,108.877956,34.160717,50),(8,'沁园湖',5,0,0,4000,NULL,0,108.875885,34.163691,50);
/*!40000 ALTER TABLE `bastion` ENABLE KEYS */;
UNLOCK TABLES;
