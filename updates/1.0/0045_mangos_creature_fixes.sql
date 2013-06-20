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

/*!40000 ALTER TABLE `creature` DISABLE KEYS */;
-- Spawns missing creature 15350 (Horde Warbringer)
-- Spawns at the "Alterac Valley camp" in Alterac Mountains. He was removed in patch ~2.0.1.
INSERT INTO creature VALUES (151178,15350,0,15387,0,382.39,-983.139,109.899,2.7861,300,0,0,2148,0,0,0);
-- Spawns same creature at Mor'Shan Base Camp. Respawn time is guessed.
-- Position is roughly correct http://www.wowpedia.org/images/2/2a/Mor'shan_Base_Camp.jpg.
INSERT INTO creature VALUES (151179,15350,1,15387,0,1026.63,-2110.69,123.007,5.84961,300,0,0,2148,0,0,0);
-- Spawns missing creature 15351 (Alliance Brigadier General)
-- Spawns at Refuge Pointe in Arathi Highlands. Spawn time is guessed. Position is roughly correct and based on
-- http://worldofwarcraft.judgehype.com/dbcata/images/users/pnj/pnj_2835_1T.jpg
-- and http://www.wowpedia.org/images/archive/2/2b/20061106113045!Refuge.jpg
INSERT INTO creature VALUES (151180,15351,0,15389,0,-1231.51,-2510.64,23.053,4.4196,300,0,0,3857,0,0,0);
-- Removes mana for creature 3296 (Orgrimmar Grunt) as this warrior (unit_class=1) does not have mana
UPDATE creature SET curmana=0 WHERE id=3296;
/*!40000 ALTER TABLE `creature` ENABLE KEYS */;

/*!40000 ALTER TABLE `creature_template` DISABLE KEYS */;
-- Removes mana for creature 3296 (Orgrimmar Grunt) as this warrior (unit_class=1) does not have mana
UPDATE creature_template SET minmana=0, maxmana=0 WHERE entry=3296;
/*!40000 ALTER TABLE `creature_template` ENABLE KEYS */;

/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;