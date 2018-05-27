-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: mobile_parking
-- ------------------------------------------------------
-- Server version	5.7.22-0ubuntu0.16.04.1

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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kendaraans`
--

LOCK TABLES `kendaraans` WRITE;
/*!40000 ALTER TABLE `kendaraans` DISABLE KEYS */;
INSERT INTO `kendaraans` VALUES (1,1,'17234','xh','LLC','image/vnd.net-fpx','application/rtf','no','no','2018-03-19 07:01:51','2018-03-19 07:01:51'),(2,3,'L 1213 TU','mobil','daihatsu','test','test1','no','no','2018-03-19 07:01:51','2018-03-28 07:56:35'),(3,3,'59413','tn','LLC','application/vnd.oasis.opendocument.graphics','application/vnd.ms-artgalry','no','no','2018-03-19 07:01:51','2018-03-19 07:01:51'),(4,4,'14010-5137','et','PLC','text/vnd.fly','application/vnd.sun.xml.calc.template','no','no','2018-03-19 07:01:51','2018-03-19 07:01:51'),(5,5,'56070','yo','Ltd','application/vnd.seemail','text/vnd.wap.wml','no','no','2018-03-19 07:01:51','2018-03-19 07:01:51'),(6,6,'56778-8451','pa','Ltd','application/vnd.vcx','application/wspolicy+xml','no','no','2018-03-19 07:01:51','2018-03-19 07:01:51'),(7,7,'74005-2710','lo','LLC','application/vnd.ms-ims','video/webm','no','no','2018-03-19 07:01:51','2018-03-19 07:01:51'),(8,8,'18819-3328','ab','and Sons','application/vnd.fdsn.mseed','application/vnd.smaf','no','no','2018-03-19 07:01:51','2018-03-19 07:01:51'),(9,9,'45305','te','Group','application/reginfo+xml','application/vnd.dece.zip','no','no','2018-03-19 07:01:51','2018-03-19 07:01:51'),(10,10,'39364-0023','sg','and Sons','text/x-vcalendar','application/pdf','no','no','2018-03-19 07:01:51','2018-03-19 07:01:51'),(11,11,'L 1234 RU','Motor','Daihatsu','test','test','no','no','2018-03-21 07:54:30','2018-03-21 07:54:30'),(12,2,'L 1212 TU','mobil','daihatsu','test','test1','no','yes','2018-03-27 03:14:23','2018-03-27 03:14:23'),(13,3,'L 1213 TU','mobil','daihatsu','test','test1','no','yes','2018-03-27 03:49:01','2018-03-27 03:49:01'),(14,2,'L 1213 TI','mobil','daihatsu','test','test1','no','yes','2018-03-28 08:30:42','2018-03-28 08:30:42'),(15,11,'L 6125 QZ','Motor','Yamaha','null','null','no','no','2018-03-28 09:35:40','2018-03-28 09:35:40'),(16,2,'L 1213 OO','mobil','daihatsu','test','test1','no','yes','2018-03-28 09:46:27','2018-03-28 09:46:27'),(17,6,'L 1243 OO','mobil','daihatsu','test','test1','no','yes','2018-03-28 09:47:30','2018-03-28 09:47:30'),(18,6,'L 1244 OO','mobil','daihatsu','test','test1','no','yes','2018-03-28 09:47:53','2018-03-28 09:47:53');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2017_12_31_112149_create_tempats_table',1),(2,'2017_12_31_114257_create_penggunas_table',1),(3,'2017_12_31_114308_create_kendaraans_table',1),(4,'2017_12_31_114321_create_parkings_table',1),(5,'2018_02_13_155003_create_mitras_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mitras`
--

DROP TABLE IF EXISTS `mitras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mitras` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama_lengkap` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` text COLLATE utf8mb4_unicode_ci,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_wilayah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telp` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blocked_user` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL,
  `hak_akses` enum('admin','operator') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mitras`
--

LOCK TABLES `mitras` WRITE;
/*!40000 ALTER TABLE `mitras` DISABLE KEYS */;
INSERT INTO `mitras` VALUES (1,'Prof. Jarvis Hoeger','','crice','12345678','1','V','graham.frederick@gmail.com','no','operator','2018-03-19 07:01:51','2018-03-19 07:01:51'),(2,'Mr. Lew McLaughlin','','medhurst.leola','12345678','2','XVI','will.eldridge@kilback.biz','no','operator','2018-03-19 07:01:51','2018-03-19 07:01:51'),(3,'Vinnie Krajcik','','eunice.bashirian','12345678','3','III','bayer.ida@gmail.com','no','operator','2018-03-19 07:01:51','2018-03-19 07:01:51'),(4,'Miss Roberta Murray DVM','','romaguera.kadin','12345678','4','XXI','edmond25@yahoo.com','no','operator','2018-03-19 07:01:51','2018-03-19 07:01:51'),(5,'Camilla Lakin','','corwin.summer','12345678','5','XVII','yhodkiewicz@kilback.com','no','operator','2018-03-19 07:01:51','2018-03-19 07:01:51'),(6,'Judah Wunsch II','','fveum','12345678','6','I','osinski.rodrick@gmail.com','no','operator','2018-03-19 07:01:51','2018-03-19 07:01:51'),(7,'Enola Fadel','','doyle.titus','12345678','7','VII','roob.alyce@reichert.com','no','operator','2018-03-19 07:01:51','2018-03-19 07:01:51'),(8,'Mrs. Tessie Volkman MD','','aidan.schumm','12345678','8','XIV','parmstrong@howell.biz','no','operator','2018-03-19 07:01:51','2018-03-19 07:01:51'),(9,'Adell Hammes IV','','rodriguez.samantha','12345678','9','XIII','joany72@gmail.com','no','operator','2018-03-19 07:01:51','2018-03-19 07:01:51'),(10,'Prof. Myrtis Ziemann','','kelli.stracke','12345678','10','IV','dtorphy@cremin.com','no','operator','2018-03-19 07:01:51','2018-03-19 07:01:51');
/*!40000 ALTER TABLE `mitras` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parkings`
--

