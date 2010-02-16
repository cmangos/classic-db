-- MySQL dump 10.13  Distrib 5.1.42, for redhat-linux-gnu (x86_64)
--
-- Host: localhost    Database: zp_scripts
-- ------------------------------------------------------
-- Server version	5.1.42

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
-- Table structure for table `script_texts`
--

DROP TABLE IF EXISTS `script_texts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `script_texts` (
  `entry` mediumint(8) NOT NULL,
  `content_default` text COLLATE utf8_unicode_ci NOT NULL,
  `content_loc1` text COLLATE utf8_unicode_ci,
  `content_loc2` text COLLATE utf8_unicode_ci,
  `content_loc3` text COLLATE utf8_unicode_ci,
  `content_loc4` text COLLATE utf8_unicode_ci,
  `content_loc5` text COLLATE utf8_unicode_ci,
  `content_loc6` text COLLATE utf8_unicode_ci,
  `content_loc7` text COLLATE utf8_unicode_ci,
  `content_loc8` text COLLATE utf8_unicode_ci,
  `sound` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `language` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `emote` smallint(5) unsigned NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=FIXED COMMENT='Script Texts';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `script_texts`
--

LOCK TABLES `script_texts` WRITE;
/*!40000 ALTER TABLE `script_texts` DISABLE KEYS */;
INSERT INTO `script_texts` VALUES (-1000147,'I remember well the sting of defeat at the conclusion of the Third War. I have waited far too long for my revenge. Now the shadow of the Legion falls over this world. It is only a matter of time until all of your failed creation... is undone.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'kazzak SAY_INTRO'),(-1000148,'The Legion will conquer all!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'kazzak SAY_AGGRO1'),(-1000149,'All mortals will perish!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'kazzak SAY_AGGRO2'),(-1000150,'All life must be eradicated!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'kazzak SAY_SURPREME1'),(-1000151,'I\'ll rip the flesh from your bones!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'kazzak SAY_SURPREME2'),(-1000152,'Kirel Narak!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'kazzak SAY_KILL1'),(-1000153,'Contemptible wretch!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'kazzak SAY_KILL2'),(-1000154,'The universe will be remade.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'kazzak SAY_KILL3'),(-1000155,'The Legion... will never... fall.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'kazzak SAY_DEATH'),(-1000156,'REUSE ME',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'REUSE ME'),(-1000157,'Invaders, you dangle upon the precipice of oblivion! The Burning Legion comes and with it comes your end.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'kazzak SAY_RAND1'),(-1000158,'Impudent whelps, you only delay the inevitable. Where one has fallen, ten shall rise. Such is the will of Kazzak...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'kazzak SAY_RAND2'),(-1109000,'The walls of the chamber tremble. Something is happening...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,'malfurion stormrage EMOTE_MALFURION'),(-1109001,'Be steadfast, champion. I know why it is that you are here and I know what it is that you seek. Eranikus will not give up the shard freely. He has been twisted... twisted by the same force that you seek to destroy.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'malfurion stormrge SAY_MALFURION1'),(-1109002,'Are you really surprised? Is it hard to believe that the power of an Old God could reach even inside the Dream? It is true - Eranikus, Tyrant of the Dream, wages a battle against us all. The Nightmare follows in his wake of destruction.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'malfurion stormrge SAY_MALFURION2'),(-1109003,'Understand this, Eranikus wants nothing more than to be brought to Azeroth from the Dream. Once he is out, he will stop at nothing to destroy my physical manifestation. This, however, is the only way in which you could recover the scepter shard.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'malfurion stormrge SAY_MAFLURION3'),(-1109004,'You will bring him back into this world, champion.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'malfurion Stormrge SAY_MALFURION4'),(-1000168,'Who dares awaken Aquementas?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'aquementas AGGRO_YELL_AQUE');
/*!40000 ALTER TABLE `script_texts` ENABLE KEYS */;
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
