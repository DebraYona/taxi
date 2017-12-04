CREATE DATABASE  IF NOT EXISTS `taxirebu` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `taxi`;
-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: taxi
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.16.04.1

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
-- Dumping data for table `Cliente`
--

LOCK TABLES `Cliente` WRITE;
/*!40000 ALTER TABLE `Cliente` DISABLE KEYS */;
INSERT INTO `Cliente` VALUES (1,'sdas','asdasd','sfsdf@sd.com','24323');
/*!40000 ALTER TABLE `Cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Conductor`
--

LOCK TABLES `Conductor` WRITE;
/*!40000 ALTER TABLE `Conductor` DISABLE KEYS */;
INSERT INTO `Conductor` VALUES (1,'Ruby','Soso','1009-10-19','17de85','2018-10-10',1),(2,'Jaime','Pariona','1980-08-14','1025765','2018-12-01',1),(3,'Lisa','Manobla','2017-12-15','14528','2018-12-19',0),(4,'Lola','Ramirez','1990-03-16','7412sa36','2018-06-07',1);
/*!40000 ALTER TABLE `Conductor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Estado`
--

LOCK TABLES `Estado` WRITE;
/*!40000 ALTER TABLE `Estado` DISABLE KEYS */;
INSERT INTO `Estado` VALUES (1,'Activo'),(2,'Inactivo');
/*!40000 ALTER TABLE `Estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `EstadoViajeTaxi`
--

LOCK TABLES `EstadoViajeTaxi` WRITE;
/*!40000 ALTER TABLE `EstadoViajeTaxi` DISABLE KEYS */;
/*!40000 ALTER TABLE `EstadoViajeTaxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ModeloCarro`
--

LOCK TABLES `ModeloCarro` WRITE;
/*!40000 ALTER TABLE `ModeloCarro` DISABLE KEYS */;
INSERT INTO `ModeloCarro` VALUES (1,'AUDI A4','4 puertas, 5puertas, Cambio Automatico, motor diesel'),(2,'BMW Serie 7','Motor gasolina, Motor diesel, Motor electrico'),(3,'KIA Rio','Motor diesel, 5puertas'),(4,'ALFA ROMEO Giulia','4 PUERTAS,Motor diesel, cambioautomatico'),(5,'ASTON MARTIN Vantage V12','3 puertas,Motor gasolina, cambio manual.'),(6,'CHEVROLET Camaro','2puertas, motor gasolina'),(7,'HONDA CR-V','5puertas, todoterreno'),(8,'HYUNDAI Santa Fe','5 puertas, todoterreno, diesel.'),(9,'JEEP Wrangler Unlimited','4puertas, motor gasolina.'),(10,'Kia','5 puertas , tanque diesel'),(12,'bugatti','2puertas, carro de lujo');
/*!40000 ALTER TABLE `ModeloCarro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `TipoPago`
--

LOCK TABLES `TipoPago` WRITE;
/*!40000 ALTER TABLE `TipoPago` DISABLE KEYS */;
INSERT INTO `TipoPago` VALUES (1,'Efectivo'),(2,'Tarjeta');
/*!40000 ALTER TABLE `TipoPago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Turno`
--

LOCK TABLES `Turno` WRITE;
/*!40000 ALTER TABLE `Turno` DISABLE KEYS */;
INSERT INTO `Turno` VALUES (1,1,1,'2017-12-01 08:55:10','2017-12-01 09:55:21'),(2,1,2,'2017-11-01 08:59:49','2017-11-01 09:59:56'),(3,1,3,'2017-12-01 12:00:19','2017-12-01 12:17:26'),(4,2,4,'2017-12-01 12:06:29','2017-12-01 12:32:38'),(5,2,4,'2017-12-01 12:50:58','2017-12-01 13:07:09'),(6,3,5,'2017-12-01 09:07:40','2017-12-01 10:07:42'),(7,3,5,'2017-12-01 10:12:56','2017-12-01 10:48:05');
/*!40000 ALTER TABLE `Turno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Unidad`
--

LOCK TABLES `Unidad` WRITE;
/*!40000 ALTER TABLE `Unidad` DISABLE KEYS */;
INSERT INTO `Unidad` VALUES (1,'178523',1,2011,1,1),(2,'75se89',2,2015,1,1),(3,'85wd85',3,2012,1,0),(4,'155s89',5,2014,2,1),(5,'15sw20',8,2000,3,1),(6,'35sr97',2,2015,2,0);
/*!40000 ALTER TABLE `Unidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ViajeTaxi`
--

LOCK TABLES `ViajeTaxi` WRITE;
/*!40000 ALTER TABLE `ViajeTaxi` DISABLE KEYS */;
/*!40000 ALTER TABLE `ViajeTaxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'taxi'
--

--
-- Dumping routines for database 'taxi'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-03 19:53:02