LOCK TABLES `parkings` WRITE;
/*!40000 ALTER TABLE `parkings` DISABLE KEYS */;
INSERT INTO `parkings` VALUES (1,2,2,42,'iVBORw0KGgoAAAANSUhEUgAAAPoAAAD6CAIAAAAHjs1qAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAD/0lEQVR4nO3dsW7bMBRA0Sbo/39y0K1TNNAgTdL3nNmwFfWWwxNBff38/PyBhu/dFwDvI3dC5E6I3AmROyFyJ0TuhMidELkTIndC5E6I3AmROyFyJ0TuhMidELkTIndC5E6I3AmROyFyJ0TuhMidELkTIndC5E6I3AmROyFyJ0TuhMidELkTIndC5E6I3AmROyFyJ0TuhMidkL8bf/v7+47/bKNvWn76u1Z/z6fez4nuuEEwhdwJkTshcidE7oTInRC5E7Jz7v5k11x2dG69a74+6pb7+QbHXRCsI3dC5E6I3AmROyFyJ0TuhJw4d38ya467ep49Oke/fS6+cf/6KKs7IXInRO6EyJ0QuRMid0LkTshNc/fT3LLfnf+s7oTInRC5EyJ3QuROiNwJkTsh5u6vmzVfH/28efzLrO6EyJ0QuRMid0LkTojcCZE7ITfN3U+bN68+p2X1+ein3c83sLoTIndC5E6I3AmROyFyJ0TuhJw4dz/wfZxDds3Rn9x+PydyIwiROyFyJ0TuhMidELkTIndCvoKbnncJvsf0NFZ3QuROiNwJkTshcidE7oTInZCdc/dd+7BvOddl9HpG/65dn9/I6k6I3AmROyFyJ0TuhMidELkTsvOcmVlz2V1z4tOeG4x+ftf59Dsf9ez6YXg/uRMid0LkTojcCZE7IXIn5KZzZmbt/571/avt2h8/+v03JbT7AuB95E6I3AmROyFyJ0TuhMidkJvm7qN2zYlPm0/v2t9/YFpWd0LkTojcCZE7IXInRO6EyJ2QnefMnHbey65zV0a/Z1RwX/sTqzshcidE7oTInRC5EyJ3QuROyCfvd1/ttHNpnqx+f+qs63mDO/7BYAq5EyJ3QuROiNwJkTshcidk59y9NrcetXouHnzkckdwMIXcCZE7IXInRO6EyJ0QuROy85yZJ6edg/7k9vNwZv3uRfN7qzshcidE7oTInRC5EyJ3QuROyIlz9yennXMyOoc+7Zz126//BVZ3QuROiNwJkTshcidE7oTInZCb5u63OG3ePPq8Ytb1H7gP3upOiNwJkTshcidE7oTInRC5E2LuPt/qfeG75uKnPU94gdWdELkTIndC5E6I3AmROyFyJ+Smufst893V58TvOmfmA1jdCZE7IXInRO6EyJ0QuRMid0JOnLvvem/oarP2r6/e777ret7gM8OCX8mdELkTIndC5E6I3AmROyFfBw5HYRGrOyFyJ0TuhMidELkTIndC5E6I3AmROyFyJ0TuhMidELkTIndC5E6I3AmROyFyJ0TuhMidELkTIndC5E6I3AmROyFyJ0TuhMidELkTIndC5E6I3AmROyFyJ0TuhMidELkTIndC5E6I3An5B255ErQ1fZaEAAAAAElFTkSuQmCC','2018-05-09 14:21:16','IN',NULL,NULL,'2018-03-26 10:33:23','2018-05-09 14:21:16'),(2,2,2,41,'iVBORw0KGgoAAAANSUhEUgAAAPoAAAD6CAIAAAAHjs1qAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAD+UlEQVR4nO3dUW7bMBBAwTro/Y9s9ACNgColTVJv5gCObLzyY7ugXu/3+xc0fK1+APgcuRMid0LkTojcCZE7IXInRO6EyJ0QuRMid0LkTojcCZE7IXInRO6EyJ0QuRMid0LkTojcCZE7IXInRO6EyJ0QuRMid0LkTojcCZE7IXInRO6EyJ0QuRMid0LkTojcCZE7IXInRO6E/F74t7++zvjHdvWm5bvPf/eNzVefP+p5Vln45uozfiAYQu6EyJ0QuRMid0LkTojcCVk5d7+yai47ao6+2/z7lN/zA7Z7IJhH7oTInRC5EyJ3QuROiNwJ2XHufmXUHHfUHHrUPvrpc/GF++t3Od0JkTshcidE7oTInRC5EyJ3Qk6au5/ulHn8gzndCZE7IXInRO6EyJ0QuRMid0LM3cebfe87P+Z0J0TuhMidELkTIndC5E6I3Ak5ae6+23x6t+e56/Tn/wGnOyFyJ0TuhMidELkTIndC5E7IjnP3Dd/H+a3Z97uPun/mlN/zA/wQhMidELkTIndC5E6I3AmROyGv4NLzbO6Z2ZbTnRC5EyJ3QuROiNwJkTshcidk5b777D3sUXvhs/fX79ptD/6g98U63QmROyFyJ0TuhMidELkTIndCVs7dZ8+JV+2dz56Lr5pbP2Av3+lOiNwJkTshcidE7oTInRC5E7Lj/e6rzN6/X7WnfvX5s/fyN/TYLwZ/kzshcidE7oTInRC5EyJ3Qp5wz8yo+fGqe2lGWbVPf9Cc/pgHhf8nd0LkTojcCZE7IXInRO6EPPm9qrPn+qPsdp/Mbs8zkNOdELkTIndC5E6I3AmROyFyJ+TJ98ysmpffdfqe/UFzeqc7IXInRO6EyJ0QuRMid0LkTsgT7pmZ7ZT70UfN43f7XgMd/wXg38mdELkTIndC5E6I3AmROyE77rvvdr/K6X939j76hnvtV5zuhMidELkTIndC5E6I3AmROyE7zt2vnHJf+yiz32/6gP31u3JfmDK5EyJ3QuROiNwJkTshcifkpLn7bk653/2uUfP7Df9/w+lOiNwJkTshcidE7oTInRC5E2Lu/jmj7lm/6+7nr3rOD3C6EyJ3QuROiNwJkTshcidE7oScNHc/aL47xG7vSd1tL/8HnO6EyJ0QuRMid0LkTojcCZE7ITvO3U+/d3zVXHn23x21N7/Q2WHBLXInRO6EyJ0QuRMid0LkTshrw+EoTOJ0J0TuhMidELkTIndC5E6I3AmROyFyJ0TuhMidELkTIndC5E6I3AmROyFyJ0TuhMidELkTIndC5E6I3AmROyFyJ0TuhMidELkTIndC5E6I3AmROyFyJ0TuhMidELkTIndC5E6I3AmROyF/AHoS6PPLSPapAAAAAElFTkSuQmCC','2018-05-09 14:28:18','IN',NULL,NULL,'2018-03-26 20:52:51','2018-05-09 14:28:18'),(3,11,11,0,'iVBORw0KGgoAAAANSUhEUgAAAPoAAAD6CAIAAAAHjs1qAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAEBElEQVR4nO3dUU4bMRRAUYK6/yWjLqCM6CA7tuee841Ckt7642G9eX19fX1Aw+fqNwDvI3dC5E6I3AmROyFyJ0TuhMidELkTIndC5E6I3AmROyFyJ0TuhMidELkTIndC5E6I3AmROyFyJ0TuhMidELkTIndC5E6I3AmROyFyJ0TuhMidELkTIndC5E6I3AmROyFyJ0TuhMidkD8Lf/fn5xn/2a6etHz1/u/+/Oz3s5uFT64+4wuCIeROiNwJkTshcidE7oTInZCVc/crq+ayd+fWs9/nqNc/5ft8g+3eEMwjd0LkTojcCZE7IXInRO6E7Dh3vzL7vvhdo+b0q+bTu32fb+B0J0TuhMidELkTIndC5E6I3Ak5ae7+VKP22PAjpzshcidE7oTInRC5EyJ3QuROiLn7eHfn4ubrb+N0J0TuhMidELkTIndC5E6I3Ak5ae6+2xx69t6Y2fP43b7PN3C6EyJ3QuROiNwJkTshcidE7oTsOHff8Hmc37o7Fx/183ed8n2+gS+CELkTIndC5E6I3AmROyFyJ+QVvPS8m1HPZ+VHTndC5E6I3AmROyFyJ0TuhMidkJVz99n3sGfvWd/tHvmozzvq9264t36vfzCYSu6EyJ0QuRMid0LkTojcCdlxz8yV2XPlu69f2yfzgHv2TndC5E6I3AmROyFyJ0TuhMidkJPm7qvuZ999nVXPPR11v3y3e/wDPfaDwb/kTojcCZE7IXInRO6EyJ2QlXP32fenZ993X7WXffZ9+gfca7/idCdE7oTInRC5EyJ3QuROiNwJecJ+d/Py3zloL/soTndC5E6I3AmROyFyJ0TuhMidkJVz99ONmt+fsh/mAXN6pzshcidE7oTInRC5EyJ3QuROyMo9M6fsEZ+9x/3KbntyHiD3gSmTOyFyJ0TuhMidELkTIndCdnyu6qp70rPn0LvdCw/O6Y//APD/5E6I3AmROyFyJ0TuhMidkB3n7ldW7YO/a/bemN32vWy4T+aK050QuRMid0LkTojcCZE7IXIn5KS5+25G/R1g9rx81OvvNu//Bac7IXInRO6EyJ0QuRMid0LkToi5+3ij5tOr5tmz98ov5HQnRO6EyJ0QuRMid0LkTojcCTlp7n7KfHf2PpxT9slseA/e6U6I3AmROyFyJ0TuhMidELkTsuPc/fTnd+7294G78+9R8/7dvocPpzspcidE7oTInRC5EyJ3QuROyGvD4ShM4nQnRO6EyJ0QuRMid0LkTojcCZE7IXInRO6EyJ0QuRMid0LkTojcCZE7IXInRO6EyJ0QuRMid0LkTojcCZE7IXInRO6EyJ0QuRMid0LkTojcCZE7IXInRO6EyJ0QuRMid0LkTojcCZE7IX8BwegDuvSKSWcAAAAASUVORK5CYII=','2018-05-09 14:35:04','IN',NULL,NULL,'2018-04-24 14:19:40','2018-05-09 14:35:04'),(4,11,15,0,NULL,NULL,'OTW',NULL,NULL,'2018-04-24 14:34:28','2018-04-24 14:34:28'),(5,11,11,0,NULL,NULL,'OTW',NULL,NULL,'2018-04-24 16:24:09','2018-04-24 16:24:09'),(6,11,11,0,NULL,NULL,'OTW',NULL,NULL,'2018-04-24 16:24:11','2018-04-24 16:24:11'),(7,11,11,0,NULL,NULL,'OTW',NULL,NULL,'2018-04-24 16:24:11','2018-04-24 16:24:11'),(8,11,11,0,NULL,NULL,'OTW',NULL,NULL,'2018-04-24 16:24:13','2018-04-24 16:24:13'),(9,11,11,0,NULL,NULL,'OTW',NULL,NULL,'2018-04-24 16:24:14','2018-04-24 16:24:14'),(10,11,11,0,NULL,NULL,'OTW',NULL,NULL,'2018-04-24 16:24:14','2018-04-24 16:24:14'),(11,11,11,0,NULL,NULL,'OTW',NULL,NULL,'2018-04-24 16:24:14','2018-04-24 16:24:14'),(12,11,11,0,NULL,NULL,'OTW',NULL,NULL,'2018-04-24 16:24:15','2018-04-24 16:24:15'),(13,11,11,0,NULL,NULL,'OTW',NULL,NULL,'2018-04-24 16:24:15','2018-04-24 16:24:15'),(14,11,11,0,NULL,NULL,'OTW',NULL,NULL,'2018-04-24 16:24:46','2018-04-24 16:24:46'),(15,11,11,0,NULL,NULL,'OTW',NULL,NULL,'2018-04-24 16:24:48','2018-04-24 16:24:48'),(16,11,11,0,NULL,NULL,'OTW',NULL,NULL,'2018-04-24 16:24:48','2018-04-24 16:24:48'),(17,11,11,0,NULL,NULL,'OTW',NULL,NULL,'2018-04-24 16:24:48','2018-04-24 16:24:48'),(18,11,11,0,NULL,NULL,'OTW',NULL,NULL,'2018-04-24 16:25:00','2018-04-24 16:25:00'),(19,11,11,0,NULL,NULL,'OTW',NULL,NULL,'2018-04-24 16:25:01','2018-04-24 16:25:01'),(20,11,11,0,NULL,NULL,'OTW',NULL,NULL,'2018-04-24 16:25:01','2018-04-24 16:25:01'),(21,11,11,0,NULL,NULL,'OTW',NULL,NULL,'2018-04-24 16:25:01','2018-04-24 16:25:01'),(22,11,11,0,NULL,NULL,'OTW',NULL,NULL,'2018-04-24 16:25:02','2018-04-24 16:25:02'),(23,11,11,0,NULL,NULL,'OTW',NULL,NULL,'2018-04-24 16:25:05','2018-04-24 16:25:05'),(24,11,11,0,NULL,NULL,'OTW',NULL,NULL,'2018-04-24 16:25:05','2018-04-24 16:25:05'),(25,11,11,0,NULL,NULL,'OTW',NULL,NULL,'2018-04-24 16:25:05','2018-04-24 16:25:05'),(26,11,11,0,NULL,NULL,'OTW',NULL,NULL,'2018-04-24 16:25:05','2018-04-24 16:25:05'),(27,11,11,0,NULL,NULL,'OTW',NULL,NULL,'2018-04-24 16:25:06','2018-04-24 16:25:06'),(28,11,11,0,NULL,NULL,'OTW',NULL,NULL,'2018-04-26 16:45:35','2018-04-26 16:45:35'),(29,11,11,0,NULL,NULL,'OTW',NULL,NULL,'2018-04-26 16:45:36','2018-04-26 16:45:36'),(30,11,11,0,NULL,NULL,'OTW',NULL,NULL,'2018-04-26 16:45:37','2018-04-26 16:45:37'),(31,11,11,0,NULL,NULL,'OTW',NULL,NULL,'2018-04-26 16:45:38','2018-04-26 16:45:38'),(32,11,15,0,NULL,NULL,'OTW',NULL,NULL,'2018-05-09 11:58:38','2018-05-09 11:58:38'),(33,11,15,0,NULL,NULL,'OTW',NULL,NULL,'2018-05-09 11:58:42','2018-05-09 11:58:42'),(34,11,15,0,NULL,NULL,'OTW',NULL,NULL,'2018-05-09 11:58:43','2018-05-09 11:58:43'),(35,11,15,0,NULL,NULL,'OTW',NULL,NULL,'2018-05-09 11:58:43','2018-05-09 11:58:43'),(36,11,15,0,NULL,NULL,'OTW',NULL,NULL,'2018-05-09 11:58:45','2018-05-09 11:58:45'),(37,11,15,0,NULL,NULL,'OTW',NULL,NULL,'2018-05-09 12:44:04','2018-05-09 12:44:04'),(38,11,15,0,NULL,NULL,'OTW',NULL,NULL,'2018-05-09 12:44:06','2018-05-09 12:44:06'),(39,11,15,0,NULL,NULL,'OTW',NULL,NULL,'2018-05-09 12:44:06','2018-05-09 12:44:06'),(40,11,15,0,NULL,NULL,'OTW',NULL,NULL,'2018-05-09 12:44:06','2018-05-09 12:44:06'),(41,11,15,0,NULL,NULL,'OTW',NULL,NULL,'2018-05-09 12:44:06','2018-05-09 12:44:06'),(42,11,15,0,NULL,NULL,'OTW',NULL,NULL,'2018-05-09 12:44:07','2018-05-09 12:44:07'),(43,11,15,0,NULL,NULL,'OTW',NULL,NULL,'2018-05-09 12:44:07','2018-05-09 12:44:07'),(44,11,15,0,NULL,NULL,'OTW',NULL,NULL,'2018-05-09 12:44:09','2018-05-09 12:44:09'),(45,11,15,0,NULL,NULL,'OTW',NULL,NULL,'2018-05-09 13:43:10','2018-05-09 13:43:10'),(46,11,11,54,NULL,NULL,'OTW',NULL,NULL,'2018-05-09 13:52:26','2018-05-09 13:52:26'),(47,11,11,54,NULL,NULL,'OTW',NULL,NULL,'2018-05-09 13:52:27','2018-05-09 13:52:27'),(48,11,11,54,NULL,NULL,'OTW',NULL,NULL,'2018-05-09 13:52:28','2018-05-09 13:52:28'),(49,11,11,54,NULL,NULL,'OTW',NULL,NULL,'2018-05-09 13:52:28','2018-05-09 13:52:28'),(50,11,11,54,NULL,NULL,'OTW',NULL,NULL,'2018-05-09 13:52:54','2018-05-09 13:52:54'),(51,11,11,54,NULL,NULL,'OTW',NULL,NULL,'2018-05-09 13:52:59','2018-05-09 13:52:59'),(52,11,11,54,NULL,NULL,'OTW',NULL,NULL,'2018-05-09 13:53:12','2018-05-09 13:53:12'),(53,11,15,0,NULL,NULL,'OTW',NULL,NULL,'2018-05-09 14:07:27','2018-05-09 14:07:27'),(54,11,15,0,NULL,NULL,'OTW',NULL,NULL,'2018-05-09 14:07:54','2018-05-09 14:07:54'),(55,11,15,0,NULL,NULL,'OTW',NULL,NULL,'2018-05-09 14:07:59','2018-05-09 14:07:59'),(56,11,11,0,NULL,NULL,'OTW',NULL,NULL,'2018-05-09 14:12:16','2018-05-09 14:12:16'),(57,11,11,0,NULL,NULL,'OTW',NULL,NULL,'2018-05-09 14:12:17','2018-05-09 14:12:17'),(58,11,11,0,NULL,NULL,'OTW',NULL,NULL,'2018-05-09 14:12:17','2018-05-09 14:12:17'),(59,11,11,0,NULL,NULL,'OTW',NULL,NULL,'2018-05-09 14:12:18','2018-05-09 14:12:18'),(60,11,11,0,NULL,NULL,'OTW',NULL,NULL,'2018-05-09 14:12:19','2018-05-09 14:12:19'),(61,11,11,0,NULL,NULL,'OTW',NULL,NULL,'2018-05-09 14:12:19','2018-05-09 14:12:19'),(62,11,11,0,NULL,NULL,'OTW',NULL,NULL,'2018-05-09 14:12:19','2018-05-09 14:12:19'),(63,11,11,0,NULL,NULL,'OTW',NULL,NULL,'2018-05-09 14:12:20','2018-05-09 14:12:20'),(64,11,11,0,NULL,NULL,'OTW',NULL,NULL,'2018-05-09 14:12:20','2018-05-09 14:12:20'),(65,11,11,0,NULL,NULL,'OTW',NULL,NULL,'2018-05-09 14:12:20','2018-05-09 14:12:20'),(66,11,11,0,NULL,NULL,'OTW',NULL,NULL,'2018-05-09 14:12:21','2018-05-09 14:12:21'),(67,11,11,0,NULL,NULL,'OTW',NULL,NULL,'2018-05-09 14:12:21','2018-05-09 14:12:21'),(68,11,11,0,NULL,NULL,'OTW',NULL,NULL,'2018-05-09 14:12:21','2018-05-09 14:12:21'),(69,11,11,0,NULL,NULL,'OTW',NULL,NULL,'2018-05-09 14:12:21','2018-05-09 14:12:21'),(70,11,11,0,NULL,NULL,'OTW',NULL,NULL,'2018-05-09 14:12:21','2018-05-09 14:12:21'),(71,11,11,0,NULL,NULL,'OTW',NULL,NULL,'2018-05-09 14:12:22','2018-05-09 14:12:22'),(72,11,11,0,NULL,NULL,'OTW',NULL,NULL,'2018-05-09 14:12:22','2018-05-09 14:12:22'),(73,11,11,0,NULL,NULL,'OTW',NULL,NULL,'2018-05-09 14:12:22','2018-05-09 14:12:22'),(74,11,11,0,NULL,NULL,'OTW',NULL,NULL,'2018-05-09 14:12:24','2018-05-09 14:12:24'),(75,11,11,0,NULL,NULL,'OTW',NULL,NULL,'2018-05-09 14:12:24','2018-05-09 14:12:24'),(76,11,11,0,NULL,NULL,'OTW',NULL,NULL,'2018-05-09 14:12:24','2018-05-09 14:12:24'),(77,11,11,0,NULL,NULL,'OTW',NULL,NULL,'2018-05-09 14:12:24','2018-05-09 14:12:24'),(78,11,11,0,NULL,NULL,'OTW',NULL,NULL,'2018-05-09 14:12:24','2018-05-09 14:12:24'),(79,11,11,0,NULL,NULL,'OTW',NULL,NULL,'2018-05-09 14:12:24','2018-05-09 14:12:24'),(80,11,11,0,NULL,NULL,'OTW',NULL,NULL,'2018-05-09 14:16:49','2018-05-09 14:16:49'),(81,11,11,0,NULL,NULL,'OTW',NULL,NULL,'2018-05-09 14:17:20','2018-05-09 14:17:20'),(82,11,11,0,NULL,NULL,'OTW',NULL,NULL,'2018-05-09 14:17:24','2018-05-09 14:17:24'),(83,11,11,0,NULL,NULL,'OTW',NULL,NULL,'2018-05-09 14:17:35','2018-05-09 14:17:35'),(84,2,2,41,NULL,NULL,'OTW',NULL,NULL,'2018-05-09 14:27:58','2018-05-09 14:27:58'),(85,11,11,0,NULL,NULL,'OTW',NULL,NULL,'2018-05-09 14:32:22','2018-05-09 14:32:22'),(86,11,11,0,NULL,NULL,'OTW',NULL,NULL,'2018-05-09 14:32:54','2018-05-09 14:32:54'),(87,11,11,0,NULL,NULL,'OTW',NULL,NULL,'2018-05-09 14:35:04','2018-05-09 14:35:04'),(88,11,15,0,NULL,NULL,'OTW',NULL,NULL,'2018-05-09 15:59:58','2018-05-09 15:59:58'),(89,11,11,0,NULL,NULL,'OTW',NULL,NULL,'2018-05-09 16:01:00','2018-05-09 16:01:00');
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `penggunas`
--

