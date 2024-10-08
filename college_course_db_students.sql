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
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `StudentID` int NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `UserID` int DEFAULT NULL,
  PRIMARY KEY (`StudentID`),
  UNIQUE KEY `UserID` (`UserID`),
  CONSTRAINT `students_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (101,'Jena Rodgers','jena.rodgers@mail.com',10),(102,'Jerry Baker','jerry.baker@mail.com',11),(103,'Martena Casey','martena.casey@mail.com',12),(104,'Kasper Hawkins','kasper.hawkins@mail.com',13),(105,'Cain Coffey','cain.coffey@mail.com',14),(106,'Kitra Fuentes','kitra.fuentes@mail.com',15),(107,'Cameron Ratliff','cameron.ratliff@mail.com',16),(108,'Isaac Talley','isaac.talley@mail.com',17),(109,'Sonya Vaughan','sonya.vaughan@mail.com',18),(110,'Mariam Jenkins','mariam.jenkins@mail.com',19),(111,'Walker Simpson','walker.simpson@mail.com',20),(112,'Lucian Byers','lucian.byers@mail.com',21),(113,'Lara Stevenson','lara.stevenson@mail.com',22),(114,'Aretha Perez','aretha.perez@mail.com',23),(115,'Devin Johnston','devin.johnston@mail.com',24),(116,'Alexander Burt','alexander.burt@mail.com',25),(117,'Blaze Juarez','blaze.juarez@mail.com',26),(118,'Clare Deleon','clare.deleon@mail.com',27),(119,'Addison Finch','addison.finch@mail.com',28),(120,'Carly Clements','carly.clements@mail.com',29);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-27 21:08:02
