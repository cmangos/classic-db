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

-- Fixes loot for object 2656 (Waterlogged Letter) as the item should only drop on item
-- (item 4433) in order to start a quest
-- Removes all other loots except one item (4433).
/*!40000 ALTER TABLE `gameobject_loot_template` DISABLE KEYS */;
DELETE FROM gameobject_loot_template WHERE entry=2117;
--  Corrects the row of item 4433 so that it can actually looted (ChanceOrQuestChance - "-100" -> "100").
INSERT INTO gameobject_loot_template VALUES (2117,4433,100,0,1,1,10);
/*!40000 ALTER TABLE `gameobject_loot_template` ENABLE KEYS */;

/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;