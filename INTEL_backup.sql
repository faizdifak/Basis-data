-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: intel
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

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
-- Table structure for table `anggota`
--

DROP TABLE IF EXISTS `anggota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `anggota` (
  `NPM` char(5) NOT NULL,
  `NAMA` varchar(25) NOT NULL,
  `TEMPAT_LAHIR` varchar(30) NOT NULL,
  `TANGGAL_LAHIR` date NOT NULL,
  `JENIS_KELAMIN` enum('L','P') NOT NULL,
  `NO_HP` varchar(25) NOT NULL,
  PRIMARY KEY (`NPM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anggota`
--

LOCK TABLES `anggota` WRITE;
/*!40000 ALTER TABLE `anggota` DISABLE KEYS */;
INSERT INTO `anggota` VALUES ('24201','FERDIANTO','PURWOREJO','2006-02-15','L','083144667081'),('24202','AKMAL FIRDAUS','KEBUMEN','2006-08-11','L','083144778312'),('24203','FAIZ DIFA KURNIAWAN','KEBUMEN','2005-11-24','L','083144667083'),('24205','AYU','KEBUMEN','0000-00-00','P','083133667087');
/*!40000 ALTER TABLE `anggota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calon`
--

DROP TABLE IF EXISTS `calon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calon` (
  `KODE` char(5) NOT NULL,
  `NAMA` varchar(20) NOT NULL,
  `TEMPAT_LAHIR` varchar(20) NOT NULL,
  `TANGGAL_LAHIR` date NOT NULL,
  `NO_HP` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`KODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calon`
--

LOCK TABLES `calon` WRITE;
/*!40000 ALTER TABLE `calon` DISABLE KEYS */;
INSERT INTO `calon` VALUES ('22345','FAIZ DIFA KURNIAWAN','KEBUMEN','0000-00-00','083144667083');
/*!40000 ALTER TABLE `calon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jadwal_jaga`
--

DROP TABLE IF EXISTS `jadwal_jaga`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jadwal_jaga` (
  `KODE` varchar(20) NOT NULL,
  `NAMA` varchar(20) NOT NULL,
  `HARI_TANGGAL` date NOT NULL,
  `JENIS_KELAMIN` enum('L','P') DEFAULT NULL,
  PRIMARY KEY (`KODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jadwal_jaga`
--

LOCK TABLES `jadwal_jaga` WRITE;
/*!40000 ALTER TABLE `jadwal_jaga` DISABLE KEYS */;
INSERT INTO `jadwal_jaga` VALUES ('24375','MOEIS HARVEY','0000-00-00','L'),('24586','SITI','0000-00-00','P');
/*!40000 ALTER TABLE `jadwal_jaga` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-04  1:16:28
