-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: romper
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `datos_generales`
--

DROP TABLE IF EXISTS `datos_generales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `datos_generales` (
  `idDG` int NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `celular` decimal(10,0) NOT NULL,
  `CP` int NOT NULL,
  `idDP` int NOT NULL,
  PRIMARY KEY (`idDG`),
  KEY `idDP` (`idDP`),
  CONSTRAINT `id_FK` FOREIGN KEY (`idDP`) REFERENCES `datospersonales` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datos_generales`
--

LOCK TABLES `datos_generales` WRITE;
/*!40000 ALTER TABLE `datos_generales` DISABLE KEYS */;
INSERT INTO `datos_generales` VALUES (34,'u2zZw4/c+Cw93lc33VuH6Ram9jprHA8dSD/LDvFk1j8=',5610663821,6000,43),(35,'vUXH1qPPnTo0CLYVeopM2E+XPfbKMG+5xWMO3HhmhMQ=',5610663821,6000,44);
/*!40000 ALTER TABLE `datos_generales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datospersonales`
--

DROP TABLE IF EXISTS `datospersonales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `datospersonales` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) NOT NULL,
  `apellido_paterno` varchar(40) NOT NULL,
  `apellido_materno` varchar(40) NOT NULL,
  `genero` varchar(6) NOT NULL,
  `vector` varbinary(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datospersonales`
--

LOCK TABLES `datospersonales` WRITE;
/*!40000 ALTER TABLE `datospersonales` DISABLE KEYS */;
INSERT INTO `datospersonales` VALUES (42,'jW8Tx0tl9H8w038B38zWiQ==','Paterno','Materno','Hombre',_binary 'Öyj\Ù\„JmåGü˙\Ò	¯'),(43,'kcZYkuSWeWotdUcUb4N4PGBCt0IN7wfXEb0SyB+g00k=','castro','alcantar','Hombre',_binary '\ÔáRçtáNaVÑíŸ≠\ı'),(44,'aJ5SU/TwDu/+7scyzplBsQ==','castro','sanchez','Hombre',_binary '¶\≈\Õ\‰)\Û\‡ÄùAﬂ±\ [\≈');
/*!40000 ALTER TABLE `datospersonales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `razon_social`
--

DROP TABLE IF EXISTS `razon_social`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `razon_social` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(6) NOT NULL,
  `rfc` varchar(15) NOT NULL,
  `clienteId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `clienteId` (`clienteId`),
  CONSTRAINT `cliente_FK` FOREIGN KEY (`clienteId`) REFERENCES `datospersonales` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `razon_social`
--

LOCK TABLES `razon_social` WRITE;
/*!40000 ALTER TABLE `razon_social` DISABLE KEYS */;
INSERT INTO `razon_social` VALUES (42,'on','NESCAFE',43),(43,'on','NESCAFE',44);
/*!40000 ALTER TABLE `razon_social` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'romper'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-28 11:57:09
