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

/*!40000 ALTER TABLE `creature_loot_template` DISABLE KEYS */;
-- Fixes drop related issues with quest 1027 (Raene's Cleansing)
-- Removes the Iron Pommel drop chance from the slimes.
DELETE FROM creature_loot_template WHERE entry=3928 AND item=5519;
/*!40000 ALTER TABLE `creature_loot_template` ENABLE KEYS */;

/*!40000 ALTER TABLE `gameobject_loot_template` DISABLE KEYS */;
-- Spawns chests now have a 100% to contain the Iron Pommel
UPDATE gameobject_loot_template SET ChanceOrQuestChance=-100 WHERE entry=2971 AND item=5519;
/*!40000 ALTER TABLE `gameobject_loot_template` ENABLE KEYS */;

/*!40000 ALTER TABLE `gameobject_template` DISABLE KEYS */;
-- Chest is lootable by players who do not have the quest
UPDATE gameobject_template SET flags=0 WHERE entry=19021;
/*!40000 ALTER TABLE `gameobject_template` ENABLE KEYS */;

/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;