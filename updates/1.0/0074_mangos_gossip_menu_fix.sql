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
-- Allows NPC 15609 (Scout Landion) to display the gossip menu required for
-- quest completion
UPDATE `creature_template` SET gossip_menu_id=6692 WHERE entry=15609;
/*!40000 ALTER TABLE `creature_template` ENABLE KEYS */;  

/*!40000 ALTER TABLE `gossip_menu` DISABLE KEYS */;
-- Creates gossip menu required for quest completion
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
 (6692, 8065, 0, 0);
/*!40000 ALTER TABLE `gossip_menu` ENABLE KEYS */;

/*!40000 ALTER TABLE `conditions` DISABLE KEYS */;
-- Creates conditions associated to the quest
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES
 (358, 9, 8738, 0),		-- Has the quest
 (359, 24, 21160, 1),	-- Does not already have the report
 (360, -1, 358, 359); 	-- Both conditions above
/*!40000 ALTER TABLE `conditions` ENABLE KEYS */;

/*!40000 ALTER TABLE `gossip_menu_option` DISABLE KEYS */;
-- Creates gossip menu option associated with above gossip menu and conditions
-- for quest completion
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
 (6692, 0, 0, 'May I have your report?', 1, 1, -1, 0, 6692, 0, 0, NULL, 360);
/*!40000 ALTER TABLE `gossip_menu_option` ENABLE KEYS */;

/*!40000 ALTER TABLE `dbscripts_on_gossip` DISABLE KEYS */;
-- Creates gossip script associated with above gossip menu to create required item
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
 (6692, 0, 15, 25847, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,'Create Hive\'Regal Scout Report');
/*!40000 ALTER TABLE `dbscripts_on_gossip` ENABLE KEYS */;

/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;