CREATE DATABASE  IF NOT EXISTS `economysa` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `economysa`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: economysa
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `oauth_access_token`
--

DROP TABLE IF EXISTS `oauth_access_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_access_token` (
  `token_id` varchar(256) DEFAULT NULL,
  `token` blob,
  `authentication_id` varchar(256) NOT NULL,
  `user_name` varchar(256) DEFAULT NULL,
  `client_id` varchar(256) DEFAULT NULL,
  `authentication` blob,
  `refresh_token` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`authentication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oauth_refresh_token`
--

DROP TABLE IF EXISTS `oauth_refresh_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_refresh_token` (
  `token_id` varchar(256) DEFAULT NULL,
  `token` blob,
  `authentication` blob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tconf_brand`
--

DROP TABLE IF EXISTS `tconf_brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tconf_brand` (
  `id` int NOT NULL AUTO_INCREMENT,
  `_parent` int DEFAULT NULL,
  `_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=352 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tconf_category`
--

DROP TABLE IF EXISTS `tconf_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tconf_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `_parent` int DEFAULT NULL,
  `_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=911 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tconf_list_price`
--

DROP TABLE IF EXISTS `tconf_list_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tconf_list_price` (
  `id` int NOT NULL AUTO_INCREMENT,
  `_code` varchar(5) NOT NULL,
  `_description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tconf_list_price_entry`
--

DROP TABLE IF EXISTS `tconf_list_price_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tconf_list_price_entry` (
  `id` int NOT NULL AUTO_INCREMENT,
  `list_price` int NOT NULL,
  `_code` varchar(10) NOT NULL,
  `_description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Rubros de una lista de precio';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tconf_modality`
--

DROP TABLE IF EXISTS `tconf_modality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tconf_modality` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Identificador Ãºnico del registro en el sistema',
  `_code` varchar(1) DEFAULT NULL COMMENT 'CÃ³digo de la modalidad. Posibles valores:\n(P): Proveedor\n(C): Categoria\n(M): Marca\n(A): Articulo',
  `_name` varchar(20) NOT NULL COMMENT 'Nombre de la modalidad registrada en el sistema. Posibles valores pre definidos:\n- Proveedor\n- Categoria\n- Marca\n- Articulo',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Modalidades registradas en el sistema';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tconf_promotion_type`
--

DROP TABLE IF EXISTS `tconf_promotion_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tconf_promotion_type` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Identificador Ãºnico del tipo de promociÃ³n',
  `_code` varchar(1) NOT NULL COMMENT 'CÃ³digo del tipo de promociÃ³n. Posibles valores:\n(B): BonificaciÃ³n\n(S): Soles',
  `_name` varchar(20) NOT NULL COMMENT 'Nombre de la bonificaciÃ³n. Posibles valores:\n- Bonificacion\n- Soles',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Tipos de promociÃ³n';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tconf_unity`
--

DROP TABLE IF EXISTS `tconf_unity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tconf_unity` (
  `id` int NOT NULL AUTO_INCREMENT,
  `_code` varchar(5) NOT NULL,
  `_name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tconf_unity__code_uindex` (`_code`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tcore_product`
--

DROP TABLE IF EXISTS `tcore_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tcore_product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `_code` varchar(10) NOT NULL,
  `_name` varchar(256) NOT NULL,
  `_category` int NOT NULL,
  `_brand` int NOT NULL,
  `_provider` int DEFAULT NULL,
  `chatbot` int NOT NULL,
  `toma_pedido` int NOT NULL,
  `unity_master` int NOT NULL,
  `unity_master_description` varchar(100) NOT NULL,
  `unity_master_equivalent` int NOT NULL,
  `unity_min` int DEFAULT NULL,
  `unity_min_description` varchar(100) NOT NULL,
  `unity_min_equivalent` int NOT NULL,
  `creation_date` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18215 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tcore_provider`
--

DROP TABLE IF EXISTS `tcore_provider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tcore_provider` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Identificador del proveedor. Este valor es Ãºnico. Ejem: 1000',
  `_code` varchar(10) NOT NULL,
  `_name` varchar(100) NOT NULL COMMENT 'Nombre del proveedor. Ejem: CLOROX PERU S.A.',
  `_ruc` varchar(20) NOT NULL COMMENT 'RUC del proveedor. Ejem: 20100003946',
  `creation_date` timestamp(6) NULL DEFAULT NULL COMMENT 'Fecha creaciÃ³n del registro. Ejem: 01-10-2021',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=523 DEFAULT CHARSET=latin1 COMMENT='Almacena informaciÃ³n de proveedores';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tprom_mechanic`
--

DROP TABLE IF EXISTS `tprom_mechanic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tprom_mechanic` (
  `id` int NOT NULL AUTO_INCREMENT,
  `_code` varchar(20) NOT NULL,
  `_description` varchar(100) NOT NULL,
  `start_date` timestamp(6) NULL DEFAULT NULL,
  `end_date` timestamp(6) NULL DEFAULT NULL,
  `accumulate` varchar(1) NOT NULL,
  `promotion_type` varchar(1) NOT NULL,
  `_type` varchar(1) NOT NULL COMMENT '(R) Rango\n(F) Factor\n(X) Rango y Factor',
  `range1` double DEFAULT NULL,
  `range2` double DEFAULT NULL,
  `_factor` double DEFAULT NULL,
  `conditional` varchar(1) DEFAULT NULL,
  `emitter` varchar(1) NOT NULL COMMENT 'P: Proveedor\nE: Economysa',
  `emitter_id` int DEFAULT NULL COMMENT 'ID del proveedor',
  `creation_user` varchar(50) NOT NULL,
  `creation_date` timestamp(6) NULL DEFAULT NULL,
  `update_user` varchar(50) DEFAULT NULL,
  `update_date` timestamp(6) NULL DEFAULT NULL,
  `_status` varchar(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1 COMMENT='Almacena las mecÃ¡nicas creadas en el sistema';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tprom_mechanic_bonus`
--

DROP TABLE IF EXISTS `tprom_mechanic_bonus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tprom_mechanic_bonus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `_mechanic` int NOT NULL,
  `percentage_discount` double DEFAULT NULL,
  `bonus_quantity` double DEFAULT NULL,
  `bonus_max` double DEFAULT NULL,
  `_product` int DEFAULT NULL,
  `_priority` int NOT NULL DEFAULT '0',
  `quantity_use` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tprom_mechanic_detail`
--

DROP TABLE IF EXISTS `tprom_mechanic_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tprom_mechanic_detail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `_mechanic` int NOT NULL COMMENT 'Mecanica a la cual pertenece el registro.',
  `_included` varchar(1) NOT NULL COMMENT 'Indica si el registro se incluye en la \nevaluacion de la mecanica o no.',
  `_type` varchar(1) NOT NULL COMMENT 'Indica hacia que tipo esta dirigida la\nmecanica:\n(P): Proveedor\n(A): Articulo\n(C): Categoria\n(M): Marca',
  `_identifier` int NOT NULL COMMENT 'Es el ID del registro en cuestion.',
  `_code` varchar(20) DEFAULT NULL COMMENT 'Aplica solo cuando el tipo es dirigido\nhacia proveedor o articulo. Este dato,\nrepresenta el codigo del proveedor o\narticulo.',
  `_description` varchar(100) NOT NULL COMMENT 'Es el nombre del proveedor, producto,\ncategoria o marca.',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tprom_mechanic_detail_y`
--

DROP TABLE IF EXISTS `tprom_mechanic_detail_y`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tprom_mechanic_detail_y` (
  `id` int NOT NULL AUTO_INCREMENT,
  `_mechanic` int NOT NULL COMMENT 'Mecanica a la cual pertenece el registro.',
  `_type` varchar(1) NOT NULL COMMENT 'Indica hacia que va dirigido el registro:\n(P): Proveedor\n(A): Articulo\n(C): Categoria\n(M): Marca',
  `_identifier` int NOT NULL COMMENT 'Es el ID del registro.',
  `_code` varchar(20) DEFAULT NULL COMMENT 'Aplica solo para tipo proveedor y\nproducto. Es el codigo obtenido del\nregistro.',
  `_description` varchar(100) NOT NULL COMMENT 'Es el nombre del proveedor, articulo,\ncategoria o marca.',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tprom_mechanic_entry`
--

DROP TABLE IF EXISTS `tprom_mechanic_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tprom_mechanic_entry` (
  `id` int NOT NULL AUTO_INCREMENT,
  `_mechanic` int NOT NULL COMMENT 'Identificador de la mecanica.',
  `_type` varchar(1) NOT NULL COMMENT '(L): Lista de precio\n(G): Giro de negocio',
  `_identifier` int NOT NULL COMMENT 'Identificador de la Lista de precio, o\nGiro de negocio.',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tsegu_user`
--

DROP TABLE IF EXISTS `tsegu_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tsegu_user` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Identificador del registro. Ejem: 1',
  `_email` varchar(50) NOT NULL COMMENT 'Correo electrÃ³nico que el usuario utilizarÃ¡ para ingresar al sistema. Ejem: jcieza90@gmail.com',
  `_password` varchar(256) NOT NULL COMMENT 'ContraseÃ±a ingresada por el usuario y almacenada de forma hasheada (SHA256). Ejem: {bcrypt}sdfh923ry239dh9ewd2h3293hf',
  `_role` varchar(10) NOT NULL COMMENT 'Rol asignado al usuario, el cual le otorga diferentes permisos. Ejem: sysadmin, user, bot.',
  `_name` varchar(100) NOT NULL COMMENT 'Nombre del usuario reigstrado. Ejem: Juan Jeferson.',
  `last_name` varchar(100) NOT NULL COMMENT 'Apellidos del usuario registrado. Ejem: Cieza Anampa.',
  `_phone` varchar(9) DEFAULT NULL COMMENT 'TelÃ©fono de contacto del usuario registrado. Ejem: 983552193.',
  `creation_user` int DEFAULT NULL,
  `creation_date` timestamp(6) NULL DEFAULT NULL COMMENT 'Fecha de registro del usuario en el sistema. Ejem: 10-10-2021',
  `update_user` int DEFAULT NULL,
  `update_date` timestamp(6) NULL DEFAULT NULL,
  `_status` int NOT NULL COMMENT 'Estado del registro en el sistema. Posibles valores:\n(1): Activo\n(0): Inactivo\n\nValor por defecto: 1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tsegu_user__email_uindex` (`_email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-08 10:25:00
