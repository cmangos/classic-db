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
-- Adds two missing creatures 17719 (Ironforge Gryphon Rider), and 17720 (Orgrimmar Wyvern Rider)
INSERT INTO `creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES
 (17719, 0, 0, 17202, 0, 'Ironforge Gryphon Rider', NULL, 0, 1, 1, 300, 300, 0, 0, 20, 35, 35, 0, 1, 1.14286, 1, 0, 1, 1.29, 0, 100, 1, 1400, 1900, 0, 0, 0, 0, 0, 0, 0, 0, 0.344828, 0.444828, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 1, 3, 0, 0, 1, 0, 0, 0, 0, 0, NULL),
 (17720, 0, 0, 17203, 0, 'Orgrimmar Wyvern Rider', NULL, 0, 1, 1, 300, 300, 0, 0, 20, 35, 35, 0, 1, 1.14286, 1, 0, 1, 1.29, 0, 100, 1, 1400, 1900, 0, 0, 0, 0, 0, 0, 0, 0, 0.344828, 0.444828, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 1, 3, 0, 0, 1, 0, 0, 0, 0, 0, NULL);
/*!40000 ALTER TABLE `creature_template` ENABLE KEYS */;  


/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;