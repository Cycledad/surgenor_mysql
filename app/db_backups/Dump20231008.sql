-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: surgenor
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `archive_department`
--

DROP TABLE IF EXISTS `archive_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `archive_department` (
  `id` int NOT NULL AUTO_INCREMENT,
  `deptName` varchar(100) NOT NULL,
  `dateCreated` date NOT NULL DEFAULT (curdate()),
  `dateArchived` date NOT NULL DEFAULT (curdate()),
  `active` tinyint(1) NOT NULL,
  `dateInActive` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `archive_department`
--

LOCK TABLES `archive_department` WRITE;
/*!40000 ALTER TABLE `archive_department` DISABLE KEYS */;
INSERT INTO `archive_department` VALUES (5,'Executive','2023-09-21','2023-09-22',0,'2023-09-21');
/*!40000 ALTER TABLE `archive_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `archive_ordertbl`
--

DROP TABLE IF EXISTS `archive_ordertbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `archive_ordertbl` (
  `id` int NOT NULL AUTO_INCREMENT,
  `OrderNbr` int NOT NULL,
  `OrderSupplierId` int NOT NULL,
  `deptName` varchar(100) NOT NULL,
  `OrderPartDesc` varchar(100) NOT NULL,
  `OrderQuantity` int NOT NULL,
  `OrderPartPrice` double NOT NULL DEFAULT (0.0),
  `OrderReceivedDate` date DEFAULT NULL,
  `OrderReceivedBy` varchar(100) DEFAULT NULL,
  `OrderReturnDate` date DEFAULT NULL,
  `OrderReturnQuantity` int DEFAULT NULL,
  `PO` varchar(100) DEFAULT NULL,
  `OrderUsername` varchar(20) NOT NULL,
  `OrderActive` tinyint(1) NOT NULL DEFAULT (1),
  `dateArchived` date NOT NULL DEFAULT (curdate()),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `archive_ordertbl`
--

LOCK TABLES `archive_ordertbl` WRITE;
/*!40000 ALTER TABLE `archive_ordertbl` DISABLE KEYS */;
INSERT INTO `archive_ordertbl` VALUES (3,1002,1,'Sales','z',3,10,NULL,NULL,NULL,NULL,'orbea_2023-09-22_1002','kevin',0,'2023-09-22');
/*!40000 ALTER TABLE `archive_ordertbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `archive_provincialtaxrates`
--

DROP TABLE IF EXISTS `archive_provincialtaxrates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `archive_provincialtaxrates` (
  `id` int NOT NULL AUTO_INCREMENT,
  `provincialCode` varchar(2) NOT NULL,
  `taxRate` float NOT NULL,
  `label` varchar(30) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT (1),
  `dateArchived` date NOT NULL DEFAULT (curdate()),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `archive_provincialtaxrates`
--

LOCK TABLES `archive_provincialtaxrates` WRITE;
/*!40000 ALTER TABLE `archive_provincialtaxrates` DISABLE KEYS */;
/*!40000 ALTER TABLE `archive_provincialtaxrates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `archive_purchaseorder`
--

DROP TABLE IF EXISTS `archive_purchaseorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `archive_purchaseorder` (
  `id` int NOT NULL AUTO_INCREMENT,
  `purchaseOrderDate` date NOT NULL DEFAULT (curdate()),
  `dateArchived` date NOT NULL DEFAULT (curdate()),
  `purchaseOrderReceivedDate` date DEFAULT NULL,
  `purchaseOrderActive` tinyint(1) NOT NULL DEFAULT (1),
  `purchaseOrderDateDeleted` date DEFAULT NULL,
  `purchaseOrderNbr` int NOT NULL,
  `purchaseOrderPurchaserId` int NOT NULL,
  `purchaseOrderPurchaserDeptId` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `archive_purchaseorder`
--

LOCK TABLES `archive_purchaseorder` WRITE;
/*!40000 ALTER TABLE `archive_purchaseorder` DISABLE KEYS */;
INSERT INTO `archive_purchaseorder` VALUES (3,'2023-09-22','2023-09-22',NULL,0,NULL,1002,2,2);
/*!40000 ALTER TABLE `archive_purchaseorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `archive_purchaser`
--

DROP TABLE IF EXISTS `archive_purchaser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `archive_purchaser` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `purchaserDeptId` int NOT NULL,
  `purchaserActive` tinyint(1) NOT NULL,
  `purchaserDateInActive` date DEFAULT NULL,
  `purchaserDateCreated` date NOT NULL DEFAULT (curdate()),
  `dateArchived` date NOT NULL DEFAULT (curdate()),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `archive_purchaser`
--

LOCK TABLES `archive_purchaser` WRITE;
/*!40000 ALTER TABLE `archive_purchaser` DISABLE KEYS */;
/*!40000 ALTER TABLE `archive_purchaser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `archive_supplier`
--

DROP TABLE IF EXISTS `archive_supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `archive_supplier` (
  `id` int NOT NULL AUTO_INCREMENT,
  `supplierName` varchar(100) NOT NULL,
  `supplierProv` varchar(25) NOT NULL,
  `supplierActive` tinyint(1) NOT NULL,
  `supplierDateCreated` date NOT NULL DEFAULT (curdate()),
  `dateArchived` date NOT NULL DEFAULT (curdate()),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `archive_supplier`
--

LOCK TABLES `archive_supplier` WRITE;
/*!40000 ALTER TABLE `archive_supplier` DISABLE KEYS */;
/*!40000 ALTER TABLE `archive_supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `archive_user`
--

DROP TABLE IF EXISTS `archive_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `archive_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `givenName` varchar(25) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(250) NOT NULL,
  `createDate` date NOT NULL DEFAULT (curdate()),
  `dateArchived` date NOT NULL DEFAULT (curdate()),
  `active` tinyint(1) NOT NULL DEFAULT (1),
  `dateInActive` date DEFAULT NULL,
  `securityLevel` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `archive_user`
--

