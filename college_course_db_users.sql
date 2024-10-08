-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: college_course_db
-- ------------------------------------------------------
-- Server version	8.2.0

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `UserID` int NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Role` varchar(20) NOT NULL,
  PRIMARY KEY (`UserID`),
  UNIQUE KEY `Username` (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'BReese','WJuMwG','Admin'),(2,'VPorter','8pf6Ns','Admin'),(3,'BHensley','uVYZt8','Teacher'),(4,'CHinton','7ZNeHj','Teacher'),(5,'MLeach','RF8W67','Teacher'),(6,'JHolden','j3qx78','Teacher'),(7,'GDoyle','twbUsS','Teacher'),(8,'LHorn','9r3xzS','Teacher'),(9,'RRiggs','uVxrFk','Teacher'),(10,'JRodgers','kuDPH8','Student'),(11,'JBaker','gP7YwF','Student'),(12,'MCasey','T2S3c3','Student'),(13,'KHawkins','AphaP7','Student'),(14,'CCoffey','wzd7kL','Student'),(15,'KFuentes','He8a2G','Student'),(16,'CRatliff','vPSKPJ','Student'),(17,'ITalley','KZMjh8','Student'),(18,'SVaughan','yQW5sq','Student'),(19,'MJenkins','uFdQqh','Student'),(20,'WSimpson','prjTPc','Student'),(21,'LByers','bg5cDS','Student'),(22,'LStevenson','dmRygy','Student'),(23,'APerez','5FhE6M','Student'),(24,'DJohnston','LpuNwY','Student'),(25,'ABurt','qZYnxz','Student'),(26,'BJuarez','4mPJ9y','Student'),(27,'CDeleon','MvV54d','Student'),(28,'AFinch','hJtVvy','Student'),(29,'CClements','X65MaF','Student');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-27 21:08:03
