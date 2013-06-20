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

/*!40000 ALTER TABLE `gossip_menu_option` DISABLE KEYS */;
-- Modified npc_option_npcflag to 257 same as for creature 3318 (Koma <Banker>).
UPDATE gossip_menu_option SET npc_option_npcflag=257 WHERE menu_id=1623 AND id=0;
-- Removed gossip_menu_option id=1 as creature 3318 (Koma) is not a quest giver.
DELETE FROM gossip_menu_option WHERE menu_id=1623 and id=1;
/*!40000 ALTER TABLE `gossip_menu_option` ENABLE KEYS */;

/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;