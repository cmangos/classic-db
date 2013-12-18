-- Added gossip menu to creature 16381 (Archmage Tarsis) in Naxxramas
-- Source: http://www.wowwiki.com/Tarsis_Kir-Moldir
-- Text data already present in DB
-- Thanks to Ela for adding the gossip menus and option
UPDATE `creature_template` SET `gossip_menu_id`= 8400, `npcflag` = `npcflag` + 1 WHERE `entry` = 16381;

-- Added addon to creature 16381 (Archmage Tarsis) to make him lie on the ground
DELETE FROM `creature_template_addon` WHERE `entry` = 16381;
INSERT INTO `creature_template_addon` VALUES (16381, 0, 7, 1, 16, 0, 0, NULL);

-- Added gossip script to make creature 16381 (Archmage Tarsis) sit when talk to
DELETE FROM `dbscripts_on_gossip` WHERE `id` = 8400;
INSERT INTO `dbscripts_on_gossip` VALUES
(8400, 1, 28, 1, 0, 16381, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Archmage Tarsis - sits');

-- Added gossip menus for creature 16381 (Archmage Tarsis)
-- Thanks Ela
DELETE FROM `gossip_menu` WHERE `entry` IN (8409, 8408, 8407, 8406, 8405, 8404, 8403, 8402, 8401, 8400);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(8400, 8517, 8400, 0),
(8401, 8518, 0, 0),
(8402, 8519, 0, 0),
(8403, 8520, 0, 0),
(8404, 8521, 0, 0),
(8405, 8522, 0, 0),
(8406, 8523, 0, 0),
(8407, 8529, 0, 0),
(8408, 8530, 0, 0),
(8409, 8531, 0, 0);

-- Added gossip menu options for creature 16381 (Archmage Tarsis)
-- Thanks Ela
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (8408, 8407, 8406, 8405, 8404, 8403, 8402, 8401, 8400);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(8408, 0, 0, 'So Kel\'Thuzad holds all of the pieces?', 1, 1, 8409, 0, 0, 0, NULL, 0),
(8407, 0, 0, 'So what has led you to Naxxramas?', 1, 1, 8408, 0, 0, 0, NULL, 0),
(8406, 0, 0, 'What happened to the staff?', 1, 1, 8407, 0, 0, 0, NULL, 0),
(8405, 0, 0, 'You said you would have it back. What does that mean?', 1, 1, 8406, 0, 0, 0, NULL, 0),
(8404, 0, 0, 'What staff?', 1, 1, 8405, 0, 0, 0, NULL, 0),
(8403, 0, 0, 'You are talking nonsense, mage.', 1, 1, 8404, 0, 0, 0, NULL, 0),
(8402, 0, 0, 'I still do not understand.', 1, 1, 8403, 0, 0, 0, NULL, 0),
(8401, 0, 0, 'Why have you done such horrible things?', 1, 1, 8402, 0, 0, 0, NULL, 0),
(8400, 0, 0, 'What are you talking about, mage?', 1, 1, 8401, 0, 0, 0, NULL, 0);
