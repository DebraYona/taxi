CREATE DATABASE  IF NOT EXISTS `taxi_feik` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `taxi_feik`;
-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: taxi_feik
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
-- Table structure for table `Cliente`
--

DROP TABLE IF EXISTS `Cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Cliente` (
  `idCliente` int(11) NOT NULL,
  `nombreCliente` varchar(128) NOT NULL,
  `apellidoCliente` varchar(128) NOT NULL,
  `email` varchar(20) DEFAULT NULL,
  `telefono` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Conductor`
--

DROP TABLE IF EXISTS `Conductor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Conductor` (
  `id` int(11) NOT NULL,
  `nombreConductor` varchar(128) NOT NULL,
  `apellidoConductor` varchar(128) NOT NULL,
  `fechaNacimientoConductor` date NOT NULL,
  `numeroLincenciaConducir` varchar(128) NOT NULL,
  `fechaCaducidad` date NOT NULL,
  `trabajando` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Estado`
--

DROP TABLE IF EXISTS `Estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Estado` (
  `id` int(11) NOT NULL,
  `nombreEstado` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `status_ak_1` (`nombreEstado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `EstadoViajeTaxi`
--

DROP TABLE IF EXISTS `EstadoViajeTaxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EstadoViajeTaxi` (
  `id` int(11) NOT NULL,
  `idViajeTaxi` int(11) NOT NULL,
  `idEstado` int(11) NOT NULL,
  `tiempoEstado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `idCliente` int(11) DEFAULT NULL,
  `idTurno` int(11) DEFAULT NULL,
  `detalleEstado` text,
  PRIMARY KEY (`id`),
  KEY `cab_ride_status_cab_ride` (`idViajeTaxi`),
  KEY `cab_ride_status_cc_agent` (`idCliente`),
  KEY `cab_ride_status_shift` (`idTurno`),
  KEY `cab_ride_status_status` (`idEstado`),
  CONSTRAINT `cab_ride_status_cab_ride` FOREIGN KEY (`idViajeTaxi`) REFERENCES `ViajeTaxi` (`id`),
  CONSTRAINT `cab_ride_status_cc_agent` FOREIGN KEY (`idCliente`) REFERENCES `Cliente` (`idCliente`),
  CONSTRAINT `cab_ride_status_shift` FOREIGN KEY (`idTurno`) REFERENCES `Turno` (`id`),
  CONSTRAINT `cab_ride_status_status` FOREIGN KEY (`idEstado`) REFERENCES `Estado` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ModeloCarro`
--

DROP TABLE IF EXISTS `ModeloCarro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ModeloCarro` (
  `id` int(11) NOT NULL,
  `nombreModelo` varchar(64) NOT NULL,
  `descripcionModelo` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `car_model_ak_1` (`nombreModelo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TipoPago`
--

DROP TABLE IF EXISTS `TipoPago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TipoPago` (
  `id` int(11) NOT NULL,
  `nombreTipoPago` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `payment_type_ak_1` (`nombreTipoPago`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Turno`
--

DROP TABLE IF EXISTS `Turno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Turno` (
  `id` int(11) NOT NULL,
  `idConductor` int(11) NOT NULL,
  `idUnidad` int(11) NOT NULL,
  `horaInicioTurno` timestamp NULL DEFAULT NULL,
  `horaFinTurno` timestamp NULL DEFAULT NULL,
  `horaInicioSesion` timestamp NULL DEFAULT NULL,
  `horaFinSesion` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `drives_cab` (`idUnidad`),
  KEY `drives_driver` (`idConductor`),
  CONSTRAINT `drives_cab` FOREIGN KEY (`idUnidad`) REFERENCES `Unidad` (`id`),
  CONSTRAINT `drives_driver` FOREIGN KEY (`idConductor`) REFERENCES `Conductor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Unidad`
--

DROP TABLE IF EXISTS `Unidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Unidad` (
  `id` int(11) NOT NULL,
  `placa` varchar(32) NOT NULL,
  `idModeloCarro` int(11) NOT NULL,
  `annoFabrica` int(11) NOT NULL,
  `idConductor` int(11) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cab_ak_1` (`placa`),
  KEY `cab_car_model` (`idModeloCarro`),
  KEY `cab_driver` (`idConductor`),
  CONSTRAINT `cab_car_model` FOREIGN KEY (`idModeloCarro`) REFERENCES `ModeloCarro` (`id`),
  CONSTRAINT `cab_driver` FOREIGN KEY (`idConductor`) REFERENCES `Conductor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ViajeTaxi`
--

DROP TABLE IF EXISTS `ViajeTaxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ViajeTaxi` (
  `id` int(11) NOT NULL,
  `idTurno` int(11) DEFAULT NULL,
  `tiempoInicioViaje` timestamp NULL DEFAULT NULL,
  `tiempoFinViaje` timestamp NULL DEFAULT NULL,
  `direccionInicialViaje` text,
  `puntoInicialGPSViaje` text,
  `direccionDestinoViaje` text,
  `puntoFinalGPSViaje` text,
  `cancelado` tinyint(1) NOT NULL DEFAULT '0',
  `idPago` int(11) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cab_ride_payment_type` (`idPago`),
  KEY `cab_ride_shift` (`idTurno`),
  CONSTRAINT `cab_ride_payment_type` FOREIGN KEY (`idPago`) REFERENCES `TipoPago` (`id`),
  CONSTRAINT `cab_ride_shift` FOREIGN KEY (`idTurno`) REFERENCES `Turno` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping events for database 'taxi_feik'
--

--
-- Dumping routines for database 'taxi_feik'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-30  4:20:42
