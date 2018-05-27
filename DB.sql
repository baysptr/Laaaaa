-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: mobile_parking
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
-- Table structure for table `kendaraans`
--

DROP TABLE IF EXISTS `kendaraans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kendaraans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_pengguna` int(11) NOT NULL,
  `nopol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kendaraan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `merk_kendaraan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_depan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_belakang` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `disabled_key` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL,
  `blocked_kendaraan` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kendaraans`
--

LOCK TABLES `kendaraans` WRITE;
/*!40000 ALTER TABLE `kendaraans` DISABLE KEYS */;
INSERT INTO `kendaraans` VALUES (1,1,'15357','ie','Inc','image/ief','application/vnd.sun.xml.impress.template','no','yes','2018-01-01 16:34:19','2018-01-02 05:13:34'),(2,2,'79082','co','PLC','application/vnd.rig.cryptonote','model/x3d+xml','no','no','2018-01-01 16:34:20','2018-01-01 16:34:20'),(3,3,'43048-6130','th','Inc','audio/x-matroska','application/vnd.openxmlformats-officedocument.presentationml.slide','no','no','2018-01-01 16:34:20','2018-01-01 16:34:20'),(4,4,'76635-1332','sv','Group','application/x-zmachine','application/xml-dtd','no','no','2018-01-01 16:34:20','2018-01-01 16:34:20'),(5,5,'40873','tl','Ltd','application/vnd.dvb.service','application/vnd.xfdl','no','no','2018-01-01 16:34:20','2018-01-01 16:34:20'),(6,6,'55169-4989','mr','and Sons','application/x-stuffitx','image/vnd.fastbidsheet','no','no','2018-01-01 16:34:20','2018-01-01 16:34:20'),(7,7,'75722','gd','and Sons','application/vnd.kde.kspread','image/vnd.fujixerox.edmics-rlc','no','no','2018-01-01 16:34:20','2018-01-01 16:34:20'),(8,8,'58320-9137','oj','Group','application/xslt+xml','application/vnd.oasis.opendocument.formula','no','no','2018-01-01 16:34:20','2018-01-01 16:34:20'),(9,9,'22291','ms','and Sons','application/java-archive','application/vnd.oasis.opendocument.formula-template','no','no','2018-01-01 16:34:20','2018-01-01 16:34:20'),(10,10,'32052','bo','PLC','video/quicktime','audio/midi','no','no','2018-01-01 16:34:20','2018-01-01 16:34:20');
/*!40000 ALTER TABLE `kendaraans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (17,'2017_12_31_112149_create_tempats_table',1),(18,'2017_12_31_114257_create_penggunas_table',1),(19,'2017_12_31_114308_create_kendaraans_table',1),(20,'2017_12_31_114321_create_parkings_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parkings`
--

DROP TABLE IF EXISTS `parkings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parkings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_pengguna` int(11) NOT NULL,
  `id_kendaraan` int(11) NOT NULL,
  `id_tempat` int(11) NOT NULL,
  `barcode` text COLLATE utf8mb4_unicode_ci,
  `waktu_masuk` datetime DEFAULT NULL,
  `status` enum('OTW','IN','OUT') COLLATE utf8mb4_unicode_ci NOT NULL,
  `waktu_keluar` datetime DEFAULT NULL,
  `estimasi_waktu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parkings`
--

LOCK TABLES `parkings` WRITE;
/*!40000 ALTER TABLE `parkings` DISABLE KEYS */;
/*!40000 ALTER TABLE `parkings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `penggunas`
--

DROP TABLE IF EXISTS `penggunas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `penggunas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama_lengkap` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_telp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci,
  `verifikasi_pengguna` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL,
  `disabled_key` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `penggunas`
--

LOCK TABLES `penggunas` WRITE;
/*!40000 ALTER TABLE `penggunas` DISABLE KEYS */;
INSERT INTO `penggunas` VALUES (1,'Sammie Stamm PhD',NULL,NULL,'ardella.gislason@yahoo.com',NULL,'uebert','12345678','$2y$10$pUDJ7tQmmlwN.b1vlnhSbuz/kcXiG6ZtQQC4qNasz7IAt6APpaYbu','no','no',NULL,'2018-01-01 16:34:19','2018-01-01 16:34:19'),(2,'Miss Reyna White PhD',NULL,NULL,'julie.gorczany@hotmail.com',NULL,'ardella89','12345678',NULL,'no','no',NULL,'2018-01-01 16:34:19','2018-01-01 16:34:19'),(3,'Ms. Nyah Lang Jr.',NULL,NULL,'wweissnat@gmail.com',NULL,'maye98','12345678',NULL,'no','no',NULL,'2018-01-01 16:34:19','2018-01-01 16:34:19'),(4,'Tristin Orn DDS',NULL,NULL,'yvonne.eichmann@hotmail.com',NULL,'nayeli42','12345678',NULL,'no','no',NULL,'2018-01-01 16:34:19','2018-01-01 16:34:19'),(5,'Vicente Bernier V',NULL,NULL,'ntowne@hotmail.com',NULL,'jazlyn18','12345678',NULL,'no','no',NULL,'2018-01-01 16:34:19','2018-01-01 16:34:19'),(6,'Lonnie Klocko',NULL,NULL,'kiana.swift@moen.com',NULL,'novella.klocko','12345678',NULL,'no','no',NULL,'2018-01-01 16:34:19','2018-01-01 16:34:19'),(7,'Elliot Kulas',NULL,NULL,'gratke@beier.com',NULL,'gayle36','12345678',NULL,'no','no',NULL,'2018-01-01 16:34:19','2018-01-01 16:34:19'),(8,'Mr. Virgil Walsh',NULL,NULL,'prohaska.reyes@kilback.info',NULL,'onie.okon','12345678',NULL,'no','no',NULL,'2018-01-01 16:34:19','2018-01-01 16:34:19'),(9,'Francis Konopelski',NULL,NULL,'mokeefe@hotmail.com',NULL,'stanford.boyer','12345678',NULL,'no','no',NULL,'2018-01-01 16:34:19','2018-01-01 16:34:19'),(10,'Turner Ondricka IV',NULL,NULL,'cummings.duane@runte.com',NULL,'rodger04','12345678','','no','no',NULL,'2018-01-01 16:34:19','2018-01-01 16:34:19');
/*!40000 ALTER TABLE `penggunas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tempats`
--

DROP TABLE IF EXISTS `tempats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tempats` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama_tempat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longtitude` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tempats`
--

LOCK TABLES `tempats` WRITE;
/*!40000 ALTER TABLE `tempats` DISABLE KEYS */;
INSERT INTO `tempats` VALUES (1,'Monserrate Robel','1.002964','-133.282081','Lenoramouth','2018-01-01 16:34:17','2018-01-01 16:34:17'),(2,'Meda Fisher I','-37.425458','-112.904153','West Jacinthe','2018-01-01 16:34:17','2018-01-01 16:34:17'),(3,'Asha Casper','-85.947339','100.24995','Dooleyburgh','2018-01-01 16:34:17','2018-01-01 16:34:17'),(4,'Eliza Satterfield','-12.276279','157.480081','East Laynemouth','2018-01-01 16:34:17','2018-01-01 16:34:17'),(5,'Wendy Roberts','42.961208','-167.244917','Lydaberg','2018-01-01 16:34:17','2018-01-01 16:34:17'),(6,'Gaylord Gislason DVM','80.440826','154.848688','East Abigale','2018-01-01 16:34:17','2018-01-01 16:34:17'),(7,'Edwardo Schamberger','78.143046','-38.469329','Port Rosemary','2018-01-01 16:34:17','2018-01-01 16:34:17'),(8,'Riley Treutel','-0.068654','-67.863055','New Levichester','2018-01-01 16:34:17','2018-01-01 16:34:17'),(9,'Ms. Meredith Reinger IV','53.910757','86.859014','Guidotown','2018-01-01 16:34:17','2018-01-01 16:34:17'),(10,'Prof. Art Torp','-22.35392','-179.246414','Predovicton','2018-01-01 16:34:17','2018-01-01 16:34:17'),(11,'Prof. Kristopher Kirlin','59.080742','-154.689454','Faheyville','2018-01-01 16:34:17','2018-01-01 16:34:17'),(12,'Mr. Lon Abbott DVM','60.580205','-39.359344','Waldoshire','2018-01-01 16:34:17','2018-01-01 16:34:17'),(13,'Audreanne Dooley','-54.168485','123.910373','Mafaldastad','2018-01-01 16:34:17','2018-01-01 16:34:17'),(14,'Barney Johnston','79.59104','-52.628497','Port Gardnertown','2018-01-01 16:34:17','2018-01-01 16:34:17'),(15,'Prof. Jaylin Abbott','-75.356885','9.288976','West Weldonbury','2018-01-01 16:34:17','2018-01-01 16:34:17'),(16,'Vincent Rempel I','-41.923968','-108.471184','North Jeannemouth','2018-01-01 16:34:17','2018-01-01 16:34:17'),(17,'Prof. Arnold Mante','-49.816175','-20.16277','Eugeniafurt','2018-01-01 16:34:17','2018-01-01 16:34:17'),(18,'Sigurd Durgan','71.344935','-83.577058','O\'Haraborough','2018-01-01 16:34:17','2018-01-01 16:34:17'),(19,'Mrs. Kelli O\'Hara PhD','-17.86585','159.360676','Wildermanmouth','2018-01-01 16:34:17','2018-01-01 16:34:17'),(20,'Kailyn Kub DVM','18.302844','-119.892176','New Jana','2018-01-01 16:34:18','2018-01-01 16:34:18'),(21,'Mr. Roger Swaniawski MD','6.456605','-128.982107','Rosalynside','2018-01-01 16:34:18','2018-01-01 16:34:18'),(22,'Emery Kertzmann','71.314649','-165.022945','Kiehnshire','2018-01-01 16:34:18','2018-01-01 16:34:18'),(23,'Dr. Anabelle Romaguera','-65.784498','170.845665','North Beth','2018-01-01 16:34:18','2018-01-01 16:34:18'),(24,'Prof. Julia Homenick','-60.797187','-21.24782','New Markus','2018-01-01 16:34:18','2018-01-01 16:34:18'),(25,'Prince Schneider','85.160663','67.042397','East Orlandfort','2018-01-01 16:34:18','2018-01-01 16:34:18'),(26,'Mrs. Rafaela Kihn','59.901347','40.959338','Port Isidro','2018-01-01 16:34:18','2018-01-01 16:34:18'),(27,'Prof. Dedrick Hansen','76.678761','29.477397','Lake Erniehaven','2018-01-01 16:34:18','2018-01-01 16:34:18'),(28,'Dr. Myah Brekke Sr.','81.230704','-61.802351','Stantonfort','2018-01-01 16:34:18','2018-01-01 16:34:18'),(29,'Mr. Marcelo Batz DDS','-54.49144','31.854976','Kesslerville','2018-01-01 16:34:18','2018-01-01 16:34:18'),(30,'Ms. Itzel Bogisich','67.903621','-102.202728','Kleinstad','2018-01-01 16:34:18','2018-01-01 16:34:18'),(31,'Freida Beier','-78.934864','34.748189','Eichmannside','2018-01-01 16:34:18','2018-01-01 16:34:18'),(32,'Mr. Kennedy Gutkowski DVM','-55.025215','-37.636695','McCluremouth','2018-01-01 16:34:18','2018-01-01 16:34:18'),(33,'Kyleigh Gislason','79.032468','38.464664','Altenwerthville','2018-01-01 16:34:18','2018-01-01 16:34:18'),(34,'Payton Gorczany','-29.264726','-49.671586','Lake Leonelshire','2018-01-01 16:34:18','2018-01-01 16:34:18'),(35,'Dr. Sylvester Ward V','5.490352','-2.085844','East Luna','2018-01-01 16:34:18','2018-01-01 16:34:18'),(36,'Morton Kautzer','55.637079','49.09194','Millerside','2018-01-01 16:34:18','2018-01-01 16:34:18'),(37,'Demetrius Harvey PhD','-36.021605','-21.612587','Blanchemouth','2018-01-01 16:34:18','2018-01-01 16:34:18'),(38,'Vladimir Greenfelder','-35.414827','-138.631442','West Desiree','2018-01-01 16:34:18','2018-01-01 16:34:18'),(39,'Heber Pouros','38.807167','88.89999','Friesenstad','2018-01-01 16:34:18','2018-01-01 16:34:18'),(40,'Elnora Fadel','57.320995','-72.430305','Trystanberg','2018-01-01 16:34:18','2018-01-01 16:34:18'),(41,'Johathan Wehner','-49.834092','122.701408','Patrickton','2018-01-01 16:34:18','2018-01-01 16:34:18'),(42,'Miller Gutmann','-17.263378','85.048482','Ortizland','2018-01-01 16:34:18','2018-01-01 16:34:18'),(43,'Lupe Moore Jr.','47.331514','120.874823','Port Marcellusborough','2018-01-01 16:34:18','2018-01-01 16:34:18'),(44,'Molly Beier','76.305542','-133.658346','Naderberg','2018-01-01 16:34:18','2018-01-01 16:34:18'),(45,'Leopoldo Kuhlman','68.34582','-7.654164','Eltontown','2018-01-01 16:34:18','2018-01-01 16:34:18'),(46,'Jailyn Rath','74.281549','78.775478','Port Isabellaborough','2018-01-01 16:34:18','2018-01-01 16:34:18'),(47,'Miss Della Streich IV','-20.903686','0.302086','South Dameonfort','2018-01-01 16:34:19','2018-01-01 16:34:19'),(48,'Rubye Carroll','-82.607342','2.873797','Glovermouth','2018-01-01 16:34:19','2018-01-01 16:34:19'),(49,'Dean Heller','-33.094411','73.02902','New Hubert','2018-01-01 16:34:19','2018-01-01 16:34:19'),(50,'Mrs. Shyann Botsford','67.056312','141.111768','East Vince','2018-01-01 16:34:19','2018-01-01 16:34:19');
/*!40000 ALTER TABLE `tempats` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-03 16:44:36
