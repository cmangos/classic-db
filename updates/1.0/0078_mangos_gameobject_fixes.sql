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

/*!40000 ALTER TABLE `gameobject_template` DISABLE KEYS */;
-- Removes TBC and WotLK objects
DELETE FROM `gameobject_template` WHERE `entry` IN
 (181626,	-- Warped Crates (Dalaran)
 183342,	-- Warboss Nekrogg's Orders
 183343,	-- Warboss Nekrogg's Orders
 185317,	-- Warp-Gate Small Fire
 185318,	-- Warp-Gate Smoke
 185319,	-- Warp-Gate Big Fire
 186622,	-- Zul'Aman - Loot Box - Dwarf
 186623,	-- Zul'Aman - Dwarf Hammer
 187080,	-- Sunwell Crystal Ward Aura
 210068,	-- Warsong Clan Banner 07
 300029,	-- TEMP Scarlet Crusade Forward Camp
 186482);	-- added by cala upon original commit: Zul'Aman Dummy Cage - Open
/*!40000 ALTER TABLE `gameobject_template` ENABLE KEYS */;

/*!40000 ALTER TABLE `gameobject` DISABLE KEYS */;
-- Removes TBC and WotLK objects
DELETE FROM `gameobject` WHERE `id` IN (181626, 183342, 183343, 185317, 185318, 185319, 186622, 186623, 187080, 210068, 300029, 186482);
/*!40000 ALTER TABLE `gameobject` ENABLE KEYS */;  

/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;