LOCK TABLES `archive_user` WRITE;
/*!40000 ALTER TABLE `archive_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `archive_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `id` int NOT NULL AUTO_INCREMENT,
  `deptName` varchar(100) NOT NULL,
  `dateCreated` date NOT NULL DEFAULT (curdate()),
  `active` tinyint(1) NOT NULL,
  `dateInActive` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `deptName` (`deptName`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'Finance','2023-09-26',1,NULL),(2,'Sales','2023-09-21',1,NULL),(3,'parts','2023-09-21',1,NULL),(4,'Executive Team','2023-09-21',1,NULL),(5,'BodyShop','2023-09-26',1,NULL),(6,'Admin','2023-09-26',1,NULL);
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordernbrtbl`
--

DROP TABLE IF EXISTS `ordernbrtbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordernbrtbl` (
  `orderNbr` int NOT NULL,
  UNIQUE KEY `orderNbr_UNIQUE` (`orderNbr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordernbrtbl`
--

LOCK TABLES `ordernbrtbl` WRITE;
/*!40000 ALTER TABLE `ordernbrtbl` DISABLE KEYS */;
INSERT INTO `ordernbrtbl` VALUES (1003);
/*!40000 ALTER TABLE `ordernbrtbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordertbl`
--

DROP TABLE IF EXISTS `ordertbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordertbl` (
  `id` int NOT NULL AUTO_INCREMENT,
  `OrderNbr` int NOT NULL,
  `OrderSupplierId` int NOT NULL,
  `deptName` varchar(100) NOT NULL,
  `OrderPartDesc` varchar(100) NOT NULL,
  `OrderQuantity` int NOT NULL,
  `OrderPartPrice` double NOT NULL DEFAULT (0.0),
  `OrderReceivedDate` date DEFAULT NULL,
  `OrderReceivedBy` varchar(100) DEFAULT NULL,
  `OrderReturnDate` date DEFAULT NULL,
  `OrderReturnQuantity` int DEFAULT NULL,
  `PO` varchar(100) DEFAULT NULL,
  `OrderUsername` varchar(100) NOT NULL,
  `OrderActive` tinyint(1) NOT NULL DEFAULT (1),
  PRIMARY KEY (`id`),
  KEY `OrderSupplierId` (`OrderSupplierId`),
  KEY `OrderNbr` (`OrderNbr`),
  CONSTRAINT `ordertbl_ibfk_1` FOREIGN KEY (`OrderSupplierId`) REFERENCES `supplier` (`id`),
  CONSTRAINT `ordertbl_ibfk_2` FOREIGN KEY (`OrderNbr`) REFERENCES `purchaseorder` (`purchaseOrderNbr`)
) ENGINE=InnoDB AUTO_INCREMENT=297 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordertbl`
--

LOCK TABLES `ordertbl` WRITE;
/*!40000 ALTER TABLE `ordertbl` DISABLE KEYS */;
INSERT INTO `ordertbl` VALUES (1,1000,1,'Admin','84525216265',1,69.99,NULL,'',NULL,NULL,'Benson_2023-05-12_1000','JesseyGB',1),(2,1001,2,'Admin','papier',5,0,NULL,'',NULL,NULL,'Fournitures De Bureau Denis_2023-05-12_1001','FrancisC',1),(3,1001,1,'Admin','tamereenshorts',1,0,NULL,'',NULL,NULL,'Benson_2023-05-12_1001','FrancisC',1),(4,1002,1,'Admin','test',1,0,NULL,'',NULL,NULL,'Benson_2023-05-12_1002','FrancisC',1),(5,1002,1,'Admin','test2',1,0,NULL,'',NULL,NULL,'Benson_2023-05-12_1002','FrancisC',1),(6,1003,14,'Admin','Poutine',1,10,NULL,NULL,NULL,NULL,'CANTEEN_2023-05-12_1003','SimonL',1),(7,1004,2,'Admin','jessy gromoll',1,0.000001,NULL,'',NULL,NULL,'Fournitures De Bureau Denis_2023-05-12_1004','BenjaminB',1),(8,1005,7,'Admin','gnhgxfgh',1,123,NULL,'',NULL,NULL,'NAPA_2023-05-12_1005','SimonL',1),(9,1006,5,'Admin','g65g5',1,10,NULL,'',NULL,NULL,'LKQ_2023-05-15_1006','RonBergeron',1),(10,1007,14,'Admin','desc',1,0,NULL,'',NULL,0,'CANTEEN_2023-05-15_1007','kevin',1),(12,1008,15,'Admin','B230181 TAPIS ',1,247,NULL,'',NULL,NULL,'PARTS DEPARTMENT _2023-06-01_1008','kevin',1),(13,1009,16,'Admin','B230117 ESSENCE STOCK',1,30,NULL,'',NULL,NULL,'ECONO_2023-06-01_1009','RonBergeron',1),(14,1010,16,'Admin','b203111',1,40,NULL,'',NULL,NULL,'ECONO_2023-06-01_1010','RonBergeron',1),(15,1011,16,'Admin','W5859A Livraison',1,75,NULL,'',NULL,NULL,'ECONO_2023-06-01_1011','RonBergeron',1),(16,1012,4,'Admin','PADS REAR ',1,58.12,NULL,'',NULL,NULL,'Pieces D\'Auto Le Bon Choix_2023-06-02_1012','JuniorV',1),(17,1012,4,'Admin','ROTORS REAR ',1,55.98,NULL,'',NULL,NULL,'Pieces D\'Auto Le Bon Choix_2023-06-02_1012','JuniorV',1),(18,1012,4,'Admin','AIR FILTER ',1,26.04,NULL,'',NULL,NULL,'Pieces D\'Auto Le Bon Choix_2023-06-02_1012','JuniorV',1),(19,1012,4,'Admin','CABIN FILTER ',1,12.49,NULL,'',NULL,NULL,'Pieces D\'Auto Le Bon Choix_2023-06-02_1012','JuniorV',1),(20,1013,4,'Admin','oil filter\nWO380646',1,1,NULL,'',NULL,NULL,'Pieces D\'Auto Le Bon Choix_2023-06-02_1013','DanielS',1),(21,1014,15,'Admin','T-COVER Q28901 B230111',1,535,NULL,'',NULL,NULL,'PARTS DEPARTMENT _2023-06-02_1014','RonBergeron',1),(22,1015,19,'Admin','pare-brise B230225A',1,445,NULL,'',NULL,NULL,'Par-Brise Glass Guys_2023-06-02_1015','RonBergeron',1),(24,1017,20,'Admin','1 LOCATION ',1,0,NULL,'',NULL,NULL,'HERTZ _2023-06-05_1017','NicholasC',1),(25,1018,20,'Admin','HERTZ 381192',1,0,NULL,'',NULL,NULL,'HERTZ _2023-06-05_1018','JuniorV',1),(26,1019,20,'Admin','380227\n',1,1,NULL,'',NULL,NULL,'HERTZ _2023-06-05_1019','JuniorV',1),(27,1020,8,'Admin','Paint supplies',1,5192.31,NULL,'',NULL,NULL,'LAR_2023-06-05_1020','SimonL',1),(28,1021,16,'Admin','B230111 (FULL DELIVERY DIESEL) ',1,250,NULL,'',NULL,NULL,'ECONO_2023-06-05_1021','JesseyGB',1),(29,1022,20,'Admin','1 LOCATION WORK ORDER # 381199 ',1,0,NULL,'',NULL,NULL,'HERTZ _2023-06-05_1022','NicholasC',1),(30,1023,20,'Service','381216\n',1,0,NULL,'',NULL,NULL,'HERTZ _2023-06-06_1023','JuniorV',1),(31,1024,17,'Service','CUSTOMER PICK UP WO # 380780',1,1,NULL,'',NULL,NULL,'TRANSIT_2023-06-06_1024','NicholasC',1),(32,1025,15,'Service','TAPE POUR RECALL \n',1,0,NULL,'',NULL,NULL,'PARTS DEPARTMENT _2023-06-06_1025','JuniorV',1),(33,1025,21,'Finance','ONTARIO SAFETY CHECK (B230144A)',1,150,NULL,'',NULL,NULL,'SURGENOR OTTAWA_2023-06-06_1025','JesseyGB',1),(34,1026,20,'Service','LOCATION 381221\n',1,0,NULL,'',NULL,NULL,'HERTZ _2023-06-06_1026','JuniorV',1),(35,1027,19,'Admin','XT4 CHANGE WIND SHEALD B230021',1,445,NULL,'',NULL,NULL,'Par-Brise Glass Guys_2023-06-06_1027','LiseL',1),(36,1028,4,'Parts','U BOLT',2,3.85,NULL,'',NULL,NULL,'Pieces D\'Auto Le Bon Choix_2023-06-06_1028','DanielS',1),(37,1029,17,'Service','1 taxi pick up wo # 380780',1,1,NULL,'',NULL,NULL,'TRANSIT_2023-06-06_1029','NicholasC',1),(38,1030,22,'Parts','85574821\nCUST 1037808',1,1,NULL,'',NULL,NULL,'DILAWRI_2023-06-07_1030','DanielS',1),(39,1031,15,'Sales','q28929 B230236',1,220,NULL,'',NULL,NULL,'PARTS DEPARTMENT _2023-06-07_1031','RonBergeron',1),(40,1032,16,'Sales','B230236',1,60,NULL,'',NULL,NULL,'ECONO_2023-06-07_1032','RonBergeron',1),(41,1033,16,'Sales','b230216',1,60,NULL,'',NULL,NULL,'ECONO_2023-06-07_1033','RonBergeron',1),(42,1034,16,'Sales','b230217',1,60,NULL,'',NULL,NULL,'ECONO_2023-06-07_1034','RonBergeron',1),(43,1035,23,'Parts','bracket\nb230144a',1,1,NULL,'',NULL,NULL,'mercedes_2023-06-07_1035','DanielS',1),(44,1036,16,'Service','20$ - WO 380227 ',1,20,NULL,'',NULL,NULL,'ECONO_2023-06-08_1036','JuniorV',1),(45,1037,20,'Service','1 LOCATION WORK ORDER # 381270',1,1,NULL,'',NULL,NULL,'HERTZ _2023-06-08_1037','NicholasC',1),(46,1038,21,'Parts','84806723 WINDOW SWITCH',1,61.04,NULL,'',NULL,NULL,'SURGENOR OTTAWA_2023-06-08_1038','FrancisC',1),(47,1039,21,'Parts','25203036\nro381269',1,60.27,NULL,'',NULL,NULL,'SURGENOR OTTAWA_2023-06-08_1039','DanielS',1),(48,1040,17,'Service','1 TAXI PICK UP WO # 381269',1,1,NULL,'',NULL,NULL,'TRANSIT_2023-06-08_1040','NicholasC',1),(49,1041,21,'Service','VALVE WO 381237\n',1,1,NULL,'',NULL,NULL,'SURGENOR OTTAWA_2023-06-08_1041','JuniorV',1),(50,1042,21,'Parts','25203036 W/O 381269',1,60.27,NULL,'',NULL,NULL,'SURGENOR OTTAWA_2023-06-08_1042','FrancisC',1),(51,1043,2,'Finance','Bankers BoxÂ® R-KiveÂ® Storage Boxes\nPackage of 12',1,109.99,NULL,'',NULL,NULL,'Fournitures De Bureau Denis_2023-06-08_1043','JesseyGB',1),(52,1044,1,'Parts','CALIPER 18FR2659 381265',1,93.92,NULL,'',NULL,NULL,'Benson_2023-06-08_1044','FrancisC',1),(54,1046,8,'Parts','AS ESTIMATED ',1,0,NULL,'',NULL,NULL,'LAR_2023-06-08_1046','FrancisC',1),(55,1047,21,'Parts','19418066 M18887',18,13.45,NULL,'',NULL,NULL,'SURGENOR OTTAWA_2023-06-08_1047','FrancisC',1),(56,1048,4,'Parts','brake fitting\nMAT',2,1,NULL,'',NULL,NULL,'Pieces D\'Auto Le Bon Choix_2023-06-09_1048','DanielS',1),(57,1049,21,'Parts','OW40 19368325\nSOR M18890',7,17.47,NULL,'',NULL,NULL,'SURGENOR OTTAWA_2023-06-09_1049','FrancisC',1),(58,1050,17,'Service','wo-381303 ',1,0,NULL,'',NULL,NULL,'TRANSIT_2023-06-09_1050','JuniorV',1),(59,1051,25,'Parts','WT401373 CUSTOMER # 70578',1,119.95,NULL,'',NULL,NULL,'Marcor_2023-06-12_1051','FrancisC',1),(61,1053,24,'Parts','33-845 EVER. CENTER PULL',1,0,NULL,'',NULL,NULL,'Royal Net_2023-06-12_1053','FrancisC',1),(62,1053,24,'Parts','ULTRA MOUSSE',1,0,NULL,'',NULL,NULL,'Royal Net_2023-06-12_1053','FrancisC',1),(63,1053,24,'Parts','SPECIALISTE',1,0,NULL,'',NULL,NULL,'Royal Net_2023-06-12_1053','FrancisC',1),(64,1053,24,'Parts','1/2 CAISSE GANT LARGE\n1/2 CAISSE GANT X-LARGE',1,0,NULL,'',NULL,NULL,'Royal Net_2023-06-12_1053','FrancisC',1),(65,1053,24,'Parts','CAISSE SILVERWAX 6',1,0,NULL,'',NULL,NULL,'Royal Net_2023-06-12_1053','FrancisC',1),(66,1054,21,'Service','ROTOR WO 381351\n',2,1,NULL,'',NULL,NULL,'SURGENOR OTTAWA_2023-06-13_1054','JuniorV',1),(67,1055,20,'Service','1 LOCATION PICKUP ',1,1,NULL,'',NULL,NULL,'HERTZ _2023-06-13_1055','JuniorV',1),(68,1056,20,'Service','381206  WO ',1,1,NULL,'',NULL,NULL,'HERTZ _2023-06-13_1056','JuniorV',1),(69,1057,6,'Parts','K750924',1,33.47,NULL,'',NULL,NULL,'AUTO VALUE_2023-06-13_1057','FrancisC',1),(71,1059,8,'BodyShop','Paint supply',1,0,NULL,'',NULL,NULL,'LAR_2023-06-13_1059','SimonL',1),(72,1059,6,'Parts','S824  INVOICE 193350',1,12.27,NULL,'',NULL,NULL,'AUTO VALUE_2023-06-13_1059','FrancisC',1),(74,1061,21,'Service','LATCH 381367 ',1,1,NULL,'',NULL,NULL,'SURGENOR OTTAWA_2023-06-14_1061','JuniorV',1),(75,1062,23,'BodyShop','Verification et callibration - AC ne fonctionne pas 379183',1,1,NULL,'',NULL,NULL,'Mercedes Gatineau_2023-06-14_1062','SimonL',1),(77,1064,9,'Parts','FB001128',4,0,NULL,'',NULL,NULL,'TIRE LINK_2023-06-14_1064','FrancisC',1),(78,1064,12,'Parts','R21217012',4,137.99,NULL,'',NULL,NULL,'DAI DIRECT AUTO IMPORT_2023-06-14_1064','FrancisC',1),(79,1065,4,'Parts','ID1737H   381346',1,1,NULL,'',NULL,NULL,'Pieces D\'Auto Le Bon Choix_2023-06-14_1065','DanielS',1),(80,1066,16,'Admin','B230194A POUR ESSAIE ROUTIER',1,30,NULL,'',NULL,NULL,'ECONO_2023-06-14_1066','LiseL',1),(81,1067,16,'Sales','plein B230154',1,1,NULL,'',NULL,NULL,'ECONO_2023-06-14_1067','BenjaminB',1),(83,1069,9,'Parts','0350443C CUSTOMER 1035728',4,0,NULL,'',NULL,NULL,'TIRE LINK_2023-06-14_1069','FrancisC',1),(86,1070,2,'Finance','SharpieÂ® Fine Permanent Marker. Black. 12/box\n6000',2,19.99,NULL,'',NULL,NULL,'Fournitures De Bureau Denis_2023-06-14_1070','JesseyGB',1),(87,1071,17,'Service','381393',1,0,NULL,'',NULL,NULL,'TRANSIT_2023-06-15_1071','JuniorV',1),(88,1072,21,'Service','84955379',1,0,NULL,'',NULL,NULL,'SURGENOR OTTAWA_2023-06-15_1072','JuniorV',1),(89,1073,21,'Service','84955379',1,1,NULL,'',NULL,NULL,'SURGENOR OTTAWA_2023-06-15_1073','JuniorV',1),(90,1073,21,'Service','84733196',1,1,NULL,'',NULL,NULL,'SURGENOR OTTAWA_2023-06-15_1073','JuniorV',1),(91,1073,21,'Service','381398',1,1,NULL,'',NULL,NULL,'SURGENOR OTTAWA_2023-06-15_1073','JuniorV',1),(92,1074,27,'Parts','rad flush',12,1,NULL,'',NULL,NULL,'bg_2023-06-15_1074','DanielS',1),(93,1074,27,'Parts','bg709',12,1,NULL,'',NULL,NULL,'bg_2023-06-15_1074','DanielS',1),(94,1074,27,'Parts','bg7083',12,1,NULL,'',NULL,NULL,'bg_2023-06-15_1074','DanielS',1),(95,1075,20,'Service','1 LOCATION WORK ORDER # 381406\n',1,1,NULL,'',NULL,NULL,'HERTZ _2023-06-15_1075','NicholasC',1),(96,1076,4,'Parts','PF35   381408',1,7.2,NULL,'',NULL,NULL,'Pieces D\'Auto Le Bon Choix_2023-06-15_1076','DanielS',1),(97,1077,21,'Parts','84196224 --> 381411',1,0,NULL,'',NULL,NULL,'SURGENOR OTTAWA_2023-06-15_1077','FrancisC',1),(98,1078,28,'Finance','SITE FEE OTTAWA',1,220,NULL,'',NULL,NULL,'ARMSTRONG MONITORING_2023-06-15_1078','JesseyGB',1),(99,1078,28,'Finance','PER POINT - VE\nFIELD CALIBRATION OF VEHICLE EXHAUST SENSOR',1,60,NULL,'',NULL,NULL,'ARMSTRONG MONITORING_2023-06-15_1078','JesseyGB',1),(100,1079,29,'BodyShop','MATERIAUX D\'ATELIER',1,0,NULL,'',NULL,NULL,'PELCO_2023-06-15_1079','SimonL',1),(101,1080,29,'BodyShop','CLIPS POUR SERVICE',1,0,NULL,'',NULL,NULL,'PELCO_2023-06-15_1080','SimonL',1),(102,1081,1,'Parts','SL60415PR',1,44.75,NULL,'',NULL,NULL,'Benson_2023-06-15_1081','FrancisC',1),(103,1082,16,'Sales','full B230253 ',1,1,NULL,'',NULL,NULL,'ECONO_2023-06-15_1082','BenjaminB',1),(104,1083,4,'Parts','spark plugs',4,1,NULL,'',NULL,NULL,'Pieces D\'Auto Le Bon Choix_2023-06-16_1083','DanielS',1),(105,1083,4,'Parts','coil',1,1,NULL,'',NULL,NULL,'Pieces D\'Auto Le Bon Choix_2023-06-16_1083','DanielS',1),(106,1084,4,'Parts','19386544 --> M18855\n',2,46.21,NULL,'',NULL,NULL,'Pieces D\'Auto Le Bon Choix_2023-06-16_1084','FrancisC',1),(107,1085,16,'Admin','B230251 ESSAIE ROUTIER BLAZER RON',1,30,NULL,'',NULL,NULL,'ECONO_2023-06-16_1085','LiseL',1),(108,1086,12,'Parts','K571 --> STOCK',1,0,NULL,'',NULL,NULL,'DAI DIRECT AUTO IMPORT_2023-06-16_1086','FrancisC',1),(109,1086,12,'Parts','DA4427BKZ --> STOCK',20,0,NULL,'',NULL,NULL,'DAI DIRECT AUTO IMPORT_2023-06-16_1086','FrancisC',1),(110,1087,16,'Service','2023 XT6 BLANC ',1,1,NULL,'',NULL,NULL,'ECONO_2023-06-16_1087','JuniorV',1),(121,1101,22,'Service','381438 -  Z5000 -  55488247',1,1,NULL,'',NULL,NULL,'DILAWRI_2023-06-19_1101','JuniorV',1),(122,1102,21,'Finance','test',100,1,NULL,'',NULL,NULL,'SURGENOR OTTAWA_2023-06-19_1102','kevin',1),(123,1103,10,'Parts','x99715n    guy',4,62.86,NULL,'',NULL,NULL,'STOX_2023-06-19_1103','DanielS',1),(124,1105,10,'Finance','nnnnnn',1,5454,NULL,'',NULL,NULL,'STOX_2023-06-19_1105','kevin',1),(125,1106,8,'BodyShop','Materiel de peinture',1,0,NULL,'',NULL,NULL,'LAR_2023-06-19_1106','SimonL',1),(126,1107,8,'Parts','STOCK ORDER',1,1,NULL,'',NULL,NULL,'LAR_2023-06-19_1107','DanielS',1),(127,1114,30,'Service','WHEEL REPAIR - 381481',1,1,NULL,'',NULL,NULL,'WHEEL SURGEON _2023-06-20_1114','JuniorV',1),(129,1116,1,'Parts','KECR20161G  B230229A CHARGE TO STOCK',1,4.76,NULL,'',NULL,NULL,'Benson_2023-06-20_1116','FrancisC',1),(130,1117,1,'Parts','S174KIT  193255 (TERRY)\n',1,47.14,NULL,'',NULL,NULL,'Benson_2023-06-20_1117','FrancisC',1),(131,1118,21,'Parts','24260071   381477',1,24.6,NULL,'',NULL,NULL,'SURGENOR OTTAWA_2023-06-20_1118','DanielS',1),(132,1118,21,'Parts','24295812   381477',1,27.85,NULL,'',NULL,NULL,'SURGENOR OTTAWA_2023-06-20_1118','DanielS',1),(134,1120,21,'Service','WO- 381476      19422602 ',2,1,NULL,'',NULL,NULL,'SURGENOR OTTAWA_2023-06-20_1120','JuniorV',1),(135,1120,21,'Service','19422601',2,1111,NULL,'',NULL,NULL,'SURGENOR OTTAWA_2023-06-20_1120','JuniorV',1),(136,1121,31,'Parts','rainguard 380774',1,98.35,NULL,'',NULL,NULL,'Mont-Bleu Ford_2023-06-20_1121','FrancisC',1),(137,1123,32,'Parts','AV94975  W5856 CHRISTINE',1,61.99,NULL,'',NULL,NULL,'R.THIBERT_2023-06-20_1123','DanielS',1),(138,1124,6,'Parts','#594115 \nW/O : 381489',1,157.96,NULL,'',NULL,NULL,'AUTO VALUE_2023-06-20_1124','FrancisC',1),(139,1125,16,'Admin','B230212A ESSAI ROOUTIER',1,30,NULL,'',NULL,NULL,'ECONO_2023-06-20_1125','LiseL',1),(140,1127,33,'Parts','CUSTOMER # 720206 \nFRONT PADS (OE)',1,111.82,NULL,'',NULL,NULL,'417 NISSAN_2023-06-20_1127','FrancisC',1),(141,1128,20,'Service','WO 381494',1,1,NULL,'',NULL,NULL,'HERTZ _2023-06-20_1128','JuniorV',1),(143,1131,34,'Admin','LETTRAGE PUBLICITE ',1,1,NULL,'',NULL,NULL,'PROTEX_2023-06-21_1131','LiseL',1),(144,1132,8,'BodyShop','Meateriel de peinture',1,0,NULL,'',NULL,NULL,'LAR_2023-06-21_1132','SimonL',1),(145,1134,35,'Finance','LAFICHE MALE 250VOLT',1,126.4,NULL,'',NULL,NULL,'RH ELECTRIQUE_2023-06-21_1134','JesseyGB',1),(146,1135,6,'Parts','917-396  DIPSTICK MATHEW\n70581',1,20.24,NULL,'',NULL,NULL,'AUTO VALUE_2023-06-21_1135','FrancisC',1),(148,1143,21,'Parts','19433272 7 FOR W/O 381532\nTHE REST FOR STOCK',12,17.47,NULL,'',NULL,NULL,'SURGENOR OTTAWA_2023-06-22_1143','FrancisC',1),(149,1144,4,'Parts','PF465A W/O --> 380835',1,11.4,NULL,'',NULL,NULL,'Pieces D\'Auto Le Bon Choix_2023-06-22_1144','FrancisC',1),(150,1146,36,'BodyShop','SUPPLY WHEEL COVER',1,50,NULL,'',NULL,NULL,'PJACQUE_2023-06-22_1146','SimonL',1),(151,1148,7,'Parts','PAD 380834',1,0,NULL,'',NULL,NULL,'NAPA_2023-06-22_1148','FrancisC',1),(152,1148,7,'Parts','ROTORS 380834',2,0,NULL,'',NULL,NULL,'NAPA_2023-06-22_1148','FrancisC',1),(153,1149,21,'Service','381317 - 84524266',1,1,NULL,'',NULL,NULL,'SURGENOR OTTAWA_2023-06-22_1149','JuniorV',1),(154,1150,1,'Parts','XA10498 381557',1,18.96,NULL,'',NULL,NULL,'Benson_2023-06-23_1150','FrancisC',1),(155,1153,20,'Service','WO 381558 - ',1,1,NULL,'',NULL,NULL,'HERTZ _2023-06-23_1153','JuniorV',1),(156,1154,15,'Sales','1touch-up paint B230254',1,1,NULL,'',NULL,NULL,'PARTS DEPARTMENT _2023-06-23_1154','RonBergeron',1),(157,1157,20,'Service','1 LOCATION WORK ORDER # 381568',1,1,NULL,'',NULL,NULL,'HERTZ _2023-06-27_1157','NicholasC',1),(158,1158,21,'Parts','19352620 FOR STOCK AND ONE JOB',12,0,NULL,'',NULL,NULL,'SURGENOR OTTAWA_2023-06-27_1158','FrancisC',1),(159,1159,6,'Parts','800-640  381568',1,48.47,NULL,'',NULL,NULL,'AUTO VALUE_2023-06-27_1159','FrancisC',1),(160,1160,16,'Sales','b240000',1,30,NULL,'',NULL,NULL,'ECONO_2023-06-27_1160','RonBergeron',1),(161,1161,16,'Sales','B230188',1,40,NULL,'',NULL,NULL,'ECONO_2023-06-27_1161','RonBergeron',1),(162,1162,16,'Service','FUEL FOR 30 $ ',1,30,NULL,'',NULL,NULL,'ECONO_2023-06-28_1162','NicholasC',1),(163,1163,1,'Parts','MS97089 CUSTOMER #720398',1,22.69,NULL,'',NULL,NULL,'Benson_2023-06-28_1163','FrancisC',1),(164,1164,17,'Service','1 PICK UP CHEZ SURGENOR POUR WORK ORDER # 381592',1,1,NULL,'',NULL,NULL,'TRANSIT_2023-06-28_1164','NicholasC',1),(165,1164,17,'Service','1 RETOUR DU TRAVAIL POUR WORK ORDER # 381592',1,1,NULL,'',NULL,NULL,'TRANSIT_2023-06-28_1164','NicholasC',1),(166,1165,19,'Service','USED EQUINOX # SERIE : F6424889 ',1,1,NULL,'',NULL,NULL,'Par-Brise Glass Guys_2023-06-28_1165','NicholasC',1),(167,1166,24,'Parts','SPECIALISTE - 1\nLUSTRE - 1\nSAVON AUTO - 1',1,0,NULL,'',NULL,NULL,'Royal Net_2023-06-28_1166','FrancisC',1),(168,1168,37,'Parts','381607 --> 84196225\n',1,0,NULL,'',NULL,NULL,'MYERS OTTAWA CHEV - OLD - CADI._2023-06-28_1168','FrancisC',1),(169,1169,16,'Admin','B230278 VEHICULE ESSAIE ROUTIER',1,20,NULL,'',NULL,NULL,'ECONO_2023-06-28_1169','LiseL',1),(170,1170,16,'Service','b230116 essence\n ',1,60,NULL,'',NULL,NULL,'ECONO_2023-06-29_1170','SrobitailleR',1),(171,1172,1,'Parts','WFW219 --> 193445',1,52.55,NULL,'',NULL,NULL,'Benson_2023-06-29_1172','FrancisC',1),(172,1173,1,'Parts','BRAKE JOB --> 380365  ',1,0,NULL,'',NULL,NULL,'Benson_2023-06-29_1173','FrancisC',1),(173,1174,16,'Sales','ROAD TEST',1,20,NULL,'',NULL,NULL,'ECONO_2023-06-29_1174','DavidB',1),(174,1175,1,'Parts','ROTORS -->381618',1,0,NULL,'',NULL,NULL,'Benson_2023-06-29_1175','FrancisC',1),(175,1176,6,'Parts','1033646 --> 70925',2,18.24,NULL,'',NULL,NULL,'AUTO VALUE_2023-06-29_1176','FrancisC',1),(177,1179,2,'Finance','text',1,1,NULL,'',NULL,NULL,'Fournitures De Bureau Denis_2023-06-30_1179','kevin',1),(178,1180,3,'Sales','test',1,40,NULL,'',NULL,NULL,'Gama_2023-06-30_1180','DavidB',1),(179,1181,1,'Parts','BRAKE JOB ---> 381546',1,0,NULL,'',NULL,NULL,'Benson_2023-06-30_1181','FrancisC',1),(180,1182,8,'BodyShop','Bodyshop materials',1,0,NULL,'',NULL,NULL,'LAR_2023-06-30_1182','SimonL',1),(181,1183,16,'Admin','b230059a essaie routier used',1,30,NULL,'',NULL,NULL,'ECONO_2023-07-04_1183','LiseL',1),(182,1184,21,'Parts','86771159  --> 381643',1,162.05,NULL,'',NULL,NULL,'SURGENOR OTTAWA_2023-07-04_1184','FrancisC',1),(183,1185,21,'Parts','19418066 --> 381633',6,13.45,NULL,'',NULL,NULL,'SURGENOR OTTAWA_2023-07-05_1185','FrancisC',1),(184,1186,4,'Parts','19387949   381676',2,82.11,NULL,'',NULL,NULL,'Pieces D\'Auto Le Bon Choix_2023-07-05_1186','DanielS',1),(185,1187,21,'Parts','19300458    381644',2,17.42,NULL,'',NULL,NULL,'SURGENOR OTTAWA_2023-07-05_1187','DanielS',1),(186,1188,9,'Parts','M16798 --> 193486 ',2,0,NULL,'',NULL,NULL,'TIRE LINK_2023-07-05_1188','FrancisC',1),(187,1189,16,'Service','B230187 - 40$ ',1,40,NULL,'',NULL,NULL,'ECONO_2023-07-05_1189','JuniorV',1),(188,1190,16,'Service','40$ B230187',1,40,NULL,'',NULL,NULL,'ECONO_2023-07-05_1190','JuniorV',1),(189,1191,8,'BodyShop','Materiel de peinture',1,0,NULL,'',NULL,NULL,'LAR_2023-07-05_1191','SimonL',1),(190,1192,18,'Service','WORK ORDER -381680\n19327431- 57.68 \n19386544 - 46.21 ',2,1,NULL,'',NULL,NULL,'bon choix_2023-07-06_1192','JuniorV',1),(191,1193,9,'Parts','U01571',4,0,NULL,'',NULL,NULL,'TIRE LINK_2023-07-06_1193','FrancisC',1),(192,1194,21,'Parts','19418066 --->381692',19,13.45,NULL,'',NULL,NULL,'SURGENOR OTTAWA_2023-07-06_1194','FrancisC',1),(193,1195,17,'Service','381713\n',1,1,NULL,'',NULL,NULL,'TRANSIT_2023-07-07_1195','JuniorV',1),(194,1196,9,'Parts','U64935    381687',4,0,NULL,'',NULL,NULL,'TIRE LINK_2023-07-07_1196','DanielS',1),(195,1197,18,'Service','506-1077 POST ON DELCO - 381716 ',1,180,NULL,'',NULL,NULL,'bon choix_2023-07-07_1197','JuniorV',1),(196,1198,4,'Parts','19422601    ',2,121.86,NULL,'',NULL,NULL,'Pieces D\'Auto Le Bon Choix_2023-07-07_1198','DanielS',1),(197,1199,17,'Service','381707 - 1 taxi ',1,0,NULL,'',NULL,NULL,'TRANSIT_2023-07-07_1199','JuniorV',1),(198,1200,17,'Service','381707 - un taxi ',1,1,NULL,'',NULL,NULL,'TRANSIT_2023-07-07_1200','JuniorV',1),(199,1201,21,'Parts','19300458   381714',3,17.42,NULL,'',NULL,NULL,'SURGENOR OTTAWA_2023-07-07_1201','DanielS',1),(201,1203,21,'Parts','19383805    CUST 712171',1,188.97,NULL,'',NULL,NULL,'SURGENOR OTTAWA_2023-07-10_1203','DanielS',1),(202,1205,38,'Parts','5L ATF+4',2,38.95,NULL,'',NULL,NULL,'BUCK DODGE_2023-07-10_1205','DanielS',1),(203,1206,3,'Admin','pochette de plastique pour used veh',100,0.99,NULL,'',NULL,NULL,'Gama_2023-07-10_1206','LiseL',1),(204,1207,4,'Parts','SPLINE KEY    381254',1,12.5,NULL,'',NULL,NULL,'Pieces D\'Auto Le Bon Choix_2023-07-10_1207','DanielS',1),(205,1208,16,'Sales','b230278',1,1,NULL,'',NULL,NULL,'ECONO_2023-07-10_1208','BenjaminB',1),(206,1209,4,'Parts','AIR ',1,14.95,NULL,'',NULL,NULL,'Pieces D\'Auto Le Bon Choix_2023-07-10_1209','DanielS',1),(207,1209,4,'Parts','POLLEN',1,22.81,NULL,'',NULL,NULL,'Pieces D\'Auto Le Bon Choix_2023-07-10_1209','DanielS',1),(208,1209,4,'Parts','ROT AV',2,81.9,NULL,'',NULL,NULL,'Pieces D\'Auto Le Bon Choix_2023-07-10_1209','DanielS',1),(209,1210,8,'BodyShop','Materiel de peinture',1,0,NULL,'',NULL,NULL,'LAR_2023-07-11_1210','SimonL',1),(210,1211,4,'Parts','BALANCER   381489',1,161.52,NULL,'',NULL,NULL,'Pieces D\'Auto Le Bon Choix_2023-07-11_1211','DanielS',1),(211,1213,39,'Parts','STOCK ORDER',1,1,NULL,'',NULL,NULL,'CHOKO_2023-07-11_1213','DanielS',1),(213,1216,21,'Service','84615872',1,1,NULL,'',NULL,NULL,'SURGENOR OTTAWA_2023-07-12_1216','JuniorV',1),(214,1217,4,'Parts','19340377   381792',2,63.66,NULL,'',NULL,NULL,'Pieces D\'Auto Le Bon Choix_2023-07-12_1217','DanielS',1),(215,1219,40,'Service','20893611\nRO- 381796',1,1,NULL,'',NULL,NULL,'LACHAPELLE_2023-07-12_1219','JuniorV',1),(216,1221,8,'BodyShop','Materiel de peinture',1,1,NULL,'',NULL,NULL,'LAR_2023-07-12_1221','SimonL',1),(217,1222,16,'Service','40$ B230116 ',1,1,NULL,'',NULL,NULL,'ECONO_2023-07-12_1222','JuniorV',1),(218,1223,4,'Parts','95238310   381808',1,24.21,NULL,'',NULL,NULL,'Pieces D\'Auto Le Bon Choix_2023-07-12_1223','DanielS',1),(219,1225,9,'Parts','1024217H    M18973',1,1,NULL,'',NULL,NULL,'TIRE LINK_2023-07-12_1225','DanielS',1),(220,1226,18,'Service','M18926\n19387950 ',2,1,NULL,'',NULL,NULL,'bon choix_2023-07-13_1226','JuniorV',1),(221,1227,4,'Parts','19387950   381788',2,90.15,NULL,'',NULL,NULL,'Pieces D\'Auto Le Bon Choix_2023-07-13_1227','DanielS',1),(222,1227,4,'Parts','19468204',1,53.22,NULL,'',NULL,NULL,'Pieces D\'Auto Le Bon Choix_2023-07-13_1227','DanielS',1),(223,1229,41,'Parts','13507431   381788',2,48.24,NULL,'',NULL,NULL,'SURG BARHAVEN_2023-07-13_1229','DanielS',1),(224,1230,4,'Parts','42712666   381788',1,32.66,NULL,'',NULL,NULL,'Pieces D\'Auto Le Bon Choix_2023-07-13_1230','DanielS',1),(225,1231,4,'Parts','OIL FILTER   381821',1,1,NULL,'',NULL,NULL,'Pieces D\'Auto Le Bon Choix_2023-07-13_1231','DanielS',1),(226,1233,16,'Service','ESSENCE BARHAVEN POUR RAMASSER PIECE --B230187',1,30,NULL,'',NULL,NULL,'ECONO_2023-07-13_1233','SrobitailleR',1),(227,1234,4,'Parts','BLADE   381821',2,9.99,NULL,'',NULL,NULL,'Pieces D\'Auto Le Bon Choix_2023-07-13_1234','DanielS',1),(228,1234,4,'Parts','AIR ',1,23.45,NULL,'',NULL,NULL,'Pieces D\'Auto Le Bon Choix_2023-07-13_1234','DanielS',1),(229,1234,4,'Parts','POLLEN',1,12.97,NULL,'',NULL,NULL,'Pieces D\'Auto Le Bon Choix_2023-07-13_1234','DanielS',1),(230,1234,4,'Parts','PAD AV',1,58.69,NULL,'',NULL,NULL,'Pieces D\'Auto Le Bon Choix_2023-07-13_1234','DanielS',1),(231,1234,4,'Parts','ROT AV',2,67.93,NULL,'',NULL,NULL,'Pieces D\'Auto Le Bon Choix_2023-07-13_1234','DanielS',1),(232,1234,4,'Parts','PAD AR',1,45.27,NULL,'',NULL,NULL,'Pieces D\'Auto Le Bon Choix_2023-07-13_1234','DanielS',1),(233,1234,4,'Parts','ROT AR',2,49.04,NULL,'',NULL,NULL,'Pieces D\'Auto Le Bon Choix_2023-07-13_1234','DanielS',1),(234,1236,42,'Service','REMORQUAGE SUBARU WRX 2020 STOCK #B230213A',1,1,NULL,'',NULL,NULL,'REMORQUAGE HENRI_2023-07-13_1236','SrobitailleR',1),(235,1237,4,'Parts','REAR BLADE   381788',1,12.39,NULL,'',NULL,NULL,'Pieces D\'Auto Le Bon Choix_2023-07-13_1237','DanielS',1),(236,1238,25,'Parts','WT445151   B230144A  GAB PO115906',1,1,NULL,'',NULL,NULL,'Marcor_2023-07-13_1238','DanielS',1),(237,1239,29,'BodyShop','clips misc',1,0,NULL,'',NULL,NULL,'PELCO_2023-07-13_1239','SimonL',1),(238,1240,9,'Service','M06125 \nM18975\n',2,1,NULL,'',NULL,NULL,'TIRE LINK_2023-07-13_1240','JuniorV',1),(239,1241,9,'Service','M06125 X 2\nM18975',2,1,NULL,'',NULL,NULL,'TIRE LINK_2023-07-13_1241','JuniorV',1),(240,1242,4,'Parts','25979186   381835',1,212.08,NULL,'',NULL,NULL,'Pieces D\'Auto Le Bon Choix_2023-07-14_1242','DanielS',1),(241,1243,4,'Parts','ROD   JESSEY',1,61.88,NULL,'',NULL,NULL,'Pieces D\'Auto Le Bon Choix_2023-07-14_1243','DanielS',1),(242,1244,4,'Parts','STOCK 6257BP',2,15.87,NULL,'',NULL,NULL,'Pieces D\'Auto Le Bon Choix_2023-07-17_1244','FrancisC',1),(243,1245,4,'Parts','19386544',2,46.21,NULL,'',NULL,NULL,'Pieces D\'Auto Le Bon Choix_2023-07-17_1245','FrancisC',1),(244,1247,19,'BodyShop','Cindy Portelance',1,1,NULL,'',NULL,NULL,'Par-Brise Glass Guys_2023-07-17_1247','SimonL',1),(245,1248,43,'Parts','RADIATEUR 381489 ',1,372,NULL,'',NULL,NULL,'RADIATEUR MONGEON_2023-07-17_1248','FrancisC',1),(246,1249,4,'Parts','BUTT CONNECTOR ---> STOCK',10,0,NULL,'',NULL,NULL,'Pieces D\'Auto Le Bon Choix_2023-07-17_1249','FrancisC',1),(247,1250,21,'Parts','42864662 --> 381389 **FOR RECALL**',1,0,NULL,'',NULL,NULL,'SURGENOR OTTAWA_2023-07-17_1250','FrancisC',1),(248,1251,6,'Parts','CDA1600 --> 193467',2,13.09,NULL,'',NULL,NULL,'AUTO VALUE_2023-07-17_1251','FrancisC',1),(249,1252,9,'Parts','5542642   381464',4,220.49,NULL,'',NULL,NULL,'TIRE LINK_2023-07-17_1252','DanielS',1),(250,1253,4,'Parts','84121217   381464',1,34.59,NULL,'',NULL,NULL,'Pieces D\'Auto Le Bon Choix_2023-07-17_1253','DanielS',1),(251,1253,4,'Parts','19471013',1,51.37,NULL,'',NULL,NULL,'Pieces D\'Auto Le Bon Choix_2023-07-17_1253','DanielS',1),(252,1254,21,'Parts','19422601   381464',2,121.86,NULL,'',NULL,NULL,'SURGENOR OTTAWA_2023-07-17_1254','DanielS',1),(253,1255,4,'Parts','19422670   181464',1,87.71,NULL,'',NULL,NULL,'Pieces D\'Auto Le Bon Choix_2023-07-17_1255','DanielS',1),(254,1256,18,'Service','19300091 - W/O 381884\n',1,3.52,NULL,'',NULL,NULL,'bon choix_2023-07-18_1256','JuniorV',1),(255,1257,32,'Parts','X99715N     2023MALIBU MOUNT KIT  NF0348058   13540606',4,62.82,NULL,'',NULL,NULL,'R.THIBERT_2023-07-18_1257','DanielS',1),(256,1261,44,'Service','reparer hose pressure washer',1,1,NULL,'',NULL,NULL,'hydro pompe_2023-07-19_1261','SrobitailleR',1),(257,1262,21,'Parts','11588810 381909',1,0,NULL,'',NULL,NULL,'SURGENOR OTTAWA_2023-07-19_1262','FrancisC',1),(258,1263,40,'Parts','12355010 --> 381910',1,0,NULL,'',NULL,NULL,'LACHAPELLE_2023-07-19_1263','FrancisC',1),(259,1264,2,'Service','AGGRAPHEUSE ',1,1,NULL,'',NULL,NULL,'Fournitures De Bureau Denis_2023-07-19_1264','JuniorV',1),(260,1265,32,'Parts','X47505 --> 381879',4,0,NULL,'',NULL,NULL,'R.THIBERT_2023-07-19_1265','FrancisC',1),(261,1266,2,'Finance','A VerbatimÂ® Wireless Slim Keyboard, English\n73943-00 ',2,25.19,NULL,'',NULL,NULL,'Fournitures De Bureau Denis_2023-07-19_1266','JesseyGB',1),(262,1266,2,'Finance','Paper Mate Stick Pens Fine Point Blue, Box of 12\n55035-02',1,4.99,NULL,'',NULL,NULL,'Fournitures De Bureau Denis_2023-07-19_1266','JesseyGB',1),(263,1267,4,'Parts','13539108   381926',1,37.59,NULL,'',NULL,NULL,'Pieces D\'Auto Le Bon Choix_2023-07-20_1267','DanielS',1),(264,1268,8,'BodyShop','Materiel de peinture',1,0,NULL,'',NULL,NULL,'LAR_2023-07-20_1268','SimonL',1),(265,1269,8,'BodyShop','Materiel d\'atelier',1,0,NULL,'',NULL,NULL,'LAR_2023-07-20_1269','SimonL',1),(266,1270,9,'Parts','BFG78163   GAB',8,1,NULL,'',NULL,NULL,'TIRE LINK_2023-07-20_1270','DanielS',1),(267,1271,10,'Parts','BFG78163   GAB',4,1,NULL,'',NULL,NULL,'STOX_2023-07-20_1271','DanielS',1),(268,1272,4,'Parts','88866098   381920\n',1,272.33,NULL,'',NULL,NULL,'Pieces D\'Auto Le Bon Choix_2023-07-20_1272','DanielS',1),(269,1273,9,'Parts','KJ178681---> 381935 --->503MILAN',1,0,NULL,'',NULL,NULL,'TIRE LINK_2023-07-20_1273','FrancisC',1),(270,1274,13,'Finance','1',1,1,NULL,'',NULL,NULL,'TRANSBEC_2023-07-20_1274','kevin',1),(271,1276,3,'Finance','1',1,1,NULL,'',NULL,NULL,'Gama_2023-07-20_1276','kevin',1),(272,1278,19,'Finance','3',3,3,NULL,'',NULL,NULL,'Par-Brise Glass Guys_2023-07-20_1278','kevin',1),(273,1280,17,'Finance','6',6,6,NULL,'',NULL,NULL,'TRANSIT_2023-07-20_1280','kevin',1),(274,1281,20,'Finance','2',2,2,NULL,'',NULL,NULL,'HERTZ _2023-07-20_1281','kevin',1),(275,1284,5,'Finance','llll',10,10,NULL,'',NULL,NULL,'LKQ_2023-07-20_1284','kevin',1),(276,1286,16,'Finance','1',1,1,NULL,'',NULL,NULL,'ECONO_2023-07-20_1286','kevin',1),(277,1286,18,'Finance','2',2,2,NULL,'',NULL,NULL,'bon choix_2023-07-20_1286','kevin',1),(278,1287,3,'Finance','3',3,3,NULL,'',NULL,NULL,'Gama_2023-07-20_1287','kevin',1),(279,1287,19,'Finance','4',4,4,NULL,'',NULL,NULL,'Par-Brise Glass Guys_2023-07-20_1287','kevin',1),(280,1288,20,'Finance','1',1,1,NULL,'',NULL,NULL,'HERTZ _2023-07-20_1288','kevin',1),(281,1288,19,'Finance','2',2,2,NULL,'',NULL,NULL,'Par-Brise Glass Guys_2023-07-20_1288','kevin',1),(284,1288,6,'Finance','3',3,3,NULL,'',NULL,NULL,'AUTO VALUE_2023-07-20_1288','kevin',1),(285,1289,1,'Finance','33333',3,3,NULL,'',NULL,NULL,'Benson_2023-07-21_1289','kevin',1),(286,1289,19,'Finance','dfdfdfdf',4,15.25,NULL,'',NULL,NULL,'Par-Brise Glass Guys_2023-07-21_1289','kevin',1),(288,1291,2,'Finance','q',5,3,NULL,'',NULL,5,'Fournitures De Bureau Denis_2023-07-21_1291','wgd000',1),(289,1292,1,'Finance','1',1,2,NULL,'',NULL,NULL,'Benson_2023-07-21_1292','kevin',1),(290,1294,1,'Finance','1',1,1,NULL,'',NULL,NULL,'Benson_2023-07-21_1294','kevin',1),(291,1294,18,'Finance','1',1,1,NULL,'',NULL,NULL,'bon choix_2023-07-21_1294','kevin',1),(292,1296,19,'Finance','11',11,11,NULL,'',NULL,NULL,'Par-Brise Glass Guys_2023-07-21_1296','kevin',1),(293,1296,17,'Finance','12',12,12,NULL,'',NULL,NULL,'TRANSIT_2023-07-21_1296','kevin',1),(294,1297,15,'Finance','22',22,22,NULL,'',NULL,NULL,'PARTS DEPARTMENT _2023-07-21_1297','kevin',1),(295,1297,43,'Finance','33',33,33,NULL,'',NULL,NULL,'RADIATEUR MONGEON_2023-07-21_1297','kevin',1),(296,1007,9,'Admin','xxx',1,1,NULL,'RonBergeron',NULL,0,'TIRE LINK_2023-05-15_1007','kevin',1);
/*!40000 ALTER TABLE `ordertbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provincialtaxrates`
--

DROP TABLE IF EXISTS `provincialtaxrates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provincialtaxrates` (
  `id` int NOT NULL AUTO_INCREMENT,
  `provincialCode` varchar(2) NOT NULL,
  `taxRate` float NOT NULL,
  `label` varchar(30) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT (1),
  PRIMARY KEY (`id`),
  UNIQUE KEY `provincialCode` (`provincialCode`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provincialtaxrates`
--

LOCK TABLES `provincialtaxrates` WRITE;
/*!40000 ALTER TABLE `provincialtaxrates` DISABLE KEYS */;
INSERT INTO `provincialtaxrates` VALUES (1,'QC',14.975,'Sales tax rate (PST+QST) %',1),(2,'ON',13,'Sales tax rate (HST) %',1),(3,'AB',5,'Sales tax rate (GST) %',1),(4,'BC',12,'Sales tax rate (PST+GST) %',1),(5,'MB',12,'Sales tax rate (PST+GST) %',1),(6,'NB',15,'Sales tax rate (HST) %',1),(7,'NL',15,'Sales tax rate (HST) %',1),(8,'NT',5,'Sales tax rate (GST) %',1),(9,'NS',15,'Sales tax rate (HST) %',1),(10,'NU',5,'Sales tax rate (GST) %',1),(11,'PE',15,'Sales tax rate (HST) %',1),(12,'SK',11,'Sales tax rate (PST+GST) %',1),(13,'YK',5,'Sales tax rate (GST) %',1);
/*!40000 ALTER TABLE `provincialtaxrates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchaseorder`
--

DROP TABLE IF EXISTS `purchaseorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchaseorder` (
  `id` int NOT NULL AUTO_INCREMENT,
  `purchaseOrderDate` date NOT NULL DEFAULT (curdate()),
  `purchaseOrderReceivedDate` date DEFAULT NULL,
  `purchaseOrderActive` tinyint(1) NOT NULL DEFAULT (1),
  `purchaseOrderDateDeleted` date DEFAULT NULL,
  `purchaseOrderNbr` int NOT NULL,
  `purchaseOrderPurchaserId` int NOT NULL,
  `purchaseOrderPurchaserDeptId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `purchaseOrderNbr` (`purchaseOrderNbr`)
) ENGINE=InnoDB AUTO_INCREMENT=737 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchaseorder`
--

LOCK TABLES `purchaseorder` WRITE;
/*!40000 ALTER TABLE `purchaseorder` DISABLE KEYS */;
INSERT INTO `purchaseorder` VALUES (1,'2023-09-26',NULL,1,NULL,1000,20,1),(2,'2023-09-22',NULL,1,NULL,1003,2,2),(3,'2023-09-26',NULL,1,NULL,1002,17,2),(4,'2023-09-26',NULL,1,NULL,1003,18,5),(5,'2023-09-26',NULL,1,NULL,1004,7,3),(6,'2023-09-26',NULL,1,NULL,1005,18,5),(7,'2023-09-26',NULL,1,NULL,1006,5,3),(8,'2023-09-26',NULL,1,NULL,1007,1,1),(9,'2023-09-26',NULL,1,NULL,1008,1,1),(10,'2023-09-26',NULL,1,NULL,1009,5,3),(11,'2023-09-26',NULL,1,NULL,1010,5,3),(12,'2023-09-26',NULL,1,NULL,1011,5,3),(13,'2023-09-26',NULL,1,NULL,1012,14,4),(14,'2023-09-26',NULL,1,NULL,1013,16,2),(15,'2023-09-26',NULL,1,NULL,1014,5,3),(16,'2023-09-26',NULL,1,NULL,1015,5,3),(17,'2023-09-26',NULL,1,NULL,1016,5,3),(18,'2023-09-26',NULL,1,NULL,1017,15,4),(19,'2023-09-26',NULL,1,NULL,1018,14,4),(20,'2023-09-26',NULL,1,NULL,1019,14,4),(21,'2023-09-26',NULL,1,NULL,1020,18,5),(22,'2023-09-26',NULL,1,NULL,1021,20,1),(23,'2023-09-26',NULL,1,NULL,1022,15,4),(24,'2023-09-26',NULL,1,NULL,1023,14,4),(25,'2023-09-26',NULL,1,NULL,1024,15,4),(26,'2023-09-26',NULL,1,NULL,1025,14,4),(27,'2023-09-26',NULL,1,NULL,1025,20,1),(28,'2023-09-26',NULL,1,NULL,1026,14,4),(29,'2023-09-26',NULL,1,NULL,1027,11,6),(30,'2023-09-26',NULL,1,NULL,1028,16,2),(31,'2023-09-26',NULL,1,NULL,1029,15,4),(32,'2023-09-26',NULL,1,NULL,1030,16,2),(33,'2023-09-26',NULL,1,NULL,1031,5,3),(34,'2023-09-26',NULL,1,NULL,1032,5,3),(35,'2023-09-26',NULL,1,NULL,1033,5,3),(36,'2023-09-26',NULL,1,NULL,1034,5,3),(37,'2023-09-26',NULL,1,NULL,1035,16,2),(38,'2023-09-26',NULL,1,NULL,1036,14,4),(39,'2023-09-26',NULL,1,NULL,1037,15,4),(40,'2023-09-26',NULL,1,NULL,1038,17,2),(41,'2023-09-26',NULL,1,NULL,1039,16,2),(42,'2023-09-26',NULL,1,NULL,1040,15,4),(43,'2023-09-26',NULL,1,NULL,1041,14,4),(44,'2023-09-26',NULL,1,NULL,1042,17,2),(45,'2023-09-26',NULL,1,NULL,1043,20,1),(46,'2023-09-26',NULL,1,NULL,1044,17,2),(47,'2023-09-26',NULL,1,NULL,1045,5,3),(48,'2023-09-26',NULL,1,NULL,1046,17,2),(49,'2023-09-26',NULL,1,NULL,1047,17,2),(50,'2023-09-26',NULL,1,NULL,1048,16,2),(51,'2023-09-26',NULL,1,NULL,1049,17,2),(52,'2023-09-26',NULL,1,NULL,1050,14,4),(53,'2023-09-26',NULL,1,NULL,1051,17,2),(54,'2023-09-26',NULL,1,NULL,1052,11,6),(55,'2023-09-26',NULL,1,NULL,1053,17,2),(56,'2023-09-26',NULL,1,NULL,1054,14,4),(57,'2023-09-26',NULL,1,NULL,1055,14,4),(58,'2023-09-26',NULL,1,NULL,1056,14,4),(59,'2023-09-26',NULL,1,NULL,1057,17,2),(60,'2023-09-26',NULL,1,NULL,1058,11,6),(61,'2023-09-26',NULL,1,NULL,1059,18,5),(62,'2023-09-26',NULL,1,NULL,1059,17,2),(63,'2023-09-26',NULL,1,NULL,1060,5,3),(64,'2023-09-26',NULL,1,NULL,1061,14,4),(65,'2023-09-26',NULL,1,NULL,1062,18,5),(66,'2023-09-26',NULL,1,NULL,1063,14,4),(67,'2023-09-26',NULL,1,NULL,1064,17,2),(68,'2023-09-26',NULL,1,NULL,1065,16,2),(69,'2023-09-26',NULL,1,NULL,1066,11,6),(70,'2023-09-26',NULL,1,NULL,1067,7,3),(71,'2023-09-26',NULL,1,NULL,1068,11,6),(72,'2023-09-26',NULL,1,NULL,1069,17,2),(73,'2023-09-26',NULL,1,NULL,1070,20,1),(74,'2023-09-26',NULL,1,NULL,1071,14,4),(75,'2023-09-26',NULL,1,NULL,1072,14,4),(76,'2023-09-26',NULL,1,NULL,1073,14,4),(77,'2023-09-26',NULL,1,NULL,1074,16,2),(78,'2023-09-26',NULL,1,NULL,1075,15,4),(79,'2023-09-26',NULL,1,NULL,1076,16,2),(80,'2023-09-26',NULL,1,NULL,1077,17,2),(81,'2023-09-26',NULL,1,NULL,1078,20,1),(82,'2023-09-26',NULL,1,NULL,1079,18,5),(83,'2023-09-26',NULL,1,NULL,1080,18,5),(84,'2023-09-26',NULL,1,NULL,1081,17,2),(85,'2023-09-26',NULL,1,NULL,1082,7,3),(86,'2023-09-26',NULL,1,NULL,1083,16,2),(87,'2023-09-26',NULL,1,NULL,1084,17,2),(88,'2023-09-26',NULL,1,NULL,1085,11,6),(89,'2023-09-26',NULL,1,NULL,1086,17,2),(90,'2023-09-26',NULL,1,NULL,1087,14,4),(91,'2023-09-26',NULL,1,NULL,1088,1,1),(92,'2023-09-26',NULL,1,NULL,1090,1,1),(93,'2023-09-26',NULL,1,NULL,1093,1,1),(94,'2023-09-26',NULL,1,NULL,1094,1,1),(95,'2023-09-26',NULL,1,NULL,1097,1,1),(96,'2023-09-26',NULL,1,NULL,1098,1,1),(97,'2023-09-26',NULL,1,NULL,1100,5,3),(98,'2023-09-26',NULL,1,NULL,1101,14,4),(99,'2023-09-26',NULL,1,NULL,1102,1,1),(100,'2023-09-26',NULL,1,NULL,1103,16,2),(101,'2023-09-26',NULL,1,NULL,1105,1,1),(102,'2023-09-26',NULL,1,NULL,1106,18,5),(103,'2023-09-26',NULL,1,NULL,1107,16,2),(104,'2023-09-26',NULL,1,NULL,1114,14,4),(106,'2023-09-26',NULL,1,NULL,1116,17,2),(107,'2023-09-26',NULL,1,NULL,1117,17,2),(108,'2023-09-26',NULL,1,NULL,1118,16,2),(109,'2023-09-26',NULL,1,NULL,1119,11,6),(110,'2023-09-26',NULL,1,NULL,1120,14,4),(111,'2023-09-26',NULL,1,NULL,1121,17,2),(112,'2023-09-26',NULL,1,NULL,1123,16,2),(113,'2023-09-26',NULL,1,NULL,1124,17,2),(114,'2023-09-26',NULL,1,NULL,1125,11,6),(115,'2023-09-26',NULL,1,NULL,1127,17,2),(116,'2023-09-26',NULL,1,NULL,1128,14,4),(117,'2023-09-26',NULL,1,NULL,1129,17,2),(118,'2023-09-26',NULL,1,NULL,1131,11,6),(119,'2023-09-26',NULL,1,NULL,1132,18,5),(120,'2023-09-26',NULL,1,NULL,1134,20,1),(121,'2023-09-26',NULL,1,NULL,1135,17,2),(122,'2023-09-26',NULL,1,NULL,1142,6,3),(123,'2023-09-26',NULL,1,NULL,1143,17,2),(124,'2023-09-26',NULL,1,NULL,1144,17,2),(125,'2023-09-26',NULL,1,NULL,1146,18,5),(126,'2023-09-26',NULL,1,NULL,1148,17,2),(127,'2023-09-26',NULL,1,NULL,1149,14,4),(128,'2023-09-26',NULL,1,NULL,1150,17,2),(129,'2023-09-26',NULL,1,NULL,1153,14,4),(130,'2023-09-26',NULL,1,NULL,1154,5,3),(131,'2023-09-26',NULL,1,NULL,1157,15,4),(132,'2023-09-26',NULL,1,NULL,1158,17,2),(133,'2023-09-26',NULL,1,NULL,1159,17,2),(134,'2023-09-26',NULL,1,NULL,1160,5,3),(135,'2023-09-26',NULL,1,NULL,1161,5,3),(136,'2023-09-26',NULL,1,NULL,1162,15,4),(137,'2023-09-26',NULL,1,NULL,1163,17,2),(138,'2023-09-26',NULL,1,NULL,1164,15,4),(139,'2023-09-26',NULL,1,NULL,1165,15,4),(140,'2023-09-26',NULL,1,NULL,1166,17,2),(141,'2023-09-26',NULL,1,NULL,1168,17,2),(142,'2023-09-26',NULL,1,NULL,1169,11,6),(143,'2023-09-26',NULL,1,NULL,1170,21,4),(144,'2023-09-26',NULL,1,NULL,1172,17,2),(145,'2023-09-26',NULL,1,NULL,1173,17,2),(146,'2023-09-26',NULL,1,NULL,1174,6,3),(147,'2023-09-26',NULL,1,NULL,1175,17,2),(148,'2023-09-26',NULL,1,NULL,1176,17,2),(149,'2023-09-26',NULL,1,NULL,1178,15,4),(150,'2023-09-26',NULL,1,NULL,1179,1,1),(151,'2023-09-26',NULL,1,NULL,1180,6,3),(152,'2023-09-26',NULL,1,NULL,1181,17,2),(153,'2023-09-26',NULL,1,NULL,1182,18,5),(154,'2023-09-26',NULL,1,NULL,1183,11,6),(155,'2023-09-26',NULL,1,NULL,1184,17,2),(156,'2023-09-26',NULL,1,NULL,1185,17,2),(157,'2023-09-26',NULL,1,NULL,1186,16,2),(158,'2023-09-26',NULL,1,NULL,1187,16,2),(159,'2023-09-26',NULL,1,NULL,1188,17,2),(160,'2023-09-26',NULL,1,NULL,1189,14,4),(161,'2023-09-26',NULL,1,NULL,1190,14,4),(162,'2023-09-26',NULL,1,NULL,1191,18,5),(163,'2023-09-26',NULL,1,NULL,1192,14,4),(164,'2023-09-26',NULL,1,NULL,1193,17,2),(165,'2023-09-26',NULL,1,NULL,1194,17,2),(166,'2023-09-26',NULL,1,NULL,1195,14,4),(167,'2023-09-26',NULL,1,NULL,1196,16,2),(168,'2023-09-26',NULL,1,NULL,1197,14,4),(169,'2023-09-26',NULL,1,NULL,1198,16,2),(170,'2023-09-26',NULL,1,NULL,1199,14,4),(171,'2023-09-26',NULL,1,NULL,1200,14,4),(172,'2023-09-26',NULL,1,NULL,1201,16,2),(173,'2023-09-26',NULL,1,NULL,1202,11,6),(174,'2023-09-26',NULL,1,NULL,1203,16,2),(175,'2023-09-26',NULL,1,NULL,1205,16,2),(176,'2023-09-26',NULL,1,NULL,1206,11,6),(177,'2023-09-26',NULL,1,NULL,1207,16,2),(178,'2023-09-26',NULL,1,NULL,1208,7,3),(179,'2023-09-26',NULL,1,NULL,1209,16,2),(180,'2023-09-26',NULL,1,NULL,1210,18,5),(181,'2023-09-26',NULL,1,NULL,1211,16,2),(182,'2023-09-26',NULL,1,NULL,1213,16,2),(183,'2023-09-26',NULL,1,NULL,1214,11,6),(184,'2023-09-26',NULL,1,NULL,1216,14,4),(185,'2023-09-26',NULL,1,NULL,1217,16,2),(186,'2023-09-26',NULL,1,NULL,1219,14,4),(187,'2023-09-26',NULL,1,NULL,1221,18,5),(188,'2023-09-26',NULL,1,NULL,1222,14,4),(189,'2023-09-26',NULL,1,NULL,1223,16,2),(190,'2023-09-26',NULL,1,NULL,1225,16,2),(191,'2023-09-26',NULL,1,NULL,1226,14,4),(192,'2023-09-26',NULL,1,NULL,1227,16,2),(193,'2023-09-26',NULL,1,NULL,1229,16,2),(194,'2023-09-26',NULL,1,NULL,1230,16,2),(195,'2023-09-26',NULL,1,NULL,1231,16,2),(196,'2023-09-26',NULL,1,NULL,1233,21,4),(197,'2023-09-26',NULL,1,NULL,1234,16,2),(198,'2023-09-26',NULL,1,NULL,1236,21,4),(199,'2023-09-26',NULL,1,NULL,1237,16,2),(200,'2023-09-26',NULL,1,NULL,1238,16,2),(201,'2023-09-26',NULL,1,NULL,1239,18,5),(202,'2023-09-26',NULL,1,NULL,1240,14,4),(203,'2023-09-26',NULL,1,NULL,1241,14,4),(204,'2023-09-26',NULL,1,NULL,1242,16,2),(205,'2023-09-26',NULL,1,NULL,1243,16,2),(206,'2023-09-26',NULL,1,NULL,1244,17,2),(207,'2023-09-26',NULL,1,NULL,1245,17,2),(208,'2023-09-26',NULL,1,NULL,1247,18,5),(209,'2023-09-26',NULL,1,NULL,1248,17,2),(210,'2023-09-26',NULL,1,NULL,1249,17,2),(211,'2023-09-26',NULL,1,NULL,1250,17,2),(212,'2023-09-26',NULL,1,NULL,1251,17,2),(213,'2023-09-26',NULL,1,NULL,1252,16,2),(214,'2023-09-26',NULL,1,NULL,1253,16,2),(215,'2023-09-26',NULL,1,NULL,1254,16,2),(216,'2023-09-26',NULL,1,NULL,1255,16,2),(217,'2023-09-26',NULL,1,NULL,1256,14,4),(218,'2023-09-26',NULL,1,NULL,1257,16,2),(219,'2023-09-26',NULL,1,NULL,1261,21,4),(220,'2023-09-26',NULL,1,NULL,1262,17,2),(221,'2023-09-26',NULL,1,NULL,1263,17,2),(222,'2023-09-26',NULL,1,NULL,1264,14,4),(223,'2023-09-26',NULL,1,NULL,1265,17,2),(224,'2023-09-26',NULL,1,NULL,1266,20,1),(225,'2023-09-26',NULL,1,NULL,1267,16,2),(226,'2023-09-26',NULL,1,NULL,1268,18,5),(227,'2023-09-26',NULL,1,NULL,1269,18,5),(228,'2023-09-26',NULL,1,NULL,1270,16,2),(229,'2023-09-26',NULL,1,NULL,1271,16,2),(230,'2023-09-26',NULL,1,NULL,1272,16,2),(231,'2023-09-26',NULL,1,NULL,1273,17,2),(232,'2023-09-26',NULL,1,NULL,1274,1,1),(233,'2023-09-26',NULL,1,NULL,1276,1,1),(234,'2023-09-26',NULL,1,NULL,1278,1,1),(235,'2023-09-26',NULL,1,NULL,1280,1,1),(236,'2023-09-26',NULL,1,NULL,1281,1,1),(237,'2023-09-26',NULL,1,NULL,1284,1,1),(238,'2023-09-26',NULL,1,NULL,1286,1,1),(239,'2023-09-26',NULL,1,NULL,1287,1,1),(240,'2023-09-26',NULL,1,NULL,1288,1,1),(241,'2023-09-26',NULL,1,NULL,1289,1,1),(242,'2023-09-26',NULL,1,NULL,1291,22,1),(243,'2023-09-26',NULL,1,NULL,1292,1,1),(244,'2023-09-26',NULL,1,NULL,1294,1,1),(245,'2023-09-26',NULL,1,NULL,1296,1,1),(246,'2023-09-26',NULL,1,NULL,1297,1,1),(247,'2023-09-26',NULL,1,NULL,1000,20,1),(248,'2023-09-26',NULL,1,NULL,1001,17,2),(249,'2023-09-26',NULL,1,NULL,1002,17,2),(250,'2023-09-26',NULL,1,NULL,1003,18,5),(251,'2023-09-26',NULL,1,NULL,1004,7,3),(252,'2023-09-26',NULL,1,NULL,1005,18,5),(253,'2023-09-26',NULL,1,NULL,1006,5,3),(254,'2023-09-26',NULL,1,NULL,1007,1,1),(255,'2023-09-26',NULL,1,NULL,1008,1,1),(256,'2023-09-26',NULL,1,NULL,1009,5,3),(257,'2023-09-26',NULL,1,NULL,1010,5,3),(258,'2023-09-26',NULL,1,NULL,1011,5,3),(259,'2023-09-26',NULL,1,NULL,1012,14,4),(260,'2023-09-26',NULL,1,NULL,1013,16,2),(261,'2023-09-26',NULL,1,NULL,1014,5,3),(262,'2023-09-26',NULL,1,NULL,1015,5,3),(263,'2023-09-26',NULL,1,NULL,1016,5,3),(264,'2023-09-26',NULL,1,NULL,1017,15,4),(265,'2023-09-26',NULL,1,NULL,1018,14,4),(266,'2023-09-26',NULL,1,NULL,1019,14,4),(267,'2023-09-26',NULL,1,NULL,1020,18,5),(268,'2023-09-26',NULL,1,NULL,1021,20,1),(269,'2023-09-26',NULL,1,NULL,1022,15,4),(270,'2023-09-26',NULL,1,NULL,1023,14,4),(271,'2023-09-26',NULL,1,NULL,1024,15,4),(272,'2023-09-26',NULL,1,NULL,1025,14,4),(273,'2023-09-26',NULL,1,NULL,1025,20,1),(274,'2023-09-26',NULL,1,NULL,1026,14,4),(275,'2023-09-26',NULL,1,NULL,1027,11,6),(276,'2023-09-26',NULL,1,NULL,1028,16,2),(277,'2023-09-26',NULL,1,NULL,1029,15,4),(278,'2023-09-26',NULL,1,NULL,1030,16,2),(279,'2023-09-26',NULL,1,NULL,1031,5,3),(280,'2023-09-26',NULL,1,NULL,1032,5,3),(281,'2023-09-26',NULL,1,NULL,1033,5,3),(282,'2023-09-26',NULL,1,NULL,1034,5,3),(283,'2023-09-26',NULL,1,NULL,1035,16,2),(284,'2023-09-26',NULL,1,NULL,1036,14,4),(285,'2023-09-26',NULL,1,NULL,1037,15,4),(286,'2023-09-26',NULL,1,NULL,1038,17,2),(287,'2023-09-26',NULL,1,NULL,1039,16,2),(288,'2023-09-26',NULL,1,NULL,1040,15,4),(289,'2023-09-26',NULL,1,NULL,1041,14,4),(290,'2023-09-26',NULL,1,NULL,1042,17,2),(291,'2023-09-26',NULL,1,NULL,1043,20,1),(292,'2023-09-26',NULL,1,NULL,1044,17,2),(293,'2023-09-26',NULL,1,NULL,1045,5,3),(294,'2023-09-26',NULL,1,NULL,1046,17,2),(295,'2023-09-26',NULL,1,NULL,1047,17,2),(296,'2023-09-26',NULL,1,NULL,1048,16,2),(297,'2023-09-26',NULL,1,NULL,1049,17,2),(298,'2023-09-26',NULL,1,NULL,1050,14,4),(299,'2023-09-26',NULL,1,NULL,1051,17,2),(300,'2023-09-26',NULL,1,NULL,1052,11,6),(301,'2023-09-26',NULL,1,NULL,1053,17,2),(302,'2023-09-26',NULL,1,NULL,1054,14,4),(303,'2023-09-26',NULL,1,NULL,1055,14,4),(304,'2023-09-26',NULL,1,NULL,1056,14,4),(305,'2023-09-26',NULL,1,NULL,1057,17,2),(306,'2023-09-26',NULL,1,NULL,1058,11,6),(307,'2023-09-26',NULL,1,NULL,1059,18,5),(308,'2023-09-26',NULL,1,NULL,1059,17,2),(309,'2023-09-26',NULL,1,NULL,1060,5,3),(310,'2023-09-26',NULL,1,NULL,1061,14,4),(311,'2023-09-26',NULL,1,NULL,1062,18,5),(312,'2023-09-26',NULL,1,NULL,1063,14,4),(313,'2023-09-26',NULL,1,NULL,1064,17,2),(314,'2023-09-26',NULL,1,NULL,1065,16,2),(315,'2023-09-26',NULL,1,NULL,1066,11,6),(316,'2023-09-26',NULL,1,NULL,1067,7,3),(317,'2023-09-26',NULL,1,NULL,1068,11,6),(318,'2023-09-26',NULL,1,NULL,1069,17,2),(319,'2023-09-26',NULL,1,NULL,1070,20,1),(320,'2023-09-26',NULL,1,NULL,1071,14,4),(321,'2023-09-26',NULL,1,NULL,1072,14,4),(322,'2023-09-26',NULL,1,NULL,1073,14,4),(323,'2023-09-26',NULL,1,NULL,1074,16,2),(324,'2023-09-26',NULL,1,NULL,1075,15,4),(325,'2023-09-26',NULL,1,NULL,1076,16,2),(326,'2023-09-26',NULL,1,NULL,1077,17,2),(327,'2023-09-26',NULL,1,NULL,1078,20,1),(328,'2023-09-26',NULL,1,NULL,1079,18,5),(329,'2023-09-26',NULL,1,NULL,1080,18,5),(330,'2023-09-26',NULL,1,NULL,1081,17,2),(331,'2023-09-26',NULL,1,NULL,1082,7,3),(332,'2023-09-26',NULL,1,NULL,1083,16,2),(333,'2023-09-26',NULL,1,NULL,1084,17,2),(334,'2023-09-26',NULL,1,NULL,1085,11,6),(335,'2023-09-26',NULL,1,NULL,1086,17,2),(336,'2023-09-26',NULL,1,NULL,1087,14,4),(337,'2023-09-26',NULL,1,NULL,1088,1,1),(338,'2023-09-26',NULL,1,NULL,1090,1,1),(339,'2023-09-26',NULL,1,NULL,1093,1,1),(340,'2023-09-26',NULL,1,NULL,1094,1,1),(341,'2023-09-26',NULL,1,NULL,1097,1,1),(342,'2023-09-26',NULL,1,NULL,1098,1,1),(343,'2023-09-26',NULL,1,NULL,1100,5,3),(344,'2023-09-26',NULL,1,NULL,1101,14,4),(345,'2023-09-26',NULL,1,NULL,1102,1,1),(346,'2023-09-26',NULL,1,NULL,1103,16,2),(347,'2023-09-26',NULL,1,NULL,1105,1,1),(348,'2023-09-26',NULL,1,NULL,1106,18,5),(349,'2023-09-26',NULL,1,NULL,1107,16,2),(350,'2023-09-26',NULL,1,NULL,1114,14,4),(351,'2023-09-26',NULL,1,NULL,1116,17,2),(352,'2023-09-26',NULL,1,NULL,1117,17,2),(353,'2023-09-26',NULL,1,NULL,1118,16,2),(354,'2023-09-26',NULL,1,NULL,1119,11,6),(355,'2023-09-26',NULL,1,NULL,1120,14,4),(356,'2023-09-26',NULL,1,NULL,1121,17,2),(357,'2023-09-26',NULL,1,NULL,1123,16,2),(358,'2023-09-26',NULL,1,NULL,1124,17,2),(359,'2023-09-26',NULL,1,NULL,1125,11,6),(360,'2023-09-26',NULL,1,NULL,1127,17,2),(361,'2023-09-26',NULL,1,NULL,1128,14,4),(362,'2023-09-26',NULL,1,NULL,1129,17,2),(363,'2023-09-26',NULL,1,NULL,1131,11,6),(364,'2023-09-26',NULL,1,NULL,1132,18,5),(365,'2023-09-26',NULL,1,NULL,1134,20,1),(366,'2023-09-26',NULL,1,NULL,1135,17,2),(367,'2023-09-26',NULL,1,NULL,1142,6,3),(368,'2023-09-26',NULL,1,NULL,1143,17,2),(369,'2023-09-26',NULL,1,NULL,1144,17,2),(370,'2023-09-26',NULL,1,NULL,1146,18,5),(371,'2023-09-26',NULL,1,NULL,1148,17,2),(372,'2023-09-26',NULL,1,NULL,1149,14,4),(373,'2023-09-26',NULL,1,NULL,1150,17,2),(374,'2023-09-26',NULL,1,NULL,1153,14,4),(375,'2023-09-26',NULL,1,NULL,1154,5,3),(376,'2023-09-26',NULL,1,NULL,1157,15,4),(377,'2023-09-26',NULL,1,NULL,1158,17,2),(378,'2023-09-26',NULL,1,NULL,1159,17,2),(379,'2023-09-26',NULL,1,NULL,1160,5,3),(380,'2023-09-26',NULL,1,NULL,1161,5,3),(381,'2023-09-26',NULL,1,NULL,1162,15,4),(382,'2023-09-26',NULL,1,NULL,1163,17,2),(383,'2023-09-26',NULL,1,NULL,1164,15,4),(384,'2023-09-26',NULL,1,NULL,1165,15,4),(385,'2023-09-26',NULL,1,NULL,1166,17,2),(386,'2023-09-26',NULL,1,NULL,1168,17,2),(387,'2023-09-26',NULL,1,NULL,1169,11,6),(388,'2023-09-26',NULL,1,NULL,1170,21,4),(389,'2023-09-26',NULL,1,NULL,1172,17,2),(390,'2023-09-26',NULL,1,NULL,1173,17,2),(391,'2023-09-26',NULL,1,NULL,1174,6,3),(392,'2023-09-26',NULL,1,NULL,1175,17,2),(393,'2023-09-26',NULL,1,NULL,1176,17,2),(394,'2023-09-26',NULL,1,NULL,1178,15,4),(395,'2023-09-26',NULL,1,NULL,1179,1,1),(396,'2023-09-26',NULL,1,NULL,1180,6,3),(397,'2023-09-26',NULL,1,NULL,1181,17,2),(398,'2023-09-26',NULL,1,NULL,1182,18,5),(399,'2023-09-26',NULL,1,NULL,1183,11,6),(400,'2023-09-26',NULL,1,NULL,1184,17,2),(401,'2023-09-26',NULL,1,NULL,1185,17,2),(402,'2023-09-26',NULL,1,NULL,1186,16,2),(403,'2023-09-26',NULL,1,NULL,1187,16,2),(404,'2023-09-26',NULL,1,NULL,1188,17,2),(405,'2023-09-26',NULL,1,NULL,1189,14,4),(406,'2023-09-26',NULL,1,NULL,1190,14,4),(407,'2023-09-26',NULL,1,NULL,1191,18,5),(408,'2023-09-26',NULL,1,NULL,1192,14,4),(409,'2023-09-26',NULL,1,NULL,1193,17,2),(410,'2023-09-26',NULL,1,NULL,1194,17,2),(411,'2023-09-26',NULL,1,NULL,1195,14,4),(412,'2023-09-26',NULL,1,NULL,1196,16,2),(413,'2023-09-26',NULL,1,NULL,1197,14,4),(414,'2023-09-26',NULL,1,NULL,1198,16,2),(415,'2023-09-26',NULL,1,NULL,1199,14,4),(416,'2023-09-26',NULL,1,NULL,1200,14,4),(417,'2023-09-26',NULL,1,NULL,1201,16,2),(418,'2023-09-26',NULL,1,NULL,1202,11,6),(419,'2023-09-26',NULL,1,NULL,1203,16,2),(420,'2023-09-26',NULL,1,NULL,1205,16,2),(421,'2023-09-26',NULL,1,NULL,1206,11,6),(422,'2023-09-26',NULL,1,NULL,1207,16,2),(423,'2023-09-26',NULL,1,NULL,1208,7,3),(424,'2023-09-26',NULL,1,NULL,1209,16,2),(425,'2023-09-26',NULL,1,NULL,1210,18,5),(426,'2023-09-26',NULL,1,NULL,1211,16,2),(427,'2023-09-26',NULL,1,NULL,1213,16,2),(428,'2023-09-26',NULL,1,NULL,1214,11,6),(429,'2023-09-26',NULL,1,NULL,1216,14,4),(430,'2023-09-26',NULL,1,NULL,1217,16,2),(431,'2023-09-26',NULL,1,NULL,1219,14,4),(432,'2023-09-26',NULL,1,NULL,1221,18,5),(433,'2023-09-26',NULL,1,NULL,1222,14,4),(434,'2023-09-26',NULL,1,NULL,1223,16,2),(435,'2023-09-26',NULL,1,NULL,1225,16,2),(436,'2023-09-26',NULL,1,NULL,1226,14,4),(437,'2023-09-26',NULL,1,NULL,1227,16,2),(438,'2023-09-26',NULL,1,NULL,1229,16,2),(439,'2023-09-26',NULL,1,NULL,1230,16,2),(440,'2023-09-26',NULL,1,NULL,1231,16,2),(441,'2023-09-26',NULL,1,NULL,1233,21,4),(442,'2023-09-26',NULL,1,NULL,1234,16,2),(443,'2023-09-26',NULL,1,NULL,1236,21,4),(444,'2023-09-26',NULL,1,NULL,1237,16,2),(445,'2023-09-26',NULL,1,NULL,1238,16,2),(446,'2023-09-26',NULL,1,NULL,1239,18,5),(447,'2023-09-26',NULL,1,NULL,1240,14,4),(448,'2023-09-26',NULL,1,NULL,1241,14,4),(449,'2023-09-26',NULL,1,NULL,1242,16,2),(450,'2023-09-26',NULL,1,NULL,1243,16,2),(451,'2023-09-26',NULL,1,NULL,1244,17,2),(452,'2023-09-26',NULL,1,NULL,1245,17,2),(453,'2023-09-26',NULL,1,NULL,1247,18,5),(454,'2023-09-26',NULL,1,NULL,1248,17,2),(455,'2023-09-26',NULL,1,NULL,1249,17,2),(456,'2023-09-26',NULL,1,NULL,1250,17,2),(457,'2023-09-26',NULL,1,NULL,1251,17,2),(458,'2023-09-26',NULL,1,NULL,1252,16,2),(459,'2023-09-26',NULL,1,NULL,1253,16,2),(460,'2023-09-26',NULL,1,NULL,1254,16,2),(461,'2023-09-26',NULL,1,NULL,1255,16,2),(462,'2023-09-26',NULL,1,NULL,1256,14,4),(463,'2023-09-26',NULL,1,NULL,1257,16,2),(464,'2023-09-26',NULL,1,NULL,1261,21,4),(465,'2023-09-26',NULL,1,NULL,1262,17,2),(466,'2023-09-26',NULL,1,NULL,1263,17,2),(467,'2023-09-26',NULL,1,NULL,1264,14,4),(468,'2023-09-26',NULL,1,NULL,1265,17,2),(469,'2023-09-26',NULL,1,NULL,1266,20,1),(470,'2023-09-26',NULL,1,NULL,1267,16,2),(471,'2023-09-26',NULL,1,NULL,1268,18,5),(472,'2023-09-26',NULL,1,NULL,1269,18,5),(473,'2023-09-26',NULL,1,NULL,1270,16,2),(474,'2023-09-26',NULL,1,NULL,1271,16,2),(475,'2023-09-26',NULL,1,NULL,1272,16,2),(476,'2023-09-26',NULL,1,NULL,1273,17,2),(477,'2023-09-26',NULL,1,NULL,1274,1,1),(478,'2023-09-26',NULL,1,NULL,1276,1,1),(479,'2023-09-26',NULL,1,NULL,1278,1,1),(480,'2023-09-26',NULL,1,NULL,1280,1,1),(481,'2023-09-26',NULL,1,NULL,1281,1,1),(482,'2023-09-26',NULL,1,NULL,1284,1,1),(483,'2023-09-26',NULL,1,NULL,1286,1,1),(484,'2023-09-26',NULL,1,NULL,1287,1,1),(485,'2023-09-26',NULL,1,NULL,1288,1,1),(486,'2023-09-26',NULL,1,NULL,1289,1,1),(487,'2023-09-26',NULL,1,NULL,1291,22,1),(488,'2023-09-26',NULL,1,NULL,1292,1,1),(489,'2023-09-26',NULL,1,NULL,1294,1,1),(490,'2023-09-26',NULL,1,NULL,1296,1,1),(491,'2023-09-26',NULL,1,NULL,1297,1,1),(492,'2023-09-26',NULL,1,NULL,1000,20,1),(493,'2023-09-26',NULL,1,NULL,1001,17,2),(494,'2023-09-26',NULL,1,NULL,1002,17,2),(495,'2023-09-26',NULL,1,NULL,1003,18,5),(496,'2023-09-26',NULL,1,NULL,1004,7,3),(497,'2023-09-26',NULL,1,NULL,1005,18,5),(498,'2023-09-26',NULL,1,NULL,1006,5,3),(499,'2023-09-26',NULL,1,NULL,1007,1,1),(500,'2023-09-26',NULL,1,NULL,1008,1,1),(501,'2023-09-26',NULL,1,NULL,1009,5,3),(502,'2023-09-26',NULL,1,NULL,1010,5,3),(503,'2023-09-26',NULL,1,NULL,1011,5,3),(504,'2023-09-26',NULL,1,NULL,1012,14,4),(505,'2023-09-26',NULL,1,NULL,1013,16,2),(506,'2023-09-26',NULL,1,NULL,1014,5,3),(507,'2023-09-26',NULL,1,NULL,1015,5,3),(508,'2023-09-26',NULL,1,NULL,1016,5,3),(509,'2023-09-26',NULL,1,NULL,1017,15,4),(510,'2023-09-26',NULL,1,NULL,1018,14,4),(511,'2023-09-26',NULL,1,NULL,1019,14,4),(512,'2023-09-26',NULL,1,NULL,1020,18,5),(513,'2023-09-26',NULL,1,NULL,1021,20,1),(514,'2023-09-26',NULL,1,NULL,1022,15,4),(515,'2023-09-26',NULL,1,NULL,1023,14,4),(516,'2023-09-26',NULL,1,NULL,1024,15,4),(517,'2023-09-26',NULL,1,NULL,1025,14,4),(518,'2023-09-26',NULL,1,NULL,1025,20,1),(519,'2023-09-26',NULL,1,NULL,1026,14,4),(520,'2023-09-26',NULL,1,NULL,1027,11,6),(521,'2023-09-26',NULL,1,NULL,1028,16,2),(522,'2023-09-26',NULL,1,NULL,1029,15,4),(523,'2023-09-26',NULL,1,NULL,1030,16,2),(524,'2023-09-26',NULL,1,NULL,1031,5,3),(525,'2023-09-26',NULL,1,NULL,1032,5,3),(526,'2023-09-26',NULL,1,NULL,1033,5,3),(527,'2023-09-26',NULL,1,NULL,1034,5,3),(528,'2023-09-26',NULL,1,NULL,1035,16,2),(529,'2023-09-26',NULL,1,NULL,1036,14,4),(530,'2023-09-26',NULL,1,NULL,1037,15,4),(531,'2023-09-26',NULL,1,NULL,1038,17,2),(532,'2023-09-26',NULL,1,NULL,1039,16,2),(533,'2023-09-26',NULL,1,NULL,1040,15,4),(534,'2023-09-26',NULL,1,NULL,1041,14,4),(535,'2023-09-26',NULL,1,NULL,1042,17,2),(536,'2023-09-26',NULL,1,NULL,1043,20,1),(537,'2023-09-26',NULL,1,NULL,1044,17,2),(538,'2023-09-26',NULL,1,NULL,1045,5,3),(539,'2023-09-26',NULL,1,NULL,1046,17,2),(540,'2023-09-26',NULL,1,NULL,1047,17,2),(541,'2023-09-26',NULL,1,NULL,1048,16,2),(542,'2023-09-26',NULL,1,NULL,1049,17,2),(543,'2023-09-26',NULL,1,NULL,1050,14,4),(544,'2023-09-26',NULL,1,NULL,1051,17,2),(545,'2023-09-26',NULL,1,NULL,1052,11,6),(546,'2023-09-26',NULL,1,NULL,1053,17,2),(547,'2023-09-26',NULL,1,NULL,1054,14,4),(548,'2023-09-26',NULL,1,NULL,1055,14,4),(549,'2023-09-26',NULL,1,NULL,1056,14,4),(550,'2023-09-26',NULL,1,NULL,1057,17,2),(551,'2023-09-26',NULL,1,NULL,1058,11,6),(552,'2023-09-26',NULL,1,NULL,1059,18,5),(553,'2023-09-26',NULL,1,NULL,1059,17,2),(554,'2023-09-26',NULL,1,NULL,1060,5,3),(555,'2023-09-26',NULL,1,NULL,1061,14,4),(556,'2023-09-26',NULL,1,NULL,1062,18,5),(557,'2023-09-26',NULL,1,NULL,1063,14,4),(558,'2023-09-26',NULL,1,NULL,1064,17,2),(559,'2023-09-26',NULL,1,NULL,1065,16,2),(560,'2023-09-26',NULL,1,NULL,1066,11,6),(561,'2023-09-26',NULL,1,NULL,1067,7,3),(562,'2023-09-26',NULL,1,NULL,1068,11,6),(563,'2023-09-26',NULL,1,NULL,1069,17,2),(564,'2023-09-26',NULL,1,NULL,1070,20,1),(565,'2023-09-26',NULL,1,NULL,1071,14,4),(566,'2023-09-26',NULL,1,NULL,1072,14,4),(567,'2023-09-26',NULL,1,NULL,1073,14,4),(568,'2023-09-26',NULL,1,NULL,1074,16,2),(569,'2023-09-26',NULL,1,NULL,1075,15,4),(570,'2023-09-26',NULL,1,NULL,1076,16,2),(571,'2023-09-26',NULL,1,NULL,1077,17,2),(572,'2023-09-26',NULL,1,NULL,1078,20,1),(573,'2023-09-26',NULL,1,NULL,1079,18,5),(574,'2023-09-26',NULL,1,NULL,1080,18,5),(575,'2023-09-26',NULL,1,NULL,1081,17,2),(576,'2023-09-26',NULL,1,NULL,1082,7,3),(577,'2023-09-26',NULL,1,NULL,1083,16,2),(578,'2023-09-26',NULL,1,NULL,1084,17,2),(579,'2023-09-26',NULL,1,NULL,1085,11,6),(580,'2023-09-26',NULL,1,NULL,1086,17,2),(581,'2023-09-26',NULL,1,NULL,1087,14,4),(582,'2023-09-26',NULL,1,NULL,1088,1,1),(583,'2023-09-26',NULL,1,NULL,1090,1,1),(584,'2023-09-26',NULL,1,NULL,1093,1,1),(585,'2023-09-26',NULL,1,NULL,1094,1,1),(586,'2023-09-26',NULL,1,NULL,1097,1,1),(587,'2023-09-26',NULL,1,NULL,1098,1,1),(588,'2023-09-26',NULL,1,NULL,1100,5,3),(589,'2023-09-26',NULL,1,NULL,1101,14,4),(590,'2023-09-26',NULL,1,NULL,1102,1,1),(591,'2023-09-26',NULL,1,NULL,1103,16,2),(592,'2023-09-26',NULL,1,NULL,1105,1,1),(593,'2023-09-26',NULL,1,NULL,1106,18,5),(594,'2023-09-26',NULL,1,NULL,1107,16,2),(595,'2023-09-26',NULL,1,NULL,1114,14,4),(596,'2023-09-26',NULL,1,NULL,1116,17,2),(597,'2023-09-26',NULL,1,NULL,1117,17,2),(598,'2023-09-26',NULL,1,NULL,1118,16,2),(599,'2023-09-26',NULL,1,NULL,1119,11,6),(600,'2023-09-26',NULL,1,NULL,1120,14,4),(601,'2023-09-26',NULL,1,NULL,1121,17,2),(602,'2023-09-26',NULL,1,NULL,1123,16,2),(603,'2023-09-26',NULL,1,NULL,1124,17,2),(604,'2023-09-26',NULL,1,NULL,1125,11,6),(605,'2023-09-26',NULL,1,NULL,1127,17,2),(606,'2023-09-26',NULL,1,NULL,1128,14,4),(607,'2023-09-26',NULL,1,NULL,1129,17,2),(608,'2023-09-26',NULL,1,NULL,1131,11,6),(609,'2023-09-26',NULL,1,NULL,1132,18,5),(610,'2023-09-26',NULL,1,NULL,1134,20,1),(611,'2023-09-26',NULL,1,NULL,1135,17,2),(612,'2023-09-26',NULL,1,NULL,1142,6,3),(613,'2023-09-26',NULL,1,NULL,1143,17,2),(614,'2023-09-26',NULL,1,NULL,1144,17,2),(615,'2023-09-26',NULL,1,NULL,1146,18,5),(616,'2023-09-26',NULL,1,NULL,1148,17,2),(617,'2023-09-26',NULL,1,NULL,1149,14,4),(618,'2023-09-26',NULL,1,NULL,1150,17,2),(619,'2023-09-26',NULL,1,NULL,1153,14,4),(620,'2023-09-26',NULL,1,NULL,1154,5,3),(621,'2023-09-26',NULL,1,NULL,1157,15,4),(622,'2023-09-26',NULL,1,NULL,1158,17,2),(623,'2023-09-26',NULL,1,NULL,1159,17,2),(624,'2023-09-26',NULL,1,NULL,1160,5,3),(625,'2023-09-26',NULL,1,NULL,1161,5,3),(626,'2023-09-26',NULL,1,NULL,1162,15,4),(627,'2023-09-26',NULL,1,NULL,1163,17,2),(628,'2023-09-26',NULL,1,NULL,1164,15,4),(629,'2023-09-26',NULL,1,NULL,1165,15,4),(630,'2023-09-26',NULL,1,NULL,1166,17,2),(631,'2023-09-26',NULL,1,NULL,1168,17,2),(632,'2023-09-26',NULL,1,NULL,1169,11,6),(633,'2023-09-26',NULL,1,NULL,1170,21,4),(634,'2023-09-26',NULL,1,NULL,1172,17,2),(635,'2023-09-26',NULL,1,NULL,1173,17,2),(636,'2023-09-26',NULL,1,NULL,1174,6,3),(637,'2023-09-26',NULL,1,NULL,1175,17,2),(638,'2023-09-26',NULL,1,NULL,1176,17,2),(639,'2023-09-26',NULL,1,NULL,1178,15,4),(640,'2023-09-26',NULL,1,NULL,1179,1,1),(641,'2023-09-26',NULL,1,NULL,1180,6,3),(642,'2023-09-26',NULL,1,NULL,1181,17,2),(643,'2023-09-26',NULL,1,NULL,1182,18,5),(644,'2023-09-26',NULL,1,NULL,1183,11,6),(645,'2023-09-26',NULL,1,NULL,1184,17,2),(646,'2023-09-26',NULL,1,NULL,1185,17,2),(647,'2023-09-26',NULL,1,NULL,1186,16,2),(648,'2023-09-26',NULL,1,NULL,1187,16,2),(649,'2023-09-26',NULL,1,NULL,1188,17,2),(650,'2023-09-26',NULL,1,NULL,1189,14,4),(651,'2023-09-26',NULL,1,NULL,1190,14,4),(652,'2023-09-26',NULL,1,NULL,1191,18,5),(653,'2023-09-26',NULL,1,NULL,1192,14,4),(654,'2023-09-26',NULL,1,NULL,1193,17,2),(655,'2023-09-26',NULL,1,NULL,1194,17,2),(656,'2023-09-26',NULL,1,NULL,1195,14,4),(657,'2023-09-26',NULL,1,NULL,1196,16,2),(658,'2023-09-26',NULL,1,NULL,1197,14,4),(659,'2023-09-26',NULL,1,NULL,1198,16,2),(660,'2023-09-26',NULL,1,NULL,1199,14,4),(661,'2023-09-26',NULL,1,NULL,1200,14,4),(662,'2023-09-26',NULL,1,NULL,1201,16,2),(663,'2023-09-26',NULL,1,NULL,1202,11,6),(664,'2023-09-26',NULL,1,NULL,1203,16,2),(665,'2023-09-26',NULL,1,NULL,1205,16,2),(666,'2023-09-26',NULL,1,NULL,1206,11,6),(667,'2023-09-26',NULL,1,NULL,1207,16,2),(668,'2023-09-26',NULL,1,NULL,1208,7,3),(669,'2023-09-26',NULL,1,NULL,1209,16,2),(670,'2023-09-26',NULL,1,NULL,1210,18,5),(671,'2023-09-26',NULL,1,NULL,1211,16,2),(672,'2023-09-26',NULL,1,NULL,1213,16,2),(673,'2023-09-26',NULL,1,NULL,1214,11,6),(674,'2023-09-26',NULL,1,NULL,1216,14,4),(675,'2023-09-26',NULL,1,NULL,1217,16,2),(676,'2023-09-26',NULL,1,NULL,1219,14,4),(677,'2023-09-26',NULL,1,NULL,1221,18,5),(678,'2023-09-26',NULL,1,NULL,1222,14,4),(679,'2023-09-26',NULL,1,NULL,1223,16,2),(680,'2023-09-26',NULL,1,NULL,1225,16,2),(681,'2023-09-26',NULL,1,NULL,1226,14,4),(682,'2023-09-26',NULL,1,NULL,1227,16,2),(683,'2023-09-26',NULL,1,NULL,1229,16,2),(684,'2023-09-26',NULL,1,NULL,1230,16,2),(685,'2023-09-26',NULL,1,NULL,1231,16,2),(686,'2023-09-26',NULL,1,NULL,1233,21,4),(687,'2023-09-26',NULL,1,NULL,1234,16,2),(688,'2023-09-26',NULL,1,NULL,1236,21,4),(689,'2023-09-26',NULL,1,NULL,1237,16,2),(690,'2023-09-26',NULL,1,NULL,1238,16,2),(691,'2023-09-26',NULL,1,NULL,1239,18,5),(692,'2023-09-26',NULL,1,NULL,1240,14,4),(693,'2023-09-26',NULL,1,NULL,1241,14,4),(694,'2023-09-26',NULL,1,NULL,1242,16,2),(695,'2023-09-26',NULL,1,NULL,1243,16,2),(696,'2023-09-26',NULL,1,NULL,1244,17,2),(697,'2023-09-26',NULL,1,NULL,1245,17,2),(698,'2023-09-26',NULL,1,NULL,1247,18,5),(699,'2023-09-26',NULL,1,NULL,1248,17,2),(700,'2023-09-26',NULL,1,NULL,1249,17,2),(701,'2023-09-26',NULL,1,NULL,1250,17,2),(702,'2023-09-26',NULL,1,NULL,1251,17,2),(703,'2023-09-26',NULL,1,NULL,1252,16,2),(704,'2023-09-26',NULL,1,NULL,1253,16,2),(705,'2023-09-26',NULL,1,NULL,1254,16,2),(706,'2023-09-26',NULL,1,NULL,1255,16,2),(707,'2023-09-26',NULL,1,NULL,1256,14,4),(708,'2023-09-26',NULL,1,NULL,1257,16,2),(709,'2023-09-26',NULL,1,NULL,1261,21,4),(710,'2023-09-26',NULL,1,NULL,1262,17,2),(711,'2023-09-26',NULL,1,NULL,1263,17,2),(712,'2023-09-26',NULL,1,NULL,1264,14,4),(713,'2023-09-26',NULL,1,NULL,1265,17,2),(714,'2023-09-26',NULL,1,NULL,1266,20,1),(715,'2023-09-26',NULL,1,NULL,1267,16,2),(716,'2023-09-26',NULL,1,NULL,1268,18,5),(717,'2023-09-26',NULL,1,NULL,1269,18,5),(718,'2023-09-26',NULL,1,NULL,1270,16,2),(719,'2023-09-26',NULL,1,NULL,1271,16,2),(720,'2023-09-26',NULL,1,NULL,1272,16,2),(721,'2023-09-26',NULL,1,NULL,1273,17,2),(722,'2023-09-26',NULL,1,NULL,1274,1,1),(723,'2023-09-26',NULL,1,NULL,1276,1,1),(724,'2023-09-26',NULL,1,NULL,1278,1,1),(725,'2023-09-26',NULL,1,NULL,1280,1,1),(726,'2023-09-26',NULL,1,NULL,1281,1,1),(727,'2023-09-26',NULL,1,NULL,1284,1,1),(728,'2023-09-26',NULL,1,NULL,1286,1,1),(729,'2023-09-26',NULL,1,NULL,1287,1,1),(730,'2023-09-26',NULL,1,NULL,1288,1,1),(731,'2023-09-26',NULL,1,NULL,1289,1,1),(732,'2023-09-26',NULL,1,NULL,1291,22,1),(733,'2023-09-26',NULL,1,NULL,1292,1,1),(734,'2023-09-26',NULL,1,NULL,1294,1,1),(735,'2023-09-26',NULL,1,NULL,1296,1,1),(736,'2023-09-26',NULL,1,NULL,1297,1,1);
/*!40000 ALTER TABLE `purchaseorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchaser`
--

DROP TABLE IF EXISTS `purchaser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchaser` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `purchaserDeptId` int NOT NULL,
  `purchaserActive` tinyint(1) NOT NULL,
  `purchaserDateInActive` date DEFAULT NULL,
  `purchaserDateCreated` date NOT NULL DEFAULT (curdate()),
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchaser`
--

LOCK TABLES `purchaser` WRITE;
/*!40000 ALTER TABLE `purchaser` DISABLE KEYS */;
INSERT INTO `purchaser` VALUES (1,'username',1,1,'2023-09-14','2023-09-19'),(2,'kevin',2,1,NULL,'2023-09-21'),(3,'AlainC',6,1,NULL,'2023-09-26'),(4,'ClaudiaD',1,1,NULL,'2023-09-26'),(5,'RonBergeron',3,1,NULL,'2023-09-26'),(6,'DavidB',3,1,NULL,'2023-09-26'),(7,'BenjaminB',3,1,NULL,'2023-09-26'),(8,'EricD',3,1,NULL,'2023-09-26'),(9,'GabrielI',3,1,NULL,'2023-09-26'),(10,'ChristineK',3,1,NULL,'2023-09-26'),(11,'LiseL',6,1,NULL,'2023-09-26'),(12,'MartinL',3,1,NULL,'2023-09-26'),(13,'StephaneR',4,1,NULL,'2023-09-26'),(14,'JuniorV',4,1,NULL,'2023-09-26'),(15,'NicholasC',4,1,NULL,'2023-09-26'),(16,'DanielS',2,1,NULL,'2023-09-26'),(17,'FrancisC',2,1,NULL,'2023-09-26'),(18,'SimonL',5,1,NULL,'2023-09-26'),(19,'BeryM',5,1,NULL,'2023-09-26'),(20,'JesseyGB',1,1,NULL,'2023-09-26'),(21,'SrobitailleR',4,1,NULL,'2023-09-26'),(22,'wgd000',1,1,NULL,'2023-09-26');
/*!40000 ALTER TABLE `purchaser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `id` int NOT NULL AUTO_INCREMENT,
  `supplierName` varchar(100) NOT NULL,
  `supplierProv` varchar(25) NOT NULL,
  `supplierActive` tinyint(1) NOT NULL,
  `supplierDateCreated` date NOT NULL DEFAULT (curdate()),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,'orbea','QC',1,'2023-09-21'),(2,'Bikes International','ON',1,'2023-09-21'),(3,'Giant Ottawa','QC',1,'2023-09-21'),(4,'\'Pieces D\'\'Auto Le Bon Choix\'','QC',1,'2023-05-12'),(5,'LKQ','QC',1,'2023-05-12'),(6,'AUTO VALUE','QC',1,'2023-05-12'),(7,'NAPA','QC',1,'2023-05-12'),(8,'LAR','QC',1,'2023-05-12'),(9,'TIRE LINK','ON',1,'2023-05-12'),(10,'STOX','QC',1,'2023-05-12'),(11,'FRISBY TIRE','ON',1,'2023-05-12'),(12,'DAI DIRECT AUTO IMPORT','ON',1,'2023-05-12'),(13,'TRANSBEC','ON',1,'2023-05-12'),(14,'CANTEEN','QC',1,'2023-05-12'),(15,'PARTS DEPARTMENT ','QC',1,'2023-06-01'),(16,'ECONO','QC',1,'2023-06-01'),(17,'TRANSIT','QC',1,'2023-06-01'),(18,'bon choix','QC',1,'2023-06-02'),(19,'Par-Brise Glass Guys','QC',1,'2023-06-02'),(20,'HERTZ ','QC',1,'2023-06-05'),(21,'SURGENOR OTTAWA','ON',1,'2023-06-06'),(22,'DILAWRI','QC',1,'2023-06-07'),(23,'Mercedes Gatineau','QC',1,'2023-06-07'),(24,'Royal Net','QC',1,'2023-06-08'),(25,'Marcor','ON',1,'2023-06-12'),(26,'Amazon','QC',1,'2023-06-13'),(27,'bg','QC',1,'2023-06-15'),(28,'ARMSTRONG MONITORING','ON',1,'2023-06-15'),(29,'PELCO','QC',1,'2023-06-15'),(30,'WHEEL SURGEON ','QC',1,'2023-06-20'),(31,'Mont-Bleu Ford','QC',1,'2023-06-20'),(32,'R.THIBERT','QC',1,'2023-06-20'),(33,'417 NISSAN','ON',1,'2023-06-20'),(34,'PROTEX','QC',1,'2023-06-21'),(35,'RH ELECTRIQUE','QC',1,'2023-06-21'),(36,'PJACQUE','QC',1,'2023-06-22'),(37,'MYERS OTTAWA CHEV - OLD - CADI.','ON',1,'2023-06-28'),(38,'BUCK DODGE','QC',1,'2023-07-10'),(39,'CHOKO','QC',1,'2023-07-11'),(40,'LACHAPELLE','QC',1,'2023-07-12'),(41,'SURG BARHAVEN','QC',1,'2023-07-13'),(42,'REMORQUAGE HENRI','QC',1,'2023-07-13'),(43,'RADIATEUR MONGEON','QC',1,'2023-07-17'),(44,'hydro pompe','QC',1,'2023-07-19');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `givenName` varchar(25) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(250) NOT NULL,
  `createDate` date NOT NULL DEFAULT (curdate()),
  `active` tinyint(1) NOT NULL DEFAULT (1),
  `dateInActive` date DEFAULT NULL,
  `securityLevel` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `password` (`password`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','admin','admin','$2b$12$QFMmOK4vmBjhXUcPYjUATe7bxuiFCmBUG2xvc8mpLqM8T8wr9piFm','2023-09-19',1,NULL,5),(2,'Kevin','Davis','kevin','$2b$12$QvBCaPauAgQsJEEhBv8lSusozWKYlDRr.SBjHLLqaWNUMZ7sH2c.W','2023-09-19',1,NULL,5),(3,'Jessey','Gromoll-Branchaud','JesseyGB','$2b$12$HOD9pOgXvghsww3n4q07..fvbpTjwCD2xW66BG.SMczbq6SOlZZgu','2023-09-19',1,NULL,5),(4,'ALAIN','CHARETTE','AlainC','$2b$12$yHpt2OwHMl9BQumcxa0jz.7kJ6ojSkMHT3snTr4weWgvRpUxkMJMK','2023-09-19',1,NULL,0),(5,'CLAUDIA','DUSHIME','ClaudiaD','$2b$12$PZp3wbXsiOjHfMTL9FAdZ.MX1n4vqYSxdmn//fvwp9ll5q7dpC32G','2023-09-19',1,NULL,0),(6,'RON','BERGERON','RonBergeron','$2b$12$X/UJEmoblfmu/BudPl7kJ.vkdKsBGPChrG1pClCvU..Qe2NUS7vOi','2023-09-19',1,NULL,0),(7,'DAVID','BOISSELY','DavidB','$2b$12$1sYOJLhZoQk7Voh9C6a4BOyEyIxFFF3rOdgpxpxzFtHCX9iVuuXBa','2023-09-19',1,NULL,0),(8,'ERIC','DAGENAIS','EricD','$2b$12$46ckdTUHTio2FlUw8hfJbeVDfYEOZgs2ymptNB/x5ZxR7I55r44Cy','2023-09-19',1,NULL,0),(9,'GABRIEL','IONETE','GabrielI','$2b$12$tgWNSbMqX/w2FolAdvZKcuFtZMbmiakb0nqT9ZPPtkJdYsPGlx7BG','2023-09-19',1,NULL,0),(10,'CHRISTINE','KNIGHT','ChristineK','$2b$12$IE0Jf1gudM2WVZQii4zw9OJNSljIc9RldaA3sgHXhxQ/nFzX2pDLe','2023-09-19',1,NULL,0),(11,'LISE','LEDUC','LiseL','$2b$12$rTXuZZJ.jf5DiEyKm8o51ed0VbyNYJObnfGPlL6iYrKlUF6I3MFDq','2023-09-19',1,NULL,0),(12,'STEPHANE','ROBITAILLE','StephaneR','$2b$12$KQiPeEF06tdvrBL6ybhGJe7tDoxFrzyLxQMtSxi5X6HFI6lfd3UzW','2023-09-19',1,NULL,0),(13,'JEAN-MARC (JUNIOR)','VALLIERES','JuniorV','$2b$12$aY6mhe5Xz7fNng.Uc0aHFuKvq2zDvfmjGTXrVEoTl547xERBJma1C','2023-09-19',1,NULL,0),(14,'NICHOLAS','CHARTRAND','NicholasC','$2b$12$lSBJK861h2ZwZ.zGpJK4Uurt8p3zcSJI/929r9RZZeuQABHmUdKNe','2023-09-19',1,NULL,0),(15,'DANIEL','SAVOIE','DanielS','$2b$12$t7KLgUs3kLyrHpykzn58ZODtAwJqYtYqKkZZBDRzgyfHsm3DDxQS6','2023-09-19',1,NULL,0),(16,'FRANCIS','CHARBONNEAU','FrancisC','$2b$12$GsgpFJxgcWyQxP.YNzCKG.L1QPTBKwaLIUy4lodM6zkymE6v18eo.','2023-09-19',1,NULL,0),(17,'SIMON','LANDREVILLE','SimonL','$2b$12$xpnG74u5kahNrHu6449wu.q3uBDz15VGbik0hoBed4zRCtzouOYj2','2023-09-19',1,NULL,0),(18,'BERY','MEDIKA','BeryM','$2b$12$zas2tthe5FQ8sY1EMnr4BOHwvthVpIK6B/t1A4e.8kj66gx2mT5WK','2023-09-19',1,NULL,0),(19,'MARTIN','LEGARE','MartinL','$2b$12$zbaagiBSdDyjAJ3CSacg1e0LzcL6SJBonli5W7l94.SagV1wNq6By','2023-09-19',1,NULL,0),(20,'BENJAMIN','BONIN','BenjaminB','$2b$12$HX9oxlh6Qdvprm/PQffl.eLSrrDI.0qTam0.sEfWuB9O5oyqB6Sz2','2023-09-19',1,NULL,0),(21,'wayne','davis','wgd000','$2b$12$YZdJpNbH2rqJB7aoVokghON5CNG0RmifB/trIH3qBsvtpXVm1ZhpS','2023-09-21',1,'2023-09-21',5),(22,'xxx','xxx','xxxxx','$2b$12$wLgpokEon235aMm4PSddMOb10joimb/iFiZmgW7UpjEVtEDfMAEQ.','2023-09-21',1,NULL,0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-08 10:03:22
