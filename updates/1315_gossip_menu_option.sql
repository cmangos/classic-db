-- Fixed quest 2936 (The Spider God) in Zul'Farrak
-- Gossip menu was missing
-- Thanks TheTrueAnimal for pointing and Rushor and trimken for providing data
-- This closes #718
-- Source: http://www.wowhead.com/object=142715/tablet-of-theka#comments
-- http://www.wowhead.com/quest=2936/the-spider-god

SET @CONDITION := 832;

DELETE FROM `conditions` WHERE `condition_entry` = @CONDITION;
INSERT INTO `conditions` VALUES
(@CONDITION, 9, 2936, 0);

DELETE FROM `gossip_menu_option` WHERE `menu_id` = 1053;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(1053, 0, 0, 'Continue.', 1, 1, 1054, 0, 0, 0, 0, '', @CONDITION);

DELETE FROM `gossip_menu` WHERE `entry` = 1054;
INSERT INTO `gossip_menu` VALUES
(1054, 1654, 105401, 0);

DELETE FROM `dbscripts_on_gossip` WHERE `id` = 105301;
INSERT INTO `dbscripts_on_gossip` VALUES
(105401, 0, 7, 2936, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
