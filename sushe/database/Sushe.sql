-- MySQL dump 10.11
--
-- Host: localhost    Database: sushe
-- ------------------------------------------------------
-- Server version	5.0.96-community-nt

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `Admin_ID` int(11) NOT NULL auto_increment,
  `Admin_Username` varchar(20) default NULL,
  `Admin_Password` varchar(20) default NULL,
  `Admin_Name` varchar(20) default NULL,
  `Admin_Sex` varchar(10) default NULL,
  `Admin_Tel` varchar(20) default NULL,
  PRIMARY KEY  (`Admin_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'czf','123','admin','',NULL);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `building`
--

DROP TABLE IF EXISTS `building`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `building` (
  `Building_ID` int(11) NOT NULL auto_increment,
  `Building_Name` varchar(50) default NULL,
  `Building_Introduction` varchar(1000) default NULL,
  PRIMARY KEY  (`Building_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `building`
--

LOCK TABLES `building` WRITE;
/*!40000 ALTER TABLE `building` DISABLE KEYS */;
INSERT INTO `building` VALUES (5,'25栋','这里是25栋'),(6,'10栋','这里是桂林理工大学十栋'),(7,'1栋','这里是桂林理工大学一栋');
/*!40000 ALTER TABLE `building` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `domitory`
--

DROP TABLE IF EXISTS `domitory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `domitory` (
  `Domitory_ID` int(11) NOT NULL auto_increment,
  `Domitory_BuildingID` int(11) default NULL,
  `Domitory_Name` varchar(20) default NULL,
  `Domitory_Type` varchar(20) default NULL,
  `Domitory_Number` varchar(20) default NULL,
  `Domitory_Tel` varchar(20) default NULL,
  PRIMARY KEY  (`Domitory_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domitory`
--

LOCK TABLES `domitory` WRITE;
/*!40000 ALTER TABLE `domitory` DISABLE KEYS */;
INSERT INTO `domitory` VALUES (4,5,'513','一般寝室','6','123456789'),(5,6,'110','一般寝室','6','123');
/*!40000 ALTER TABLE `domitory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log` (
  `Log_ID` int(11) NOT NULL auto_increment,
  `Log_StudentID` int(11) default NULL,
  `Log_TeacherID` int(11) default NULL,
  `Log_Date` varchar(50) default NULL,
  `Log_Remark` varchar(1000) default NULL,
  PRIMARY KEY  (`Log_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES (1,6,2,'2016-07-04','夜不归宿，还出去喝酒，还上大保健，简直污的不像样');
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `out1`
--

DROP TABLE IF EXISTS `out1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `out1` (
  `Out_ID` int(11) NOT NULL auto_increment,
  `Out_StudentID` varchar(11) default NULL,
  `Out_Date` varchar(50) default NULL,
  `Out_Remark` varchar(1000) default NULL,
  PRIMARY KEY  (`Out_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `out1`
--

LOCK TABLES `out1` WRITE;
/*!40000 ALTER TABLE `out1` DISABLE KEYS */;
INSERT INTO `out1` VALUES (1,'5','2016-7-4','此学生已经毕业了。');
/*!40000 ALTER TABLE `out1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `Student_ID` int(11) NOT NULL auto_increment,
  `Student_DomitoryID` int(11) default NULL,
  `Student_Username` varchar(20) default NULL,
  `Student_Password` varchar(20) default NULL,
  `Student_Name` varchar(20) default NULL,
  `Student_Sex` varchar(20) default NULL,
  `Student_Class` varchar(20) default NULL,
  `Student_State` varchar(20) default NULL,
  PRIMARY KEY  (`Student_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (4,5,'1','123','罗欣','女','软件一班','入住'),(5,5,'2','123','徐伟康','男','计本一班','迁出'),(6,4,'3','123','林显钦','女','软件二班','入住'),(7,0,'4','123','卢艳玲','女','建工一班','未入住');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb`
--

DROP TABLE IF EXISTS `tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb` (
  `TB_ID` int(11) NOT NULL auto_increment,
  `TB_TeacherID` int(11) default NULL,
  `TB_BuildingID` int(11) default NULL,
  PRIMARY KEY  (`TB_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb`
--

LOCK TABLES `tb` WRITE;
/*!40000 ALTER TABLE `tb` DISABLE KEYS */;
INSERT INTO `tb` VALUES (3,2,5),(4,3,6);
/*!40000 ALTER TABLE `tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teacher` (
  `Teacher_ID` int(11) NOT NULL auto_increment,
  `Teacher_Username` varchar(20) default NULL,
  `Teacher_Password` varchar(20) default NULL,
  `Teacher_Name` varchar(20) default NULL,
  `Teacher_Sex` varchar(10) default NULL,
  `Teacher_Tel` varchar(20) default NULL,
  PRIMARY KEY  (`Teacher_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES (2,'001','123','李星宇','男','1234567'),(3,'002','123','钟思林','女','12345678'),(4,'003','123','刘懿辉','女','12344'),(5,'004','123','小蔡舍管','男','13677726666');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-07-06 15:48:44
