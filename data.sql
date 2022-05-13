-- MySQL dump 10.16  Distrib 10.1.26-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	10.1.26-MariaDB-0+deb9u1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` varchar(0) DEFAULT NULL,
  `name` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` varchar(0) DEFAULT NULL,
  `group_id` varchar(0) DEFAULT NULL,
  `permission_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` tinyint(4) DEFAULT NULL,
  `content_type_id` tinyint(4) DEFAULT NULL,
  `codename` varchar(18) DEFAULT NULL,
  `name` varchar(23) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,1,'add_logentry','Can add log entry'),(2,1,'change_logentry','Can change log entry'),(3,1,'delete_logentry','Can delete log entry'),(4,1,'view_logentry','Can view log entry'),(5,2,'add_permission','Can add permission'),(6,2,'change_permission','Can change permission'),(7,2,'delete_permission','Can delete permission'),(8,2,'view_permission','Can view permission'),(9,3,'add_group','Can add group'),(10,3,'change_group','Can change group'),(11,3,'delete_group','Can delete group'),(12,3,'view_group','Can view group'),(13,4,'add_user','Can add user'),(14,4,'change_user','Can change user'),(15,4,'delete_user','Can delete user'),(16,4,'view_user','Can view user'),(17,5,'add_contenttype','Can add content type'),(18,5,'change_contenttype','Can change content type'),(19,5,'delete_contenttype','Can delete content type'),(20,5,'view_contenttype','Can view content type'),(21,6,'add_session','Can add session'),(22,6,'change_session','Can change session'),(23,6,'delete_session','Can delete session'),(24,6,'view_session','Can view session'),(25,7,'add_buku','Can add buku'),(26,7,'change_buku','Can change buku'),(27,7,'delete_buku','Can delete buku'),(28,7,'view_buku','Can view buku'),(29,8,'add_kelompok','Can add kelompok'),(30,8,'change_kelompok','Can change kelompok'),(31,8,'delete_kelompok','Can delete kelompok'),(32,8,'view_kelompok','Can view kelompok');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` tinyint(4) DEFAULT NULL,
  `password` varchar(78) DEFAULT NULL,
  `last_login` varchar(10) DEFAULT NULL,
  `is_superuser` tinyint(4) DEFAULT NULL,
  `username` varchar(8) DEFAULT NULL,
  `first_name` varchar(0) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `is_staff` tinyint(4) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  `date_joined` varchar(10) DEFAULT NULL,
  `last_name` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$150000$IDoXYaWBxAKN$scfzc5Q1QGneaLtsKRxZ2RGC22VE/RJG/T6DN1c7TP8=','2020-06-23',1,'zulx','','zulx@zulhilmi.id',1,1,'2020-05-13',''),(8,'pbkdf2_sha256$150000$54QQDBdCqrk2$uvVK+jYEspCoUgkoDzlZxyPkw9bGhKmf4uPmQ9fLIPw=','2020-07-16',1,'admin','','admin@sekolah.sch.id',1,1,'2020-05-13',''),(11,'pbkdf2_sha256$150000$SooZqLlIFPi6$P7HQ1uuHBU+HE8rTRpj9xbK/+y055HeuvDOhSHZJNqY=','2020-06-23',1,'hilmi','','hilmi@zulhilmi.id',1,1,'2020-06-16',''),(18,'pbkdf2_sha256$150000$0bU752ukSYq8$x17i0bEB0ZX0pM1zYiE6uefQpC7H319YBTHkRsCzEIg=','2020-07-07',0,'zulhilmi','','',0,1,'2020-06-24',''),(19,'pbkdf2_sha256$150000$arq1sfuSqq0F$+uvel/s/gEMN430AkK0f2fjNKlZPGlfuoPrQdPmTe9I=','',0,'zul','','',0,1,'2020-06-24','');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` varchar(0) DEFAULT NULL,
  `user_id` varchar(0) DEFAULT NULL,
  `group_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` varchar(0) DEFAULT NULL,
  `user_id` varchar(0) DEFAULT NULL,
  `permission_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` tinyint(4) DEFAULT NULL,
  `action_time` varchar(10) DEFAULT NULL,
  `object_id` tinyint(4) DEFAULT NULL,
  `object_repr` varchar(40) DEFAULT NULL,
  `change_message` varchar(36) DEFAULT NULL,
  `content_type_id` tinyint(4) DEFAULT NULL,
  `user_id` tinyint(4) DEFAULT NULL,
  `action_flag` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (14,'2020-05-13',2,'admin','',4,1,3),(26,'2020-05-13',3,'admin','',4,1,3),(27,'2020-05-13',4,'admin','',4,1,3),(50,'2020-05-13',5,'admin','',4,1,3),(51,'2020-05-13',6,'admin','',4,1,3),(53,'2020-05-13',7,'Produktif','[{\"added\": {}}]',8,8,1),(54,'2020-05-13',8,'Normatif','[{\"added\": {}}]',8,8,1),(55,'2020-05-13',9,'Adaptif','[{\"added\": {}}]',8,8,1),(56,'2020-05-13',17,'Pemrograman Berorientasi Objek','[{\"added\": {}}]',7,8,1),(57,'2020-05-13',18,'Belajar Django 2.2','[{\"added\": {}}]',7,8,1),(58,'2020-05-13',19,'Bahasa Indonesia','[{\"added\": {}}]',7,8,1),(59,'2020-05-13',20,'Pendidikan Agama Islam','[{\"added\": {}}]',7,8,1),(60,'2020-05-13',20,'Pendidikan Agama Islam','[]',7,8,2),(61,'2020-05-13',21,'Pendidikan Pancasila dan Kewarganegaraan','[{\"added\": {}}]',7,8,1),(62,'2020-05-13',22,'Matematika','[{\"added\": {}}]',7,8,1),(63,'2020-05-13',23,'Bahasa Inggris','[{\"added\": {}}]',7,8,1),(64,'2020-05-13',24,'Pemrograman Web dan Perangkat Bergerak','[{\"added\": {}}]',7,8,1),(65,'2020-05-31',25,'Belajar Bootstrap 4','',7,8,3),(66,'2020-05-31',26,'Belajar Bootstrap 4','',7,8,3),(67,'2020-05-31',27,'Belajar Bootstrap 4','',7,8,3),(68,'2020-06-07',17,'Pemrograman Berorientasi Objek','[{\"changed\": {\"fields\": [\"judul\"]}}]',7,8,2),(69,'2020-06-07',17,'Pemrograman Berorientasi Objek','[{\"changed\": {\"fields\": [\"judul\"]}}]',7,8,2),(70,'2020-06-13',31,'Belajar Django 2.2.12','',7,8,3),(71,'2020-06-13',17,'Pemrograman Berorientasi Objek','[{\"changed\": {\"fields\": [\"judul\"]}}]',7,8,2),(72,'2020-06-16',9,'hilmi','',4,1,3),(73,'2020-06-16',10,'hilmi','',4,1,3),(74,'2020-06-23',12,'zulhilmi','',4,8,3),(75,'2020-06-24',13,'zulhilmi','',4,8,3),(76,'2020-06-24',14,'irene','',4,8,3),(77,'2020-06-24',16,'zul','',4,8,3),(78,'2020-06-24',15,'zulhilmi','',4,8,3),(79,'2020-06-24',17,'zulhilmi','',4,8,3);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` tinyint(4) DEFAULT NULL,
  `app_label` varchar(12) DEFAULT NULL,
  `model` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'perpustakaan','buku'),(8,'perpustakaan','kelompok'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` tinyint(4) DEFAULT NULL,
  `app` varchar(12) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `applied` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-05-10'),(2,'auth','0001_initial','2020-05-10'),(3,'admin','0001_initial','2020-05-10'),(4,'admin','0002_logentry_remove_auto_add','2020-05-10'),(5,'admin','0003_logentry_add_action_flag_choices','2020-05-10'),(6,'contenttypes','0002_remove_content_type_name','2020-05-10'),(7,'auth','0002_alter_permission_name_max_length','2020-05-10'),(8,'auth','0003_alter_user_email_max_length','2020-05-10'),(9,'auth','0004_alter_user_username_opts','2020-05-10'),(10,'auth','0005_alter_user_last_login_null','2020-05-10'),(11,'auth','0006_require_contenttypes_0002','2020-05-10'),(12,'auth','0007_alter_validators_add_error_messages','2020-05-10'),(13,'auth','0008_alter_user_username_max_length','2020-05-10'),(14,'auth','0009_alter_user_last_name_max_length','2020-05-10'),(15,'auth','0010_alter_group_name_max_length','2020-05-10'),(16,'auth','0011_update_proxy_permissions','2020-05-10'),(17,'sessions','0001_initial','2020-05-10'),(18,'perpustakaan','0001_initial','2020-05-11'),(19,'perpustakaan','0002_delete_buku','2020-05-11'),(20,'perpustakaan','0003_buku','2020-05-11'),(21,'perpustakaan','0004_buku_no_isbn','2020-05-11'),(22,'perpustakaan','0005_delete_buku','2020-05-11'),(23,'perpustakaan','0006_buku','2020-05-11'),(24,'perpustakaan','0007_delete_buku','2020-05-11'),(25,'perpustakaan','0008_buku','2020-05-11'),(26,'perpustakaan','0009_buku_jumlah','2020-05-11'),(27,'perpustakaan','0010_delete_buku','2020-05-11'),(28,'perpustakaan','0011_buku','2020-05-11'),(29,'perpustakaan','0012_buku_jumlah','2020-05-11'),(30,'perpustakaan','0013_auto_20200512_0754','2020-05-12'),(31,'perpustakaan','0014_auto_20200628_1537','2020-06-28'),(32,'perpustakaan','0015_auto_20200628_1538','2020-06-28'),(33,'perpustakaan','0016_auto_20200628_1551','2020-06-28'),(34,'perpustakaan','0017_auto_20200628_1603','2020-06-28'),(35,'perpustakaan','0018_auto_20200628_1654','2020-06-28'),(36,'perpustakaan','0019_auto_20200628_1702','2020-06-28'),(37,'perpustakaan','0020_auto_20200628_1714','2020-06-28'),(38,'perpustakaan','0021_auto_20200628_1721','2020-06-28'),(39,'perpustakaan','0022_auto_20200628_1727','2020-06-28'),(40,'perpustakaan','0023_auto_20200628_1729','2020-06-28'),(41,'perpustakaan','0024_auto_20200628_1733','2020-06-28'),(42,'perpustakaan','0025_auto_20200628_1737','2020-06-28'),(43,'perpustakaan','0026_auto_20200628_1744','2020-06-28');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(32) DEFAULT NULL,
  `session_data` varchar(252) DEFAULT NULL,
  `expire_date` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('zn44z9fytb90maf7thfzw0jwwgoc60e1','Y2QyNTBmMjY3YzRlNGRkOTdlMzM4NDQxZmIyNzYwMWMwMGVmNzExNzp7Il9hdXRoX3VzZXJfaWQiOiI4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiNzZjODAwZTU4OGI2NjU3NmY3YzQyNjc4M2I0MGQyZjljYjcxYzQ1In0=','2020-05-27'),('pggbpdc6h0ozgnryfmciu2tchxwrgyck','Y2QyNTBmMjY3YzRlNGRkOTdlMzM4NDQxZmIyNzYwMWMwMGVmNzExNzp7Il9hdXRoX3VzZXJfaWQiOiI4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiNzZjODAwZTU4OGI2NjU3NmY3YzQyNjc4M2I0MGQyZjljYjcxYzQ1In0=','2020-06-14'),('l09sfy66k2ikao4rmjywrdzc4s02vclj','Y2QyNTBmMjY3YzRlNGRkOTdlMzM4NDQxZmIyNzYwMWMwMGVmNzExNzp7Il9hdXRoX3VzZXJfaWQiOiI4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiNzZjODAwZTU4OGI2NjU3NmY3YzQyNjc4M2I0MGQyZjljYjcxYzQ1In0=','2020-06-21'),('6zng4mdsxp136o59qtg8lagfwp3zjoh5','Y2QyNTBmMjY3YzRlNGRkOTdlMzM4NDQxZmIyNzYwMWMwMGVmNzExNzp7Il9hdXRoX3VzZXJfaWQiOiI4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiNzZjODAwZTU4OGI2NjU3NmY3YzQyNjc4M2I0MGQyZjljYjcxYzQ1In0=','2020-07-08'),('0jdymgk06nib9x8ccjlx20hequ04sms5','Y2QyNTBmMjY3YzRlNGRkOTdlMzM4NDQxZmIyNzYwMWMwMGVmNzExNzp7Il9hdXRoX3VzZXJfaWQiOiI4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiNzZjODAwZTU4OGI2NjU3NmY3YzQyNjc4M2I0MGQyZjljYjcxYzQ1In0=','2020-07-11'),('guqfitcgy7784g93p7hd660qdjf9p1vq','Y2QyNTBmMjY3YzRlNGRkOTdlMzM4NDQxZmIyNzYwMWMwMGVmNzExNzp7Il9hdXRoX3VzZXJfaWQiOiI4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiNzZjODAwZTU4OGI2NjU3NmY3YzQyNjc4M2I0MGQyZjljYjcxYzQ1In0=','2020-07-12'),('q5m3qhrqv6kcezngydiepb3txr0v8gi8','Y2QyNTBmMjY3YzRlNGRkOTdlMzM4NDQxZmIyNzYwMWMwMGVmNzExNzp7Il9hdXRoX3VzZXJfaWQiOiI4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiNzZjODAwZTU4OGI2NjU3NmY3YzQyNjc4M2I0MGQyZjljYjcxYzQ1In0=','2020-07-12'),('2jc0om3bmw3lta6qpa1rs7gv9mxrva3b','Y2QyNTBmMjY3YzRlNGRkOTdlMzM4NDQxZmIyNzYwMWMwMGVmNzExNzp7Il9hdXRoX3VzZXJfaWQiOiI4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiNzZjODAwZTU4OGI2NjU3NmY3YzQyNjc4M2I0MGQyZjljYjcxYzQ1In0=','2020-07-13');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perpustakaan_buku`
--

DROP TABLE IF EXISTS `perpustakaan_buku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perpustakaan_buku` (
  `id` tinyint(4) DEFAULT NULL,
  `judul` varchar(40) DEFAULT NULL,
  `penulis` varchar(8) DEFAULT NULL,
  `penerbit` varchar(11) DEFAULT NULL,
  `jumlah` smallint(6) DEFAULT NULL,
  `kelompok_id_id` tinyint(4) DEFAULT NULL,
  `cover` varchar(17) DEFAULT NULL,
  `tanggal` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perpustakaan_buku`
