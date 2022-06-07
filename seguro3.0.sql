CREATE DATABASE  IF NOT EXISTS `seguro` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `seguro`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: seguro
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `acidente`
--

DROP TABLE IF EXISTS `acidente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acidente` (
  `num_sinistro` int unsigned NOT NULL,
  `data_acidente` date NOT NULL,
  `local_acidente` varchar(30) NOT NULL,
  PRIMARY KEY (`num_sinistro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acidente`
--

LOCK TABLES `acidente` WRITE;
/*!40000 ALTER TABLE `acidente` DISABLE KEYS */;
INSERT INTO `acidente` VALUES
(1,'2009-01-01','Rua Nova'),
(2,'2009-03-25','Rua Bela Vista'),
(3,'2012-07-13','Rua Duque de Caxias'),
(4,'2010-12-31','Avenida Norte'),
(5,'2011-01-01','Avenida Norte'),
(6,'2011-02-08','Avenida Norte'),
(7,'2016-05-13','Rua da Aurora'),
(8,'2013-06-23','Avenida Sul'),
(9,'2009-11-03','Avenida Boa Viagem'),
(10,'2020-03-14','Avenida Guararapes'),
(11,'2017-04-24','Rua Castro Alves'),
(12,'2015-05-25','Avenida Norte'),
(13,'2014-08-11','Rua da Hora'),
(14,'2019-10-03','Avenida Norte'),
(15,'2019-10-25','Avenida das Americas'),
(16,'2017-07-17','Avenida Recife'),
(17,'2016-09-13','Rua da Aurora'),
(18,'2011-06-29','Rua Amazonas'),
(19,'2010-12-18','Rua Nova'),
(20,'2019-03-16','Avenida Boa Viagem'),
(21,'2019-02-21','Avenida Duarte Coelho'),
(22,'2019-06-28','Rua Imperial'),
(23,'2019-09-06','Rua Dom Bosco'),
(24,'2019-05-29','Rua do Pombal'),
(25,'2019-12-18','Rua Isaac Buril');
/*!40000 ALTER TABLE `acidente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carro`
--

DROP TABLE IF EXISTS `carro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carro` (
  `renavam` int unsigned NOT NULL,
  `modelo` varchar(30) NOT NULL,
  `ano` year DEFAULT NULL,
  PRIMARY KEY (`renavam`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carro`
--

LOCK TABLES `carro` WRITE;
/*!40000 ALTER TABLE `carro` DISABLE KEYS */;
INSERT INTO `carro` VALUES
(1234,'Chevrolet Onix',2012),
(1587,'Honda HR-V',2015),
(2422,'Volkswagen Up!',2014),
(3569,'Fiat Toro',2020),
(4002,'BMW I3',2019),
(5023,'Hyundai HB20',2015),
(6985,'Toyota Hilux',2021),
(7489,'Jeep Compass',2019),
(7548,'Toyota Corolla',2018),
(8042,'Ranger Rover',2011),
(8571,'Ford Focus',2013),
(9284,'Renault Kwid',2019);
/*!40000 ALTER TABLE `carro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participou`
--

DROP TABLE IF EXISTS `participou`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `participou` (
  `num_sinistro` int unsigned NOT NULL,
  `renavam` int unsigned NOT NULL,
  `id_motorista` int unsigned NOT NULL,
  `valor_dano` float unsigned NOT NULL,
  KEY `num_sinistro` (`num_sinistro`),
  KEY `renavam` (`renavam`),
  CONSTRAINT `participou_ibfk_1` FOREIGN KEY (`num_sinistro`) REFERENCES `acidente` (`num_sinistro`),
  CONSTRAINT `participou_ibfk_2` FOREIGN KEY (`renavam`) REFERENCES `carro` (`renavam`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participou`
--

LOCK TABLES `participou` WRITE;
/*!40000 ALTER TABLE `participou` DISABLE KEYS */;
INSERT INTO `participou` VALUES
(1,1234,1,500),
(2,9284,1,500),
(3,8571,1,500),
(1,7489,2,800),
(20,7489,2,100),
(20,4002,3,100),
(20,6985,9,100);
/*!40000 ALTER TABLE `participou` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoa`
--

DROP TABLE IF EXISTS `pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pessoa` (
  `id_motorista` int unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `endereco` varchar(30) NOT NULL,
  PRIMARY KEY (`id_motorista`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa`
--

LOCK TABLES `pessoa` WRITE;
/*!40000 ALTER TABLE `pessoa` DISABLE KEYS */;
INSERT INTO `pessoa` VALUES 
(1,'John Smith','Rua Bela Vista'),
(2,'Lucas Romeiro','Rua Amazonas'),
(3,'Isaac Silva','Rua Duque De Caxias'),
(4,'Alan Turing','Rua Castro Alves '),
(5,'Dimas Cassimiro','Rua Rui Barbosa'),
(6,'Yukihiro Matsumoto','Avenida Guararapes'),
(7,'Priscilla Kelly','Avenida Boa Viagem'),
(8,'Leonhard Euler','Avenida Sul'),
(9,'Edsger Dijkstra','Rua Rui Barbosa'),
(10,'Clarisse Sieckenius','Rua Nova'),
(11,'Linus Torvalds','Rua da Aurora'),
(12,'Elliot Alderson','Avenida Norte'),
(13,'Richard Stallman','Rua Duque De Caxias'),
(14,'Donald Knuth','Avenida Boa Viagem'),
(15,'Niklaus Wirth','Avenida Sul'),
(16,'Ken Thompson','Rua Bela Vista'),
(17,'Von Neumann','Rua Nova'),
(18,'Ada Lovelace','Rua Rui Barbosa'),
(19,'Katherine Johnson','Avenida Norte'),(20,'Grace Hopper','Avenida Norte');
/*!40000 ALTER TABLE `pessoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `possui`
--

DROP TABLE IF EXISTS `possui`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `possui` (
  `id_motorista` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `renavam` int unsigned DEFAULT NULL,
  KEY `renavam` (`renavam`),
  CONSTRAINT `possui_ibfk_1` FOREIGN KEY (`renavam`) REFERENCES `carro` (`renavam`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `possui`
--

LOCK TABLES `possui` WRITE;
/*!40000 ALTER TABLE `possui` DISABLE KEYS */;
INSERT INTO `possui` VALUES 
('1',1234),('2',7489),
('3',4002),('4',7548),
('5',7489),('7',4002),
('9',6985),('1',8571),
('1',9284);
/*!40000 ALTER TABLE `possui` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-18 14:48:44
