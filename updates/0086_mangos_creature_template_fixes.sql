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

-- Updates walk speed and/or run speed for creatures based on TBC-DB values.
-- These differences were spotted by the following query:
-- SELECT tbcdb.creature_template.entry, tbcdb.creature_template.name, tbcdb.creature_template.speed_walk, tbcdb.creature_template.speed_run FROM mangos.creature_template, tbcdb.creature_template 
-- WHERE mangos.creature_template.entry=tbcdb.creature_template.entry 
-- AND (mangos.creature_template.speed_walk<>tbcdb.creature_template.speed_walk 
-- OR mangos.creature_template.speed_run<>tbcdb.creature_template.speed_run);
-- These are Classic only creatures and should have same speed as in TBC and UDB (both share the same values)

/*!40000 ALTER TABLE `creature_template` DISABLE KEYS */;
REPLACE INTO `creature_template` (`entry`, `name`, `speed_walk`, `speed_run`) VALUES (467, 'The Defias Traitor', 1, 0.892857);
REPLACE INTO `creature_template` (`entry`, `name`, `speed_walk`, `speed_run`) VALUES (1840, 'Grand Inquisitor Isillien', 1.81, 1.14286);
REPLACE INTO `creature_template` (`entry`, `name`, `speed_walk`, `speed_run`) VALUES (2630, 'Earthbind Totem', 1, 1);
REPLACE INTO `creature_template` (`entry`, `name`, `speed_walk`, `speed_run`) VALUES (3520, 'Ol\' Emma', 1, 1.14286);
REPLACE INTO `creature_template` (`entry`, `name`, `speed_walk`, `speed_run`) VALUES (3527, 'Healing Stream Totem', 1, 1);
REPLACE INTO `creature_template` (`entry`, `name`, `speed_walk`, `speed_run`) VALUES (3903, 'Searing Totem III', 1.05, 1.14286);
REPLACE INTO `creature_template` (`entry`, `name`, `speed_walk`, `speed_run`) VALUES (3939, 'Razormane Wolf', 1.2, 1.14286);
REPLACE INTO `creature_template` (`entry`, `name`, `speed_walk`, `speed_run`) VALUES (5921, 'Strength of Earth Totem II', 1, 1);
REPLACE INTO `creature_template` (`entry`, `name`, `speed_walk`, `speed_run`) VALUES (5925, 'Grounding Totem', 1, 1);
REPLACE INTO `creature_template` (`entry`, `name`, `speed_walk`, `speed_run`) VALUES (6112, 'Windfury Totem', 1, 1);
REPLACE INTO `creature_template` (`entry`, `name`, `speed_walk`, `speed_run`) VALUES (7484, 'Windfury Totem III', 1, 1);
REPLACE INTO `creature_template` (`entry`, `name`, `speed_walk`, `speed_run`) VALUES (8317, 'Atal\'ai Deathwalker\'s Spirit', 0.8, 0.285714);
REPLACE INTO `creature_template` (`entry`, `name`, `speed_walk`, `speed_run`) VALUES (8516, 'Belnistrasz', 1, 1.14286);
REPLACE INTO `creature_template` (`entry`, `name`, `speed_walk`, `speed_run`) VALUES (9816, 'Pyroguard Emberseer', 1, 1.42857);
REPLACE INTO `creature_template` (`entry`, `name`, `speed_walk`, `speed_run`) VALUES (11598, 'Risen Guardian', 0.888888, 1.14286);
REPLACE INTO `creature_template` (`entry`, `name`, `speed_walk`, `speed_run`) VALUES (12126, 'Lord Tirion Fordring', 1.79, 1.14286);
REPLACE INTO `creature_template` (`entry`, `name`, `speed_walk`, `speed_run`) VALUES (12128, 'Crimson Elite', 1.79, 1.14286);
REPLACE INTO `creature_template` (`entry`, `name`, `speed_walk`, `speed_run`) VALUES (12222, 'Creeping Sludge', 1.2, 1.14286);
REPLACE INTO `creature_template` (`entry`, `name`, `speed_walk`, `speed_run`) VALUES (12397, 'Lord Kazzak', 2.09, 1.14286);
REPLACE INTO `creature_template` (`entry`, `name`, `speed_walk`, `speed_run`) VALUES (13017, 'Enthralled Deeprun Rat', 0.91, 1.14286);
REPLACE INTO `creature_template` (`entry`, `name`, `speed_walk`, `speed_run`) VALUES (14461, 'Baron Charr', 3.54, 1.14286);
REPLACE INTO `creature_template` (`entry`, `name`, `speed_walk`, `speed_run`) VALUES (14484, 'Injured Peasant', 1.21, 1.14286);
REPLACE INTO `creature_template` (`entry`, `name`, `speed_walk`, `speed_run`) VALUES (14485, 'Plagued Peasant', 1.21, 1.14286);
REPLACE INTO `creature_template` (`entry`, `name`, `speed_walk`, `speed_run`) VALUES (14486, 'Scourge Footsoldier', 1.25, 1.14286);
REPLACE INTO `creature_template` (`entry`, `name`, `speed_walk`, `speed_run`) VALUES (15803, 'Tranquil Air Totem', 1, 1.14286);
REPLACE INTO `creature_template` (`entry`, `name`, `speed_walk`, `speed_run`) VALUES (16047, 'Kormok Trigger', 1.25, 1.14286);
REPLACE INTO `creature_template` (`entry`, `name`, `speed_walk`, `speed_run`) VALUES (17719, 'Ironforge Gryphon Rider', 1.125, 1.14286);
REPLACE INTO `creature_template` (`entry`, `name`, `speed_walk`, `speed_run`) VALUES (17720, 'Orgrimmar Wyvern Rider', 1.125, 1.14286);
/*!40000 ALTER TABLE `creature_template` ENABLE KEYS */;


/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;