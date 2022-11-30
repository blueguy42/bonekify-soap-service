-- MySQL dump 10.13  Distrib 8.0.31, for Linux (x86_64)
--
-- Host: localhost    Database: soap
-- ------------------------------------------------------
-- Server version	8.0.31-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Logging`
--

DROP TABLE IF EXISTS `Logging`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Logging` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(256) NOT NULL,
  `IP` varchar(16) NOT NULL,
  `endpoint` varchar(256) NOT NULL,
  `requested_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Logging`
--

LOCK TABLES `Logging` WRITE;
/*!40000 ALTER TABLE `Logging` DISABLE KEYS */;
INSERT INTO `Logging` VALUES (1,'ini testing saja','192.168.0.1','localhost','2022-11-27 21:00:00'),(2,'ini testing saja','192.168.0.1','localhost','2022-11-27 21:00:00'),(3,'menambahkan permintaan subscription baru untuk creator_id=99 dan subscriber_id =11','/127.0.0.1:37448','localhost/soap/subscription','2022-11-29 13:10:26'),(4,'mengambil semua pending subscriber','/127.0.0.1:33848','localhost/soap/subscription','2022-11-29 22:29:17'),(5,'mengambil semua pending subscriber','/127.0.0.1:51222','localhost/soap/subscription','2022-11-29 22:29:57'),(6,'mengambil semua pending subscriber','/127.0.0.1:45870','localhost/soap/subscription','2022-11-29 22:30:41'),(7,'mengambil semua pending subscriber','/127.0.0.1:38832','localhost/soap/subscription','2022-11-29 22:34:05'),(8,'menambahkan permintaan subscription baru untuk creator_id=6 dan subscriber_id =10','/127.0.0.1:34210','localhost/soap/subscription','2022-11-29 22:35:03'),(9,'mengambil semua pending subscriber','/127.0.0.1:56602','localhost/soap/subscription','2022-11-29 22:50:16'),(10,'mengambil semua pending subscriber','/127.0.0.1:41508','localhost/soap/subscription','2022-11-29 22:57:23'),(11,'mengambil semua pending subscriber','/127.0.0.1:49278','localhost/soap/subscription','2022-11-29 23:08:33'),(12,'mengambil semua pending subscriber','/127.0.0.1:42710','localhost/soap/subscription','2022-11-29 23:13:28'),(13,'mengambil semua pending subscriber','/127.0.0.1:53594','localhost/soap/subscription','2022-11-29 23:14:39'),(14,'mengambil semua pending subscriber','/127.0.0.1:38010','localhost/soap/subscription','2022-11-29 23:15:28'),(15,'mengambil semua pending subscriber','/127.0.0.1:37976','localhost/soap/subscription','2022-11-29 23:16:18');
/*!40000 ALTER TABLE `Logging` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Subscription`
--

DROP TABLE IF EXISTS `Subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Subscription` (
  `creator_id` int NOT NULL,
  `subscriber_id` int NOT NULL,
  `status` enum('PENDING','ACCEPTED','REJECTED') NOT NULL DEFAULT 'PENDING',
  PRIMARY KEY (`creator_id`,`subscriber_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Subscription`
--

LOCK TABLES `Subscription` WRITE;
/*!40000 ALTER TABLE `Subscription` DISABLE KEYS */;
INSERT INTO `Subscription` VALUES (0,0,'PENDING'),(1,1,'PENDING'),(1,2,'PENDING'),(6,10,'PENDING'),(90,90,'PENDING'),(99,11,'PENDING'),(111,113,'ACCEPTED');
/*!40000 ALTER TABLE `Subscription` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-30 16:44:24
