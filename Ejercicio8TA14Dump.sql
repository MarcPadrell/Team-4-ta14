CREATE DATABASE  IF NOT EXISTS `ejercicio8TA14` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ejercicio8TA14`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 192.168.31.165    Database: ejercicio8TA14
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `PIEZAS`
--

DROP TABLE IF EXISTS `PIEZAS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PIEZAS` (
  `CODIGO` int NOT NULL,
  `NOMBRE` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PIEZAS`
--

LOCK TABLES `PIEZAS` WRITE;
/*!40000 ALTER TABLE `PIEZAS` DISABLE KEYS */;
/*!40000 ALTER TABLE `PIEZAS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PROVEEDORES`
--

DROP TABLE IF EXISTS `PROVEEDORES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PROVEEDORES` (
  `ID` varchar(4) NOT NULL,
  `NOMBRE` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PROVEEDORES`
--

LOCK TABLES `PROVEEDORES` WRITE;
/*!40000 ALTER TABLE `PROVEEDORES` DISABLE KEYS */;
/*!40000 ALTER TABLE `PROVEEDORES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SUMINISTRA`
--

DROP TABLE IF EXISTS `SUMINISTRA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SUMINISTRA` (
  `CODIGOPIEZA` int NOT NULL,
  `IDPROVEEDOR` varchar(4) NOT NULL,
  `PRECIO` int DEFAULT NULL,
  PRIMARY KEY (`CODIGOPIEZA`,`IDPROVEEDOR`),
  KEY `IDPROVEEDOR` (`IDPROVEEDOR`),
  CONSTRAINT `SUMINISTRA_ibfk_1` FOREIGN KEY (`CODIGOPIEZA`) REFERENCES `PIEZAS` (`CODIGO`),
  CONSTRAINT `SUMINISTRA_ibfk_2` FOREIGN KEY (`IDPROVEEDOR`) REFERENCES `PROVEEDORES` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SUMINISTRA`
--

LOCK TABLES `SUMINISTRA` WRITE;
/*!40000 ALTER TABLE `SUMINISTRA` DISABLE KEYS */;
/*!40000 ALTER TABLE `SUMINISTRA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'ejercicio8TA14'
--

--
-- Dumping routines for database 'ejercicio8TA14'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-26 20:01:00
