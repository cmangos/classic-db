-- MySQL dump 10.13  Distrib 5.5.16, for Linux (x86_64)
--
-- Host: localhost    Database: zp_scripts
-- ------------------------------------------------------
-- Server version	5.5.16-log

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
-- Table structure for table `gossip_texts`
--

DROP TABLE IF EXISTS `gossip_texts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gossip_texts` (
  `entry` mediumint(8) NOT NULL,
  `content_default` text NOT NULL,
  `content_loc1` text,
  `content_loc2` text,
  `content_loc3` text,
  `content_loc4` text,
  `content_loc5` text,
  `content_loc6` text,
  `content_loc7` text,
  `content_loc8` text,
  `comment` text,
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Gossip Texts';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gossip_texts`
--

LOCK TABLES `gossip_texts` WRITE;
/*!40000 ALTER TABLE `gossip_texts` DISABLE KEYS */;
INSERT INTO `gossip_texts` VALUES
(-3469002,'Please do.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'victor_nefarius GOSSIP_ITEM_NEFARIUS_3'),
(-3469001,'You have lost your mind, Nefarius. You speak in riddles.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'victor_nefarius GOSSIP_ITEM_NEFARIUS_2'),
(-3469000,'I\'ve made no mistakes.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'victor_nefarius GOSSIP_ITEM_NEFARIUS_1'),
(-3409002,'You challenged us and we have come. Where is this master you speak of?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'majordomo_executus GOSSIP_ITEM_SUMMON_3'),
(-3409001,'What else do you have to say?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'majordomo_executus GOSSIP_ITEM_SUMMON_2'),
(-3409000,'Tell me more.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'majordomo_executus GOSSIP_ITEM_SUMMON_1'),
(-3230013,'Get out of here, Tobias, you\'re free!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'tobias GOSSIP_ITEM'),
(-3230012,'You\'re free, Dughal! Get out of here!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dughal GOSSIP_ITEM'),
(-3230011,'Get Thorium Brotherhood Contract.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'lokthos GOSSIP_ITEM_GET_CONTRACT'),
(-3230010,'Show me what I have access to, Lothos.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'lokthos GOSSIP_ITEM_SHOW_ACCESS'),
(-3230009,'The door is open, Kharan. You are a free man.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'kharan GOSSIP_ITEM_9'),
(-3230008,'Indeed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'kharan GOSSIP_ITEM_9'),
(-3230007,'Continue with your story please.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'kharan GOSSIP_ITEM_8'),
(-3230006,'So you suspect that someone on the inside was involved? That they were tipped off?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'kharan GOSSIP_ITEM_7'),
(-3230005,'Continue...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'kharan GOSSIP_ITEM_6'),
(-3230004,'So what happened?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'kharan GOSSIP_ITEM_5'),
(-3230003,'Not enough, you need to tell me more.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'kharan GOSSIP_ITEM_4'),
(-3230002,'Gor\'shak is my friend, you can trust me.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'kharan GOSSIP_ITEM_3'),
(-3230001,'All is not lost, Kharan!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'kharan GOSSIP_ITEM_2'),
(-3230000,'I need to know where the princess are, Kharan!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'kharan GOSSIP_ITEM_1'),
(-3090000,'I am ready to begin.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'emi shortfuse GOSSIP_ITEM_START'),
(-3043000,'Let the event begin!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Disciple of Naralex - GOSSIP_ITEM_BEGIN'),
(-3001023,'I must build a beacon for this marvelous device!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'jhordy GOSSIP_TEACH'),
(-3001022,'This Dimensional Imploder sounds dangerous! How can I make one?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'zap GOSSIP_TEACH'),
(-3001021,'Please teach me how to become a swordsmith, Seril.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'eitrigg GOSSIP_TEACH_SWORD'),
(-3001020,'Please teach me how to become an axesmith, Kilram.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'kilram GOSSIP_TEACH_AXE'),
(-3001019,'Please teach me how to become a hammersmith, Lilith.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'lilith GOSSIP_TEACH_HAMMER'),
(-3001018,'As you wish, Eitrigg.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'eitrigg GOSSIP_ITEM_8'),
(-3001017,'Perhaps there exists a way?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'eitrigg GOSSIP_ITEM_7'),
(-3001016,'Ah, so that is how they pushed the Dark Iron to the lower parts of the Spire.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'eitrigg GOSSIP_ITEM_6'),
(-3001015,'I will take you up on that offer, Eitrigg.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'eitrigg GOSSIP_ITEM_5'),
(-3001014,'Hearthglen? But...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'eitrigg GOSSIP_ITEM_4'),
(-3001013,'What do you mean?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'eitrigg GOSSIP_ITEM_3'),
(-3001012,'There is only one Warchief, Eitrigg!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'eitrigg GOSSIP_ITEM_2'),
(-3001011,'Hello, Eitrigg. I bring news from Blackrock Spire.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'eitrigg GOSSIP_ITEM_1'),
(-3001010,'Of course, Warchief!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'thrall warchief GOSSIP_ITEM_7'),
(-3001009,'I live only to serve, Warchief! My life is empty and meaningless without your guidance.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'thrall warchief GOSSIP_ITEM_6'),
(-3001008,'I... I did not think of it that way, Warchief.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'thrall warchief GOSSIP_ITEM_5'),
(-3001007,'With all due respect, Warchief - why not allow them to be destroyed? Does this not strengthen our position?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'thrall warchief GOSSIP_ITEM_4'),
(-3001006,'Usurper?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'thrall warchief GOSSIP_ITEM_3'),
(-3001005,'What discoveries?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'thrall warchief GOSSIP_ITEM_2'),
(-3001004,'Please share your wisdom with me, Warchief.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'thrall warchief GOSSIP_ITEM_1'),
(-3001003,'Is there anything you would have of me?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'neeru fireblade GOSSIP_ITEM_4'),
(-3001002,'So the Searing Blade is expendable?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'neeru fireblade GOSSIP_ITEM_3'),
(-3001001,'It is good to see the Burning Blade is taking over where the Shadow Council once failed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'neeru fireblade GOSSIP_ITEM_2'),
(-3001000,'You may speak frankly, Neeru.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'neeru fireblade GOSSIP_ITEM_1'),
(-3000109,'I will, Tirion.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'tirion GOSSIP_ITEM_4'),
(-3000108,'That is terrible.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'tirion GOSSIP_ITEM_3'),
(-3000107,'Thank you, Tirion. What of your identity?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'tirion GOSSIP_ITEM_2'),
(-3000106,'I am ready to hear your tale, Tirion.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'tirion GOSSIP_ITEM_1'),
(-3000105,'I am ready, as are my forces. Let us end this masquerade!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'reginald GOSSIP_ITEM'),
(-3000104,'Let Marshal Windsor know that I am ready.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'rowe GOSSIP_ITEM'),
(-3000103,'Thank you for your time, Lady Prestor.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'prestor GOSSIP_ITEM_4'),
(-3000102,'Begging your pardon, Lady Prestor. That was not my intent.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'prestor GOSSIP_ITEM_3'),
(-3000101,'My apologies, Lady Prestor.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'prestor GOSSIP_ITEM_2'),
(-3000100,'Pardon the intrusion, Lady Prestor, but Highlord Bolvar suggested that I seek your advice.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'prestor GOSSIP_ITEM_1'),
(-3469003,'I cannot, Vaelastrasz! Surely something can be done to heal you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'vaelastrasz GOSSIP_ITEM_VAEL_1'),
(-3469004,'Vaelastrasz, no!!!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'vaelastrasz GOSSIP_ITEM_VAEL_2');
/*!40000 ALTER TABLE `gossip_texts` ENABLE KEYS */;
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
