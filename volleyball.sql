-- MariaDB dump 10.19  Distrib 10.4.28-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: volleyball
-- ------------------------------------------------------
-- Server version	10.4.28-MariaDB

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
-- Table structure for table `games`
--

DROP TABLE IF EXISTS `games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `games` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `team1_id` varchar(100) NOT NULL,
  `team2_id` varchar(100) NOT NULL,
  `winner` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games`
--

LOCK TABLES `games` WRITE;
/*!40000 ALTER TABLE `games` DISABLE KEYS */;
/*!40000 ALTER TABLE `games` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `players` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES (4,'Paul'),(7,'hank'),(8,'hank'),(9,'hank'),(10,'hank'),(12,NULL),(13,'hank'),(14,'hank'),(15,'hank'),(16,'hank'),(17,'hank'),(18,'hank'),(19,'hank'),(20,'hank'),(21,'Tyler'),(22,'Tyler'),(23,'Tyler'),(24,'Tyler'),(25,'Tyler'),(26,'Tyler'),(27,'Tyler'),(28,'Tyler'),(29,'Tyler'),(30,'Tyler'),(31,'Tyler'),(32,'Tyler'),(33,'Tyler'),(34,'Tyler'),(35,'Tyler'),(36,'Tyler'),(37,'Tyler'),(38,'Tyler'),(39,'Tyler'),(40,'Tyler'),(41,'Stan'),(43,'Stan'),(44,'Stan'),(45,'Stan'),(46,'Stan');
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `player1_id` int(11) NOT NULL,
  `player2_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (2,'Bills',3,4),(3,'saints',7,5),(4,'saints',7,5),(6,'saints',7,5),(8,'saints',7,5),(9,'saints',7,5),(10,'saints',7,5),(11,'saints',7,5),(12,'saints',0,0),(13,'saints',0,0),(14,'saints',0,0),(15,'saints',0,0),(16,'saints',0,0),(17,'saints',0,0),(18,'saints',0,0),(19,'saints',0,0),(20,'saints',0,0),(21,'saints',0,0),(22,'saints',0,0),(23,'saints',0,0),(24,'saints',0,0),(25,'saints',0,0),(26,'saints',0,0),(27,'Dogs',6,5),(28,'Dogs',6,5),(29,'Dogs',6,5),(30,'Dogs',6,5),(31,'Knights',3,9),(32,'Knights',3,9),(33,'Knights',3,9),(34,'Knights',3,9),(35,'Knights',3,9),(36,'Knights',3,9),(37,'Knights',3,9),(38,'Knights',3,9),(39,'Knights',3,9),(40,'Knights',3,9),(41,'Knights',3,9),(42,'Knights',3,9),(43,'Knights',3,9),(44,'Knights',3,9),(45,'Knights',3,9),(46,'Knights',3,9),(47,'Parkers',2,1),(48,'Parkers',2,1),(49,'Parkers',2,1),(50,'Parkers',2,1),(51,'Parkers',2,1),(52,'Parkers',2,1),(53,'Parkers',2,1),(57,'WaterBanks',2,1),(58,'Spartan',2,1),(59,'Spartan',2,1),(60,'Spartan',2,1),(61,'Spartan',2,1),(63,'ALMOND',2,1),(64,'ALMOND',1,1),(65,'ALMOND',1,1),(66,'ALMOND',-1,1),(67,'ALMOND',1,1),(68,'ALMOND',1,1),(69,'ALMOND',1,1),(70,'ALMOND',1,1),(71,'ALMOND',1,1),(72,'ALMOND',1,1),(73,'CABOOSE',1,1),(74,'CABOOSE',1,1),(75,'CABOOSE',1,1),(76,'CABOOSE',1,1),(77,'CABOOSE',1,1),(78,'CABOOSE',1,1),(79,'YANK',1,1),(80,'YANK',1,1),(81,'YANK',1,1);
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-21 12:04:58
