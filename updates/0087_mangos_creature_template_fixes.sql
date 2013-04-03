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

-- Updates InhabitType for creatures based on TBC-DB values.
-- These differences were spotted by the following query:
-- SELECT tbcdb.creature_template.entry, tbcdb.creature_template.name, tbcdb.creature_template.InhabitType FROM mangos.creature_template, tbcdb.creature_template 
-- WHERE mangos.creature_template.entry=tbcdb.creature_template.entry 
-- AND (mangos.creature_template.InhabitType<>tbcdb.creature_template.InhabitType) ;
-- All creatures (except triggers/waypoints) were checked against wowhead, wowwiki for correct values of InhabitType and TBC-DB is indeed correct

/*!40000 ALTER TABLE `creature_template` DISABLE KEYS */;
REPLACE INTO `creature_template` (`entry`, `name`, `InhabitType`) VALUES (1, 'Waypoint (Only GM can see it)', 1);
REPLACE INTO `creature_template` (`entry`, `name`, `InhabitType`) VALUES (1224, 'Young Threshadon', 2);
REPLACE INTO `creature_template` (`entry`, `name`, `InhabitType`) VALUES (2188, 'Deep Sea Threshadon', 2);
REPLACE INTO `creature_template` (`entry`, `name`, `InhabitType`) VALUES (2231, 'Pygmy Tide Crawler', 3);
REPLACE INTO `creature_template` (`entry`, `name`, `InhabitType`) VALUES (2630, 'Earthbind Totem', 1);
REPLACE INTO `creature_template` (`entry`, `name`, `InhabitType`) VALUES (3527, 'Healing Stream Totem', 1);
REPLACE INTO `creature_template` (`entry`, `name`, `InhabitType`) VALUES (3560, 'Healing Ward', 1);
REPLACE INTO `creature_template` (`entry`, `name`, `InhabitType`) VALUES (3844, 'Healing Ward IV', 1);
REPLACE INTO `creature_template` (`entry`, `name`, `InhabitType`) VALUES (3911, 'Stoneclaw Totem II', 1);
REPLACE INTO `creature_template` (`entry`, `name`, `InhabitType`) VALUES (4068, 'Serpent Messenger', 5);
REPLACE INTO `creature_template` (`entry`, `name`, `InhabitType`) VALUES (4397, 'Mudrock Spikeshell', 3);
REPLACE INTO `creature_template` (`entry`, `name`, `InhabitType`) VALUES (5185, 'Hammerhead Shark', 2);
REPLACE INTO `creature_template` (`entry`, `name`, `InhabitType`) VALUES (5434, 'Coral Shark', 2);
REPLACE INTO `creature_template` (`entry`, `name`, `InhabitType`) VALUES (5435, 'Sand Shark', 2);
REPLACE INTO `creature_template` (`entry`, `name`, `InhabitType`) VALUES (5919, 'Stoneskin Totem II', 1);
REPLACE INTO `creature_template` (`entry`, `name`, `InhabitType`) VALUES (6250, 'Crawler', 3);
REPLACE INTO `creature_template` (`entry`, `name`, `InhabitType`) VALUES (7044, 'Black Drake', 5);
REPLACE INTO `creature_template` (`entry`, `name`, `InhabitType`) VALUES (7045, 'Scalding Drake', 5);
REPLACE INTO `creature_template` (`entry`, `name`, `InhabitType`) VALUES (7046, 'Searscale Drake', 5);
REPLACE INTO `creature_template` (`entry`, `name`, `InhabitType`) VALUES (7769, 'Hazzali Parasite', 1);
REPLACE INTO `creature_template` (`entry`, `name`, `InhabitType`) VALUES (8964, 'Blackrock Drake', 5);
REPLACE INTO `creature_template` (`entry`, `name`, `InhabitType`) VALUES (9461, 'Frenzied Black Drake', 5);
REPLACE INTO `creature_template` (`entry`, `name`, `InhabitType`) VALUES (10183, 'Moonflare Totem', 1);
REPLACE INTO `creature_template` (`entry`, `name`, `InhabitType`) VALUES (10415, 'Ash\'ari Crystal', 5);
REPLACE INTO `creature_template` (`entry`, `name`, `InhabitType`) VALUES (11368, 'Bloodseeker Bat', 5);
REPLACE INTO `creature_template` (`entry`, `name`, `InhabitType`) VALUES (12053, 'Frostwolf Guardian', 3);
REPLACE INTO `creature_template` (`entry`, `name`, `InhabitType`) VALUES (12123, 'Reef Shark', 2);
REPLACE INTO `creature_template` (`entry`, `name`, `InhabitType`) VALUES (12124, 'Great Shark', 2);
REPLACE INTO `creature_template` (`entry`, `name`, `InhabitType`) VALUES (12125, 'Mammoth Shark', 2);
REPLACE INTO `creature_template` (`entry`, `name`, `InhabitType`) VALUES (12138, 'Lunaclaw', 1);
REPLACE INTO `creature_template` (`entry`, `name`, `InhabitType`) VALUES (12144, 'Lunaclaw Spirit', 1);
REPLACE INTO `creature_template` (`entry`, `name`, `InhabitType`) VALUES (14284, 'Stormpike Battleguard', 3);
REPLACE INTO `creature_template` (`entry`, `name`, `InhabitType`) VALUES (14388, 'Rogue Black Drake', 5);
REPLACE INTO `creature_template` (`entry`, `name`, `InhabitType`) VALUES (14517, 'High Priestess Jeklik', 5);
REPLACE INTO `creature_template` (`entry`, `name`, `InhabitType`) VALUES (14750, 'Gurubashi Bat Rider', 5);
REPLACE INTO `creature_template` (`entry`, `name`, `InhabitType`) VALUES (14947, 'Ichman\'s Gryphon', 7);
REPLACE INTO `creature_template` (`entry`, `name`, `InhabitType`) VALUES (14965, 'Frenzied Bloodseeker Bat', 7);
REPLACE INTO `creature_template` (`entry`, `name`, `InhabitType`) VALUES (15041, 'Spawn of Mar\'li', 1);
REPLACE INTO `creature_template` (`entry`, `name`, `InhabitType`) VALUES (15185, 'Brood of Nozdormu', 7);
REPLACE INTO `creature_template` (`entry`, `name`, `InhabitType`) VALUES (15384, 'OLDWorld Trigger (DO NOT DELETE)', 5);
REPLACE INTO `creature_template` (`entry`, `name`, `InhabitType`) VALUES (15546, 'Hive\'Zara Swarmer', 7);
REPLACE INTO `creature_template` (`entry`, `name`, `InhabitType`) VALUES (15963, 'The Master\'s Eye', 7);
REPLACE INTO `creature_template` (`entry`, `name`, `InhabitType`) VALUES (16218, 'Tesla Coil', 7);
REPLACE INTO `creature_template` (`entry`, `name`, `InhabitType`) VALUES (17066, 'Ribbon Pole Debug Target', 5);
/*!40000 ALTER TABLE `creature_template` ENABLE KEYS */;


/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;