LOCK TABLES `penggunas` WRITE;
/*!40000 ALTER TABLE `penggunas` DISABLE KEYS */;
INSERT INTO `penggunas` VALUES (1,'Hiram Nitzsche',NULL,NULL,'nader.german@hotmail.com',NULL,'heller.einar','12345678',NULL,'no','no',NULL,'2018-03-19 07:01:51','2018-03-19 07:01:51'),(2,'Dr. Nyasia Hagenes DDS',NULL,NULL,'amosciski@runolfsson.com',NULL,'ptorphy','12345678',NULL,'no','no',NULL,'2018-03-19 07:01:51','2018-03-19 07:01:51'),(3,'Kellen Pagac',NULL,NULL,'stanton.wilderman@gmail.com',NULL,'malachi95','12345678',NULL,'no','no',NULL,'2018-03-19 07:01:51','2018-03-19 07:01:51'),(4,'Jaylen Walter',NULL,NULL,'afisher@will.com',NULL,'heaney.sally','12345678',NULL,'no','no',NULL,'2018-03-19 07:01:51','2018-03-19 07:01:51'),(5,'Mr. Thaddeus Towne Jr.',NULL,NULL,'xjohnston@yahoo.com',NULL,'orion80','12345678',NULL,'no','no',NULL,'2018-03-19 07:01:51','2018-03-19 07:01:51'),(6,'Prof. Kelton Stamm DVM',NULL,NULL,'genoveva.auer@yahoo.com',NULL,'josefina.lind','12345678',NULL,'no','no',NULL,'2018-03-19 07:01:51','2018-03-19 07:01:51'),(7,'Mr. Kellen Waelchi',NULL,NULL,'xledner@yahoo.com',NULL,'wunsch.ralph','12345678',NULL,'no','no',NULL,'2018-03-19 07:01:51','2018-03-19 07:01:51'),(8,'Eleanora Kunze',NULL,NULL,'lilian68@feil.com',NULL,'christop.swift','12345678',NULL,'no','no',NULL,'2018-03-19 07:01:51','2018-03-19 07:01:51'),(9,'Sigrid Weissnat V',NULL,NULL,'ardella25@bogan.net',NULL,'kcronin','12345678',NULL,'no','no',NULL,'2018-03-19 07:01:51','2018-03-19 07:01:51'),(10,'Leanna Wintheiser',NULL,NULL,'nluettgen@hotmail.com',NULL,'hahn.kyra','12345678',NULL,'no','no',NULL,'2018-03-19 07:01:51','2018-03-19 07:01:51'),(11,'Test nama','wonosari','089694467050','test@gmail.com',NULL,'test','123','$2y$10$w69FYGr18CBcj0JLvolO3.MUkq/QVH4abPGicXcyQ4eOYtr4zUH86','yes','no',NULL,'2018-03-21 07:39:27','2018-03-21 07:39:27'),(12,'abdullah','jl. jati asih',NULL,'abdullah@gmail.com',NULL,'abdullah','123','$2y$10$LRRHg/j5F.LSEwX.DvwCwOcn5Dpt7KfkBfq9Y6NCsU2wX/0mPQOaW','no','no',NULL,'2018-03-31 11:31:23','2018-03-31 11:31:23'),(13,'David wakanda','wonokromo','089694467050','david@david.com',NULL,'david','1234','$2y$10$ik5.92gvqcvufVP2EDbmC.NtQdistxqMbKnlrOIqsU3LK4zn5G982','no','no',NULL,'2018-05-16 05:34:55','2018-05-16 05:34:55'),(14,'David wakanda','wonokromo','089694467050','david@david.com',NULL,'david','1234',NULL,'no','no',NULL,'2018-05-16 05:35:16','2018-05-16 05:35:16'),(15,'David wakanda','wonokromo','089694467050','david@david.com',NULL,'david','1234',NULL,'no','no',NULL,'2018-05-16 05:35:48','2018-05-16 05:35:48'),(16,'David maulana','wonokromo','089694467050','david@david.com',NULL,'david','1234',NULL,'no','no',NULL,'2018-05-16 05:38:32','2018-05-16 05:38:32'),(17,'angga','wonokromo','089694467050','angga@angga.com',NULL,'angga1','123','$2y$10$MOh8Kn4P25sYfyoiod67geCHS0QcDZSOM.G5SXGiYMkjbTv4zWGNq','no','no',NULL,'2018-05-16 08:19:17','2018-05-16 08:19:17'),(18,'abdul','waru','082231284954','pradita0301',NULL,'abdul1','12345',NULL,'no','no',NULL,'2018-05-16 09:40:00','2018-05-16 09:40:00'),(19,'dimas','waru','082231284954','pradita0301@gmail.com',NULL,'dimas3','123','$2y$10$q7Y6lR9ylTto5HjnCtXRMO6nlmhjB7rFfo62gZSCEn8SA1CV.3nCe','no','no',NULL,'2018-05-18 04:30:34','2018-05-18 04:30:34'),(20,'dimas','waru','082231284954','pradita0301@gmail.com',NULL,'dimas2','123','$2y$10$I/PgmD6vqRM/ERqVizl0hOCyRt1HJQB9H3ZL/m9ruOl.Hq5Vg.1EK','no','no',NULL,'2018-05-18 04:55:27','2018-05-18 04:55:27'),(21,'dia','waru','082231284954','pradita0301@gmail.com',NULL,'dia12','1234','$2y$10$q8/A82onjfYB55zTyPulWe5h75gZczaBcGZGe4E1zhFlyGsM/vRyq','no','no',NULL,'2018-05-18 05:13:32','2018-05-18 05:13:32'),(22,'iwan','waru','082231284954','pradita0301@gmail.com',NULL,'iwan12','123','$2y$10$3KGLH0lr2To4Tb286fvfo.WHmKl.0nvCwBqdLadtusBG3KIozHNH6','no','no',NULL,'2018-05-18 05:46:04','2018-05-18 05:46:04');
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tempats`
--

LOCK TABLES `tempats` WRITE;
/*!40000 ALTER TABLE `tempats` DISABLE KEYS */;
INSERT INTO `tempats` VALUES (1,'Prof. Layla Prohaska DVM','-45.702608','-79.814064','Jamaalmouth','2018-03-19 07:01:51','2018-03-19 07:01:51'),(2,'Prince Lakin','89.397776','140.783987','North Neoma','2018-03-19 07:01:51','2018-03-19 07:01:51'),(3,'Dr. Eloisa Johnston','65.412271','146.811114','Schusterburgh','2018-03-19 07:01:51','2018-03-19 07:01:51'),(4,'Mrs. Emelia Champlin DVM','19.250951','-152.245136','Schustermouth','2018-03-19 07:01:51','2018-03-19 07:01:51'),(5,'William Jast','61.299226','-177.234725','South Eramouth','2018-03-19 07:01:51','2018-03-19 07:01:51'),(6,'Regan Runolfsdottir PhD','27.260232','-35.73541','Caterinaland','2018-03-19 07:01:51','2018-03-19 07:01:51'),(7,'Darwin Hauck Jr.','-17.244646','154.997131','Lake Nicholeville','2018-03-19 07:01:51','2018-03-19 07:01:51'),(8,'Prof. Waino Bauch','-4.953512','123.925449','Stuartfurt','2018-03-19 07:01:51','2018-03-19 07:01:51'),(9,'Clay Beier','60.163911','-55.926194','New Tyrique','2018-03-19 07:01:51','2018-03-19 07:01:51'),(10,'Osborne Kuhn','62.813171','166.785717','North Moseborough','2018-03-19 07:01:51','2018-03-19 07:01:51'),(11,'Camilla Parker','55.898282','176.319613','New Marcchester','2018-03-19 07:01:51','2018-03-19 07:01:51'),(12,'Jacynthe Shields','0.826915','-54.906347','Kosschester','2018-03-19 07:01:51','2018-03-19 07:01:51'),(13,'Vivienne Hauck','36.878723','-67.02271','South Britney','2018-03-19 07:01:51','2018-03-19 07:01:51'),(14,'Jessie Sauer','47.032303','51.070095','Dudleyburgh','2018-03-19 07:01:51','2018-03-19 07:01:51'),(15,'Mr. Evan Johns','-0.808286','175.82576','South Pansy','2018-03-19 07:01:51','2018-03-19 07:01:51'),(16,'Leopold Auer','-27.709626','-105.102535','North Andy','2018-03-19 07:01:51','2018-03-19 07:01:51'),(17,'Norwood Mueller','17.779019','20.84118','D\'angeloberg','2018-03-19 07:01:51','2018-03-19 07:01:51'),(18,'Mrs. Shemar Kris','80.870079','84.225239','South Fermin','2018-03-19 07:01:51','2018-03-19 07:01:51'),(19,'Nicola Boehm','-63.502145','39.379932','East Jacynthe','2018-03-19 07:01:51','2018-03-19 07:01:51'),(20,'Mallory Treutel II','-25.170856','150.468756','South Valentina','2018-03-19 07:01:51','2018-03-19 07:01:51'),(21,'Kathleen Bogan','58.030762','110.295204','Ebertfort','2018-03-19 07:01:51','2018-03-19 07:01:51'),(22,'Mr. Arnoldo Cruickshank Jr.','30.785042','164.202131','South Noemyville','2018-03-19 07:01:51','2018-03-19 07:01:51'),(23,'Oleta Friesen','84.923637','50.571168','Bednarhaven','2018-03-19 07:01:51','2018-03-19 07:01:51'),(24,'Cecile Mitchell','81.163259','33.081885','Johnpaulside','2018-03-19 07:01:51','2018-03-19 07:01:51'),(25,'Prof. Titus Connelly PhD','-23.902807','-49.65678','Lake Godfreystad','2018-03-19 07:01:51','2018-03-19 07:01:51'),(26,'Kathryn Sipes','-2.832146','25.660135','Langoshbury','2018-03-19 07:01:51','2018-03-19 07:01:51'),(27,'Timmothy Reichel','-6.696304','127.211083','Nevatown','2018-03-19 07:01:51','2018-03-19 07:01:51'),(28,'General Huel','24.101548','57.65825','Considinemouth','2018-03-19 07:01:51','2018-03-19 07:01:51'),(29,'Earnest Gislason','45.599664','-178.625031','Lorenaville','2018-03-19 07:01:51','2018-03-19 07:01:51'),(30,'Jayde Reynolds','-78.247047','70.420607','Kemmerfort','2018-03-19 07:01:51','2018-03-19 07:01:51'),(31,'Arden Gusikowski','-8.872027','134.614862','Hudsonton','2018-03-19 07:01:51','2018-03-19 07:01:51'),(32,'Kayleigh O\'Keefe I','-56.189455','-50.661216','Kylabury','2018-03-19 07:01:51','2018-03-19 07:01:51'),(33,'Jarred Yundt','23.130018','-66.653144','East Paulaland','2018-03-19 07:01:51','2018-03-19 07:01:51'),(34,'Abbey Turcotte I','-25.200925','74.836722','Sipeshaven','2018-03-19 07:01:51','2018-03-19 07:01:51'),(35,'Dr. Shana Prohaska','-81.00191','-66.301358','Lake Brandynburgh','2018-03-19 07:01:51','2018-03-19 07:01:51'),(36,'Prof. Angelo Legros','51.452962','-79.107513','Port Daveshire','2018-03-19 07:01:51','2018-03-19 07:01:51'),(37,'Garfield Cronin','-24.885163','-30.878786','South Ava','2018-03-19 07:01:51','2018-03-19 07:01:51'),(38,'Keely Haag','59.784633','-133.074575','Hickleview','2018-03-19 07:01:51','2018-03-19 07:01:51'),(39,'Shaylee Rutherford','-9.723975','66.429792','Andreanebury','2018-03-19 07:01:51','2018-03-19 07:01:51'),(40,'Carli O\'Hara PhD','41.233344','143.506755','Lake Werner','2018-03-19 07:01:51','2018-03-19 07:01:51'),(41,'Julie Brakus','-66.49547','5.305501','Bartonfort','2018-03-19 07:01:51','2018-03-19 07:01:51'),(42,'Nannie Moore III','74.692553','76.603608','Adamtown','2018-03-19 07:01:51','2018-03-19 07:01:51'),(43,'Quentin Hagenes','20.391883','0.065978','Eddborough','2018-03-19 07:01:51','2018-03-19 07:01:51'),(44,'Tristin Toy','6.456325','7.608833','Silasmouth','2018-03-19 07:01:51','2018-03-19 07:01:51'),(45,'Greta Kuphal','-25.484381','70.158009','Laneberg','2018-03-19 07:01:51','2018-03-19 07:01:51'),(46,'Dr. Shayne Ebert V','82.301439','-136.026337','Kassulkehaven','2018-03-19 07:01:51','2018-03-19 07:01:51'),(47,'Prof. Ariane Gerlach Sr.','29.716398','-36.085395','Janaside','2018-03-19 07:01:51','2018-03-19 07:01:51'),(48,'Tyrese Funk','28.252603','-119.253998','East Lindseytown','2018-03-19 07:01:51','2018-03-19 07:01:51'),(49,'Mylene Bailey','9.056935','-176.089394','New Dorabury','2018-03-19 07:01:51','2018-03-19 07:01:51'),(50,'Miss Kiera Marvin III','-7.677212','51.044229','East Lora','2018-03-19 07:01:51','2018-03-19 07:01:51'),(51,'Tunjungan plaza','-7.2630069','112.7398737','Mall terkenal di surabaya, tunjungan plaza surabaya','2018-03-31 06:53:53','2018-03-31 06:53:53');
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

-- Dump completed on 2018-05-20 15:39:44
