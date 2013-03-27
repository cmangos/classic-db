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

/*!40000 ALTER TABLE `gossip_menu` DISABLE KEYS */;
-- Adds gossip to creature 17249 (Landro Longshot)
INSERT INTO gossip_menu VALUES (7394, 8855, 0, 0);
/*!40000 ALTER TABLE `gossip_menu` ENABLE KEYS */;

/*!40000 ALTER TABLE `npc_text` DISABLE KEYS */;
-- Adds for gossip menu 7394
INSERT INTO `npc_text` VALUES
 (8855, 'Welcome, $N. I am Landro Longshot - manager of the Black Flame. Perhaps you\'ve not heard of the Black Flame until now. That doesn\'t surprise me; we work to keep things that way. We prefer to avoid... factional entanglements.$B$BThe Black Flame specializes in providing the finest services and entertainment money can buy, whether they happen to be hard to find items, gladiatorial combat, or lucrative games of chance.$B$BAre you here seeking something specific?$B', '', 0, 1, 0, 1, 0, 1, 0, 6, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `npc_text` ENABLE KEYS */;

/*!40000 ALTER TABLE `creature_template` DISABLE KEYS */;
-- Adds the correct gossip_menu id to creature 17249
UPDATE creature_template SET gossip_menu_id=7394 WHERE entry=17249;
/*!40000 ALTER TABLE `creature_template` ENABLE KEYS */;

/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;