--

LOCK TABLES `perpustakaan_buku` WRITE;
/*!40000 ALTER TABLE `perpustakaan_buku` DISABLE KEYS */;
INSERT INTO `perpustakaan_buku` VALUES (20,'Pendidikan Agama Islam','Tim MGMP','Kemendikbud',99,8,'cover/pai.jpg','2020-06-28'),(21,'Pendidikan Pancasila dan Kewarganegaraan','Tim MGMP','Kemendikbud',100,8,'cover/pkn.jpg','2020-06-28'),(23,'Bahasa Inggris','Tim MGMP','Kemendikbud',70,9,'cover/inggris.png','2020-06-28'),(24,'Pemrograman Web dan Perangkat Bergerak','Tim MGMP','Kemendikbud',100,7,'cover/pwpb.jpg','2020-06-28'),(25,'Pemrograman Berorientasi Objek','Tim MGMP','Kemendikbud',100,7,'cover/pbo.png','2020-06-28');
/*!40000 ALTER TABLE `perpustakaan_buku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perpustakaan_kelompok`
--

DROP TABLE IF EXISTS `perpustakaan_kelompok`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perpustakaan_kelompok` (
  `id` tinyint(4) DEFAULT NULL,
  `nama` varchar(9) DEFAULT NULL,
  `keterangan` varchar(23) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perpustakaan_kelompok`
--

LOCK TABLES `perpustakaan_kelompok` WRITE;
/*!40000 ALTER TABLE `perpustakaan_kelompok` DISABLE KEYS */;
INSERT INTO `perpustakaan_kelompok` VALUES (7,'Produktif','kumpulan buku produktif'),(8,'Normatif','kumpulan buku normatif'),(9,'Adaptif','kumpulan buku adaptif');
/*!40000 ALTER TABLE `perpustakaan_kelompok` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sqlite_sequence`
--

DROP TABLE IF EXISTS `sqlite_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sqlite_sequence` (
  `name` varchar(21) DEFAULT NULL,
  `seq` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sqlite_sequence`
--

LOCK TABLES `sqlite_sequence` WRITE;
/*!40000 ALTER TABLE `sqlite_sequence` DISABLE KEYS */;
INSERT INTO `sqlite_sequence` VALUES ('django_migrations',43),('django_admin_log',79),('django_content_type',8),('auth_permission',32),('auth_user',19),('auth_group',0),('perpustakaan_kelompok',9),('perpustakaan_buku',26);
/*!40000 ALTER TABLE `sqlite_sequence` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-22 15:20:28
