-- ************************************************************
-- Sequel Pro SQL dump
-- Version 3408
--
-- http://www.sequelpro.com/
-- http://code.google.com/p/sequel-pro/
--
-- Host: 127.0.0.1 (MySQL 5.5.17)
-- Database: mangos
-- ************************************************************

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;

/*!40000 ALTER TABLE `npc_gossip` DISABLE KEYS */;
-- Adds text to creature 2216 (Apothecary Lydon)
INSERT INTO npc_gossip VALUES (15301,50014);
/*!40000 ALTER TABLE `npc_gossip` ENABLE KEYS */;

/*!40000 ALTER TABLE `npc_text` DISABLE KEYS */;
-- Adds text, textid is temporary due to unknown real/true textid.
INSERT INTO npc_text VALUES (50014,'We are but so close to developing the New Plague that our Dark Lady desires with such fervor.',NULL,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `npc_text` ENABLE KEYS */;


/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;