CREATE DATABASE  IF NOT EXISTS `siakad` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `siakad`;

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
DROP TABLE IF EXISTS `fakultas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fakultas` (
  `ID_Fakultas` int(11) NOT NULL,
  `Nama_Fakultas` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID_Fakultas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `fakultas` WRITE;
/*!40000 ALTER TABLE `fakultas` DISABLE KEYS */;
/*!40000 ALTER TABLE `fakultas` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `jurusan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jurusan` (
  `ID_Jurusan` int(11) NOT NULL,
  `Fakultas_ID` int(11) DEFAULT NULL,
  `Nama_Jurusan` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID_Jurusan`),
  KEY `fk_fakultas_idx` (`Fakultas_ID`),
  CONSTRAINT `fk_fakultas` FOREIGN KEY (`Fakultas_ID`) REFERENCES `fakultas` (`ID_Fakultas`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `jurusan` WRITE;
/*!40000 ALTER TABLE `jurusan` DISABLE KEYS */;
/*!40000 ALTER TABLE `jurusan` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `mahasiswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mahasiswa` (
  `NIM` varchar(15) NOT NULL,
  `Nama` varchar(50) DEFAULT NULL,
  `Jenis_Kelamin` varchar(10) DEFAULT NULL,
  `Jurusan_ID` int(11) DEFAULT NULL,
  `Alamat` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`NIM`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='untuk mengakomodasi data mahasiswa';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `mahasiswa` WRITE;
/*!40000 ALTER TABLE `mahasiswa` DISABLE KEYS */;
/*!40000 ALTER TABLE `mahasiswa` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

