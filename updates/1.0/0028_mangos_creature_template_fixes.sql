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

/*!40000 ALTER TABLE `creature_template` DISABLE KEYS */;
-- Fixed faction for creature 8320 (Sprok), his faction is now Booty Bay
-- and therefore "friendly" for Alliance and Horde.
UPDATE creature_template SET faction_A=120, faction_H=120 WHERE entry=8320;
-- Adds gossip option to creature 11556 (Salfa)
-- with gossip_menu_id to the creature to display gossip and gossip
-- option. Got hold of the real id as too.
UPDATE creature_template SET gossip_menu_id=3624 WHERE entry=11556;
-- Adds text & gossip option for creature 3318 (Koma <Banker>)
-- adds a gossip_menu_id and changed npcflag to BANKER+GOSSIP.
UPDATE creature_template SET gossip_menu_id=1623, npcflag=257 WHERE entry=3318;
/*!40000 ALTER TABLE `creature_template` ENABLE KEYS */;

/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;