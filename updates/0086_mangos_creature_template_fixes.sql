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
UPDATE `creature_template` SET `speed_walk` =  1, `speed_run` =  0.892857 WHERE `entry` = 467;	--  The Defias Traitor
UPDATE `creature_template` SET `speed_walk` =  1.81, `speed_run` =  1.14286 WHERE `entry` = 1840;	--  Grand Inquisitor Isillien
UPDATE `creature_template` SET `speed_walk` =  1, `speed_run` =  1 WHERE `entry` = 2630;	--  Earthbind Totem
UPDATE `creature_template` SET `speed_walk` =  1, `speed_run` =  1.14286 WHERE `entry` = 3520;	--  Ol\ Emma
UPDATE `creature_template` SET `speed_walk` =  1, `speed_run` =  1 WHERE `entry` = 3527;	--  Healing Stream Totem
UPDATE `creature_template` SET `speed_walk` =  1.05, `speed_run` =  1.14286 WHERE `entry` = 3903;	--  Searing Totem III
UPDATE `creature_template` SET `speed_walk` =  1.2, `speed_run` =  1.14286 WHERE `entry` = 3939;	--  Razormane Wolf
UPDATE `creature_template` SET `speed_walk` =  1, `speed_run` =  1 WHERE `entry` = 5921;	--  Strength of Earth Totem II
UPDATE `creature_template` SET `speed_walk` =  1, `speed_run` =  1 WHERE `entry` = 5925;	--  Grounding Totem
UPDATE `creature_template` SET `speed_walk` =  1, `speed_run` =  1 WHERE `entry` = 6112;	--  Windfury Totem
UPDATE `creature_template` SET `speed_walk` =  1, `speed_run` =  1 WHERE `entry` = 7484;	--  Windfury Totem III
UPDATE `creature_template` SET `speed_walk` =  0.8, `speed_run` =  0.285714 WHERE `entry` = 8317;	--  Atal\ai Deathwalker\s Spirit
UPDATE `creature_template` SET `speed_walk` =  1, `speed_run` =  1.14286 WHERE `entry` = 8516;	--  Belnistrasz
UPDATE `creature_template` SET `speed_walk` =  1, `speed_run` =  1.42857 WHERE `entry` = 9816;	--  Pyroguard Emberseer
UPDATE `creature_template` SET `speed_walk` =  0.888888, `speed_run` =  1.14286 WHERE `entry` = 11598;	--  Risen Guardian
UPDATE `creature_template` SET `speed_walk` =  1.79, `speed_run` =  1.14286 WHERE `entry` = 12126;	--  Lord Tirion Fordring
UPDATE `creature_template` SET `speed_walk` =  1.79, `speed_run` =  1.14286 WHERE `entry` = 12128;	--  Crimson Elite
UPDATE `creature_template` SET `speed_walk` =  1.2, `speed_run` =  1.14286 WHERE `entry` = 12222;	--  Creeping Sludge
UPDATE `creature_template` SET `speed_walk` =  2.09, `speed_run` =  1.14286 WHERE `entry` = 12397;	--  Lord Kazzak
UPDATE `creature_template` SET `speed_walk` =  0.91, `speed_run` =  1.14286 WHERE `entry` = 13017;	--  Enthralled Deeprun Rat
UPDATE `creature_template` SET `speed_walk` =  3.54, `speed_run` =  1.14286 WHERE `entry` = 14461;	--  Baron Charr
UPDATE `creature_template` SET `speed_walk` =  1.21, `speed_run` =  1.14286 WHERE `entry` = 14484;	--  Injured Peasant
UPDATE `creature_template` SET `speed_walk` =  1.21, `speed_run` =  1.14286 WHERE `entry` = 14485;	--  Plagued Peasant
UPDATE `creature_template` SET `speed_walk` =  1.25, `speed_run` =  1.14286 WHERE `entry` = 14486;	--  Scourge Footsoldier
UPDATE `creature_template` SET `speed_walk` =  1, `speed_run` =  1.14286 WHERE `entry` = 15803;	--  Tranquil Air Totem
UPDATE `creature_template` SET `speed_walk` =  1.25, `speed_run` =  1.14286 WHERE `entry` = 16047;	--  Kormok Trigger
UPDATE `creature_template` SET `speed_walk` =  1.125, `speed_run` =  1.14286 WHERE `entry` = 17719;	--  Ironforge Gryphon Rider
UPDATE `creature_template` SET `speed_walk` =  1.125, `speed_run` =  1.14286 WHERE `entry` = 17720;	--  Orgrimmar Wyvern Rider
/*!40000 ALTER TABLE `creature_template` ENABLE KEYS */;


/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;