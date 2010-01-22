-- MySQL dump 10.13  Distrib 5.1.36, for suse-linux-gnu (x86_64)
--
-- Host: localhost    Database: zp_characters
-- ------------------------------------------------------
-- Server version	5.1.36-log

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
-- Table structure for table `character_queststatus`
--

DROP TABLE IF EXISTS `character_queststatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_queststatus` (
  `guid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  `status` int(11) unsigned NOT NULL DEFAULT '0',
  `rewarded` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `explored` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `timer` bigint(20) unsigned NOT NULL DEFAULT '0',
  `mobcount1` int(11) unsigned NOT NULL DEFAULT '0',
  `mobcount2` int(11) unsigned NOT NULL DEFAULT '0',
  `mobcount3` int(11) unsigned NOT NULL DEFAULT '0',
  `mobcount4` int(11) unsigned NOT NULL DEFAULT '0',
  `itemcount1` int(11) unsigned NOT NULL DEFAULT '0',
  `itemcount2` int(11) unsigned NOT NULL DEFAULT '0',
  `itemcount3` int(11) unsigned NOT NULL DEFAULT '0',
  `itemcount4` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`quest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='Player System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_queststatus`
--

LOCK TABLES `character_queststatus` WRITE;
/*!40000 ALTER TABLE `character_queststatus` DISABLE KEYS */;
INSERT INTO `character_queststatus` VALUES
(1,27,1,1,0,1264196243,0,0,0,0,0,0,0,0),
(1,28,0,0,0,1264196243,0,0,0,0,0,0,0,0),
(1,29,1,1,1,1264197905,0,0,0,0,0,0,0,0),
(1,272,1,1,0,1264198227,0,0,0,0,0,0,0,0),
(1,456,1,1,0,1264194624,7,4,0,0,0,0,0,0),
(1,457,0,0,0,1264197147,0,0,0,0,0,0,0,0),
(1,3120,1,1,0,1264197147,0,0,0,0,0,0,0,0),
(1,5061,1,1,0,1264198227,0,0,0,0,0,0,0,0),
(1,5842,1,1,0,1264194624,0,0,0,0,0,0,0,0),
(1,5892,0,0,0,1264198227,0,0,0,0,0,0,0,0),
(1,5921,1,1,0,1264196243,0,0,0,0,0,0,0,0),
(1,5924,1,1,0,1264196243,0,0,0,0,0,0,0,0),
(1,5929,1,1,1,1264198227,0,0,0,0,0,0,0,0),
(1,5931,1,1,0,1264198227,0,0,0,0,0,0,0,0),
(1,6001,1,1,0,1264198227,1,0,0,0,0,0,0,0),
(1,6121,1,1,0,1264196243,0,0,0,0,0,0,0,0),
(1,6122,1,1,0,1264198227,0,0,0,0,0,0,0,0),
(1,6123,1,1,0,1264198227,0,0,0,0,0,0,0,0),
(1,6124,3,0,0,1264198227,0,0,0,0,0,0,0,0),
(1,6982,0,0,0,1264198227,0,0,0,0,0,0,0,0),
(1,7027,0,0,0,1264198227,0,0,0,0,0,0,0,0),
(1,7223,0,0,0,1264198227,0,0,0,0,0,0,0,0),
(1,7301,0,0,0,1264198227,0,0,0,0,0,0,0,0),
(1,7367,0,0,0,1264198227,0,0,0,0,0,0,0,0),
(1,8375,0,0,0,1264196243,0,0,0,0,0,0,0,0),
(1,9063,1,0,0,1264196243,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `character_queststatus` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
