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
UPDATE `creature_template` SET `InhabitType` =  1 WHERE `entry` = 1;	--  Waypoint (Only GM can see it)
UPDATE `creature_template` SET `InhabitType` =  2 WHERE `entry` = 1224;	--  Young Threshadon
UPDATE `creature_template` SET `InhabitType` =  2 WHERE `entry` = 2188;	--  Deep Sea Threshadon
UPDATE `creature_template` SET `InhabitType` =  3 WHERE `entry` = 2231;	--  Pygmy Tide Crawler
UPDATE `creature_template` SET `InhabitType` =  1 WHERE `entry` = 2630;	--  Earthbind Totem
UPDATE `creature_template` SET `InhabitType` =  1 WHERE `entry` = 3527;	--  Healing Stream Totem
UPDATE `creature_template` SET `InhabitType` =  1 WHERE `entry` = 3560;	--  Healing Ward
UPDATE `creature_template` SET `InhabitType` =  1 WHERE `entry` = 3844;	--  Healing Ward IV
UPDATE `creature_template` SET `InhabitType` =  1 WHERE `entry` = 3911;	--  Stoneclaw Totem II
UPDATE `creature_template` SET `InhabitType` =  5 WHERE `entry` = 4068;	--  Serpent Messenger
UPDATE `creature_template` SET `InhabitType` =  3 WHERE `entry` = 4397;	--  Mudrock Spikeshell
UPDATE `creature_template` SET `InhabitType` =  2 WHERE `entry` = 5185;	--  Hammerhead Shark
UPDATE `creature_template` SET `InhabitType` =  2 WHERE `entry` = 5434;	--  Coral Shark
UPDATE `creature_template` SET `InhabitType` =  2 WHERE `entry` = 5435;	--  Sand Shark
UPDATE `creature_template` SET `InhabitType` =  1 WHERE `entry` = 5919;	--  Stoneskin Totem II
UPDATE `creature_template` SET `InhabitType` =  3 WHERE `entry` = 6250;	--  Crawler
UPDATE `creature_template` SET `InhabitType` =  5 WHERE `entry` = 7044;	--  Black Drake
UPDATE `creature_template` SET `InhabitType` =  5 WHERE `entry` = 7045;	--  Scalding Drake
UPDATE `creature_template` SET `InhabitType` =  5 WHERE `entry` = 7046;	--  Searscale Drake
UPDATE `creature_template` SET `InhabitType` =  1 WHERE `entry` = 7769;	--  Hazzali Parasite
UPDATE `creature_template` SET `InhabitType` =  5 WHERE `entry` = 8964;	--  Blackrock Drake
UPDATE `creature_template` SET `InhabitType` =  5 WHERE `entry` = 9461;	--  Frenzied Black Drake
UPDATE `creature_template` SET `InhabitType` =  1 WHERE `entry` = 10183;	--  Moonflare Totem
UPDATE `creature_template` SET `InhabitType` =  5 WHERE `entry` = 10415;	--  Ash\ari Crystal
UPDATE `creature_template` SET `InhabitType` =  5 WHERE `entry` = 11368;	--  Bloodseeker Bat
UPDATE `creature_template` SET `InhabitType` =  3 WHERE `entry` = 12053;	--  Frostwolf Guardian
UPDATE `creature_template` SET `InhabitType` =  2 WHERE `entry` = 12123;	--  Reef Shark
UPDATE `creature_template` SET `InhabitType` =  2 WHERE `entry` = 12124;	--  Great Shark
UPDATE `creature_template` SET `InhabitType` =  2 WHERE `entry` = 12125;	--  Mammoth Shark
UPDATE `creature_template` SET `InhabitType` =  1 WHERE `entry` = 12138;	--  Lunaclaw
UPDATE `creature_template` SET `InhabitType` =  1 WHERE `entry` = 12144;	--  Lunaclaw Spirit
UPDATE `creature_template` SET `InhabitType` =  3 WHERE `entry` = 14284;	--  Stormpike Battleguard
UPDATE `creature_template` SET `InhabitType` =  5 WHERE `entry` = 14388;	--  Rogue Black Drake
UPDATE `creature_template` SET `InhabitType` =  5 WHERE `entry` = 14517;	--  High Priestess Jeklik
UPDATE `creature_template` SET `InhabitType` =  5 WHERE `entry` = 14750;	--  Gurubashi Bat Rider
UPDATE `creature_template` SET `InhabitType` =  7 WHERE `entry` = 14947;	--  Ichman\s Gryphon
UPDATE `creature_template` SET `InhabitType` =  7 WHERE `entry` = 14965;	--  Frenzied Bloodseeker Bat
UPDATE `creature_template` SET `InhabitType` =  1 WHERE `entry` = 15041;	--  Spawn of Mar\li
UPDATE `creature_template` SET `InhabitType` =  7 WHERE `entry` = 15185;	--  Brood of Nozdormu
UPDATE `creature_template` SET `InhabitType` =  5 WHERE `entry` = 15384;	--  OLDWorld Trigger (DO NOT DELETE)
UPDATE `creature_template` SET `InhabitType` =  7 WHERE `entry` = 15546;	--  Hive\Zara Swarmer
UPDATE `creature_template` SET `InhabitType` =  7 WHERE `entry` = 15963;	--  The Master\s Eye
UPDATE `creature_template` SET `InhabitType` =  7 WHERE `entry` = 16218;	--  Tesla Coil
UPDATE `creature_template` SET `InhabitType` =  5 WHERE `entry` = 17066;	--  Ribbon Pole Debug Target
/*!40000 ALTER TABLE `creature_template` ENABLE KEYS */;


/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;