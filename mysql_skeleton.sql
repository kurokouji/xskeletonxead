CREATE DATABASE  IF NOT EXISTS `skeleton` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `skeleton`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: skeleton
-- ------------------------------------------------------
-- Server version	5.0.91-community-nt

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
-- Not dumping tablespaces as no INFORMATION_SCHEMA.FILES table on this server
--

--
-- Table structure for table `at010`
--

DROP TABLE IF EXISTS `at010`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `at010` (
  `CDBUMON` char(5) NOT NULL default '',
  `TXBUMON` char(30) NOT NULL default '',
  `NRKANRISYA` char(5) NOT NULL default '',
  `UPDCOUNTER` int(10) default '0',
  `TXTEKIYO` varchar(300) default '',
  PRIMARY KEY  (`CDBUMON`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `at010`
--

LOCK TABLES `at010` WRITE;
/*!40000 ALTER TABLE `at010` DISABLE KEYS */;
INSERT INTO `at010` VALUES ('00001','部門１','11111',0,''),('00002','部門２','11111',0,'');
/*!40000 ALTER TABLE `at010` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `at011`
--

DROP TABLE IF EXISTS `at011`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `at011` (
  `CDBUMON` char(5) NOT NULL default '',
  `DTHAKKOUNENGETSU` char(6) NOT NULL default '',
  `CDJYOUIBUMON` char(5) NOT NULL default '',
  `DTSIKKOUNENGETSU` char(6) NOT NULL default '',
  `UPDCOUNTER` int(10) default '0',
  PRIMARY KEY  (`CDBUMON`,`DTHAKKOUNENGETSU`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `at011`
--

LOCK TABLES `at011` WRITE;
/*!40000 ALTER TABLE `at011` DISABLE KEYS */;
INSERT INTO `at011` VALUES ('00002','201111','00001','999912',0);
/*!40000 ALTER TABLE `at011` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `at020`
--

DROP TABLE IF EXISTS `at020`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `at020` (
  `NRJYUGYOIN` char(5) NOT NULL default '',
  `TXKANA` char(30) NOT NULL default '',
  `TXKANJI` char(30) NOT NULL default '',
  `KBKOYOU` char(5) NOT NULL default '',
  `DTNYUSYA` date NOT NULL,
  `DTTAISYA` date default NULL,
  `UPDCOUNTER` int(10) default '0',
  PRIMARY KEY  (`NRJYUGYOIN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `at020`
--

LOCK TABLES `at020` WRITE;
/*!40000 ALTER TABLE `at020` DISABLE KEYS */;
INSERT INTO `at020` VALUES ('11111','ﾔﾏﾓﾄﾖｳｺ','山本陽子','01','2009-04-01',NULL,1);
/*!40000 ALTER TABLE `at020` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `at021`
--

DROP TABLE IF EXISTS `at021`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `at021` (
  `NRJYUGYOIN` char(5) NOT NULL default '',
  `DTSYOZOKUNENGETSU` char(6) NOT NULL default '',
  `CDBUMON` char(5) NOT NULL default '',
  `UPDCOUNTER` int(10) default '0',
  PRIMARY KEY  (`NRJYUGYOIN`,`DTSYOZOKUNENGETSU`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `at021`
--

LOCK TABLES `at021` WRITE;
/*!40000 ALTER TABLE `at021` DISABLE KEYS */;
/*!40000 ALTER TABLE `at021` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zt010`
--

DROP TABLE IF EXISTS `zt010`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zt010` (
  `IDVARIANT` char(20) NOT NULL default '',
  `TXNAME` char(10) NOT NULL default '',
  `TXTYPE` char(10) NOT NULL default '',
  `UPDCOUNTER` int(10) default '0',
  `TXVALUE` char(100) NOT NULL default '',
  `TXREMARKS` varchar(500) default '',
  PRIMARY KEY  (`IDVARIANT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zt010`
--

LOCK TABLES `zt010` WRITE;
/*!40000 ALTER TABLE `zt010` DISABLE KEYS */;
INSERT INTO `zt010` VALUES ('COMP_LOGO','会社ロゴ','STRING',0,'<CURRENT>dbimageLogo.PNG',''),('COMP_NAME','会社名','STRING',3,'ＸＸＸＸＸＸ社',''),('FIRST_MONTH','年度第１月','NUMBER',0,'4',''),('LAST_DAY','締め日','NUMBER',0,'25',''),('LOGIN_PERMITTED','ログイン認可フラグ','STRING',1,'T','');
/*!40000 ALTER TABLE `zt010` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zt020`
--

DROP TABLE IF EXISTS `zt020`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zt020` (
  `IDUSER` char(5) NOT NULL default '',
  `TXMENUS` char(30) NOT NULL default '',
  `UPDCOUNTER` int(10) default '0',
  `DTVALID` date NOT NULL,
  `DTEXPIRE` date NOT NULL,
  `TXNAME` char(30) NOT NULL default '',
  `NREMPLOYEE` char(5) default '',
  `TXPASSWORD` char(32) NOT NULL default '',
  `TXEMAIL` char(40) default '',
  PRIMARY KEY  (`IDUSER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zt020`
--

LOCK TABLES `zt020` WRITE;
/*!40000 ALTER TABLE `zt020` DISABLE KEYS */;
INSERT INTO `zt020` VALUES ('00000','ALL',3,'2000-01-01','9999-12-31','システム管理者','','f1b708bba17f1ce948dc979f4d7092bc',''),('11111','20',1,'2011-04-01','9999-12-31','山本洋子','11111','f1b708bba17f1ce948dc979f4d7092bc','');
/*!40000 ALTER TABLE `zt020` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zt030`
--

DROP TABLE IF EXISTS `zt030`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zt030` (
  `IDNUMBER` char(20) NOT NULL default '',
  `TXPREFIX` char(4) default '',
  `NRCURRENT` int(10) NOT NULL default '0',
  `FGWITHCD` char(1) NOT NULL default '',
  `UPDCOUNTER` int(10) default '0',
  `NRNUMDIGIT` decimal(2,0) NOT NULL default '0',
  PRIMARY KEY  (`IDNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zt030`
--

LOCK TABLES `zt030` WRITE;
/*!40000 ALTER TABLE `zt030` DISABLE KEYS */;
INSERT INTO `zt030` VALUES ('NRSESSION','',1,'F',35,7);
/*!40000 ALTER TABLE `zt030` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zt040`
--

DROP TABLE IF EXISTS `zt040`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zt040` (
  `IDUSERKUBUN` char(20) NOT NULL default '',
  `KBUSERKUBUN` char(5) NOT NULL default '',
  `TXUSERKUBUN` char(20) NOT NULL default '',
  `SQLIST` char(2) NOT NULL default '',
  `UPDCOUNTER` int(10) default '0',
  PRIMARY KEY  (`IDUSERKUBUN`,`KBUSERKUBUN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zt040`
--

LOCK TABLES `zt040` WRITE;
/*!40000 ALTER TABLE `zt040` DISABLE KEYS */;
INSERT INTO `zt040` VALUES ('KBCURRENCY','EUR','EUR','01',1),('KBCURRENCY','USD','USD','02',1),('KBFLAG1','F','対象外','02',0),('KBFLAG1','T','対象','01',0),('KBKOYOU','01','正社員','01',0),('KBKOYOU','02','パート','02',0);
/*!40000 ALTER TABLE `zt040` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zt050`
--

DROP TABLE IF EXISTS `zt050`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zt050` (
  `NRSESSION` char(7) NOT NULL default '',
  `DTLOGIN` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `DTLOGOUT` timestamp NULL default NULL,
  `IDUSER` char(5) NOT NULL default '',
  `KBSESSIONSTATUS` char(3) NOT NULL default '',
  `UPDCOUNTER` int(10) default '0',
  `TXIPADDRESS` char(70) NOT NULL default '',
  PRIMARY KEY  (`NRSESSION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zt050`
--

LOCK TABLES `zt050` WRITE;
/*!40000 ALTER TABLE `zt050` DISABLE KEYS */;
/*!40000 ALTER TABLE `zt050` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zt051`
--

DROP TABLE IF EXISTS `zt051`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zt051` (
  `NRSESSION` char(7) NOT NULL default '',
  `SQPROGRAM` smallint(5) NOT NULL default '0',
  `IDMENU` char(2) NOT NULL default '',
  `IDPROGRAM` char(10) NOT NULL default '',
  `TXPROGRAM` char(30) NOT NULL default '',
  `DTSTART` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `DTEND` timestamp NULL default NULL,
  `KBPROGRAMSTATUS` char(2) default '',
  `TXERRORLOG` mediumtext,
  `UPDCOUNTER` int(10) default '0',
  PRIMARY KEY  (`NRSESSION`,`SQPROGRAM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zt051`
--

LOCK TABLES `zt051` WRITE;
/*!40000 ALTER TABLE `zt051` DISABLE KEYS */;
/*!40000 ALTER TABLE `zt051` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zt060`
--

DROP TABLE IF EXISTS `zt060`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zt060` (
  `DTSTART` date NOT NULL,
  `VLTAXRATE` decimal(3,2) NOT NULL default '0.00',
  `UPDCOUNTER` int(10) default '0',
  PRIMARY KEY  (`DTSTART`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zt060`
--

LOCK TABLES `zt060` WRITE;
/*!40000 ALTER TABLE `zt060` DISABLE KEYS */;
INSERT INTO `zt060` VALUES ('1988-04-01',0.03,0),('1997-04-01',0.05,0);
/*!40000 ALTER TABLE `zt060` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zt070`
--

DROP TABLE IF EXISTS `zt070`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zt070` (
  `DTOFF` date NOT NULL,
  `TXOFF` char(20) default '',
  `UPDCOUNTER` int(10) default '0',
  PRIMARY KEY  (`DTOFF`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zt070`
--

LOCK TABLES `zt070` WRITE;
/*!40000 ALTER TABLE `zt070` DISABLE KEYS */;
/*!40000 ALTER TABLE `zt070` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zt080`
--

DROP TABLE IF EXISTS `zt080`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zt080` (
  `KBCURRENCY` char(5) NOT NULL default '',
  `DTNEND` smallint(5) NOT NULL default '0',
  `VLRATEB` decimal(10,3) NOT NULL default '0.000',
  `VLRATEM` decimal(10,3) NOT NULL default '0.000',
  `VLRATES` decimal(10,3) NOT NULL default '0.000',
  `UPDCOUNTER` int(10) default '0',
  PRIMARY KEY  (`KBCURRENCY`,`DTNEND`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zt080`
--

LOCK TABLES `zt080` WRITE;
/*!40000 ALTER TABLE `zt080` DISABLE KEYS */;
INSERT INTO `zt080` VALUES ('EUR',2010,110.000,110.000,110.000,0),('EUR',2011,110.000,110.000,110.000,0),('USD',2010,85.000,85.000,85.000,0),('USD',2011,80.000,80.000,80.000,0);
/*!40000 ALTER TABLE `zt080` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zt081`
--

DROP TABLE IF EXISTS `zt081`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zt081` (
  `KBCURRENCY` char(5) NOT NULL default '',
  `DTNEND` smallint(5) NOT NULL default '0',
  `DTMSEQ` smallint(5) NOT NULL default '0',
  `VLRATEB` decimal(10,3) NOT NULL default '0.000',
  `VLRATEM` decimal(10,3) NOT NULL default '0.000',
  `VLRATES` decimal(10,3) NOT NULL default '0.000',
  `UPDCOUNTER` int(10) default '0',
  PRIMARY KEY  (`KBCURRENCY`,`DTNEND`,`DTMSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zt081`
--

LOCK TABLES `zt081` WRITE;
/*!40000 ALTER TABLE `zt081` DISABLE KEYS */;
/*!40000 ALTER TABLE `zt081` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-30 12:45:11
