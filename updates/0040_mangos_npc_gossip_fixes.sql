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
-- Adds text to creature 2706 (Tor'gan)
INSERT INTO npc_gossip VALUES (11291, 50015);
/*!40000 ALTER TABLE `npc_gossip` ENABLE KEYS */;

/*!40000 ALTER TABLE `npc_text` DISABLE KEYS */;
-- Adds text, textid is temporary due to unknown real/true textid.
INSERT INTO npc_text VALUES (50015,'Thanks to the Warchief, even here in the remains of our former prison, some hope remains, and the Horde rises anew.',NULL,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `npc_text` ENABLE KEYS */;


/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;