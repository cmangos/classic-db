-- MySQL dump 10.13  Distrib 5.1.44, for redhat-linux-gnu (x86_64)
--
-- Host: localhost    Database: zp_world
-- ------------------------------------------------------
-- Server version	5.1.44

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
-- Table structure for table `locales_quest`
--

DROP TABLE IF EXISTS `locales_quest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locales_quest` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Title_loc1` text COLLATE utf8_unicode_ci,
  `Title_loc2` text COLLATE utf8_unicode_ci,
  `Title_loc3` text COLLATE utf8_unicode_ci,
  `Title_loc4` text COLLATE utf8_unicode_ci,
  `Title_loc5` text COLLATE utf8_unicode_ci,
  `Title_loc6` text COLLATE utf8_unicode_ci,
  `Title_loc7` text COLLATE utf8_unicode_ci,
  `Title_loc8` text COLLATE utf8_unicode_ci,
  `Details_loc1` text COLLATE utf8_unicode_ci,
  `Details_loc2` text COLLATE utf8_unicode_ci,
  `Details_loc3` text COLLATE utf8_unicode_ci,
  `Details_loc4` text COLLATE utf8_unicode_ci,
  `Details_loc5` text COLLATE utf8_unicode_ci,
  `Details_loc6` text COLLATE utf8_unicode_ci,
  `Details_loc7` text COLLATE utf8_unicode_ci,
  `Details_loc8` text COLLATE utf8_unicode_ci,
  `Objectives_loc1` text COLLATE utf8_unicode_ci,
  `Objectives_loc2` text COLLATE utf8_unicode_ci,
  `Objectives_loc3` text COLLATE utf8_unicode_ci,
  `Objectives_loc4` text COLLATE utf8_unicode_ci,
  `Objectives_loc5` text COLLATE utf8_unicode_ci,
  `Objectives_loc6` text COLLATE utf8_unicode_ci,
  `Objectives_loc7` text COLLATE utf8_unicode_ci,
  `Objectives_loc8` text COLLATE utf8_unicode_ci,
  `OfferRewardText_loc1` text COLLATE utf8_unicode_ci,
  `OfferRewardText_loc2` text COLLATE utf8_unicode_ci,
  `OfferRewardText_loc3` text COLLATE utf8_unicode_ci,
  `OfferRewardText_loc4` text COLLATE utf8_unicode_ci,
  `OfferRewardText_loc5` text COLLATE utf8_unicode_ci,
  `OfferRewardText_loc6` text COLLATE utf8_unicode_ci,
  `OfferRewardText_loc7` text COLLATE utf8_unicode_ci,
  `OfferRewardText_loc8` text COLLATE utf8_unicode_ci,
  `RequestItemsText_loc1` text COLLATE utf8_unicode_ci,
  `RequestItemsText_loc2` text COLLATE utf8_unicode_ci,
  `RequestItemsText_loc3` text COLLATE utf8_unicode_ci,
  `RequestItemsText_loc4` text COLLATE utf8_unicode_ci,
  `RequestItemsText_loc5` text COLLATE utf8_unicode_ci,
  `RequestItemsText_loc6` text COLLATE utf8_unicode_ci,
  `RequestItemsText_loc7` text COLLATE utf8_unicode_ci,
  `RequestItemsText_loc8` text COLLATE utf8_unicode_ci,
  `EndText_loc1` text COLLATE utf8_unicode_ci,
  `EndText_loc2` text COLLATE utf8_unicode_ci,
  `EndText_loc3` text COLLATE utf8_unicode_ci,
  `EndText_loc4` text COLLATE utf8_unicode_ci,
  `EndText_loc5` text COLLATE utf8_unicode_ci,
  `EndText_loc6` text COLLATE utf8_unicode_ci,
  `EndText_loc7` text COLLATE utf8_unicode_ci,
  `EndText_loc8` text COLLATE utf8_unicode_ci,
  `ObjectiveText1_loc1` text COLLATE utf8_unicode_ci,
  `ObjectiveText1_loc2` text COLLATE utf8_unicode_ci,
  `ObjectiveText1_loc3` text COLLATE utf8_unicode_ci,
  `ObjectiveText1_loc4` text COLLATE utf8_unicode_ci,
  `ObjectiveText1_loc5` text COLLATE utf8_unicode_ci,
  `ObjectiveText1_loc6` text COLLATE utf8_unicode_ci,
  `ObjectiveText1_loc7` text COLLATE utf8_unicode_ci,
  `ObjectiveText1_loc8` text COLLATE utf8_unicode_ci,
  `ObjectiveText2_loc1` text COLLATE utf8_unicode_ci,
  `ObjectiveText2_loc2` text COLLATE utf8_unicode_ci,
  `ObjectiveText2_loc3` text COLLATE utf8_unicode_ci,
  `ObjectiveText2_loc4` text COLLATE utf8_unicode_ci,
  `ObjectiveText2_loc5` text COLLATE utf8_unicode_ci,
  `ObjectiveText2_loc6` text COLLATE utf8_unicode_ci,
  `ObjectiveText2_loc7` text COLLATE utf8_unicode_ci,
  `ObjectiveText2_loc8` text COLLATE utf8_unicode_ci,
  `ObjectiveText3_loc1` text COLLATE utf8_unicode_ci,
  `ObjectiveText3_loc2` text COLLATE utf8_unicode_ci,
  `ObjectiveText3_loc3` text COLLATE utf8_unicode_ci,
  `ObjectiveText3_loc4` text COLLATE utf8_unicode_ci,
  `ObjectiveText3_loc5` text COLLATE utf8_unicode_ci,
  `ObjectiveText3_loc6` text COLLATE utf8_unicode_ci,
  `ObjectiveText3_loc7` text COLLATE utf8_unicode_ci,
  `ObjectiveText3_loc8` text COLLATE utf8_unicode_ci,
  `ObjectiveText4_loc1` text COLLATE utf8_unicode_ci,
  `ObjectiveText4_loc2` text COLLATE utf8_unicode_ci,
  `ObjectiveText4_loc3` text COLLATE utf8_unicode_ci,
  `ObjectiveText4_loc4` text COLLATE utf8_unicode_ci,
  `ObjectiveText4_loc5` text COLLATE utf8_unicode_ci,
  `ObjectiveText4_loc6` text COLLATE utf8_unicode_ci,
  `ObjectiveText4_loc7` text COLLATE utf8_unicode_ci,
  `ObjectiveText4_loc8` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
