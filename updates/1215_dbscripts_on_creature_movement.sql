-- Added more flavor text to NPC 9500 (Mistress Nagmara) in Blackrock Depths
-- Now she will have chit-chat with the nearby patrons while she wanders
-- in the Grim Guzzler bar
-- Also added gossip menu option for players having completed the 
-- Potion of Love quest (4201), the script will be handled by SD2
-- source: https://www.youtube.com/watch?v=GR_CQ-eC6ns
-- http://www.wowhead.com/npc=9500/mistress-nagmara#comments
-- and Trinity DB

SET @ENTRY := 2000000260;

DELETE FROM `db_script_string` WHERE `entry` BETWEEN @ENTRY + 1 AND @ENTRY + 7;
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
(@ENTRY + 1, 'Hey Nagmara! How about a mug of Dark Iron Ale?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(@ENTRY + 2, 'Nagmara! Have any mutton left?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(@ENTRY + 3, 'Mistress, you tell Plugger that I want more of his ale. I can\'t get enough!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(@ENTRY + 4, 'Hey Nag, how about you slice me off a piece of that...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(@ENTRY + 5, 'You got it!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(@ENTRY + 6, 'Coming right up!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(@ENTRY + 7, 'I\'ll bring it right over, baby...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 950001;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(950001, 0, 0, 0, 0, 9545, 20, 0, @ENTRY + 1, @ENTRY + 2, @ENTRY + 3, @ENTRY + 4, 0, 0, 0, 0, 'Grim Patron - Say 1, 2, 3 or 4'),
(950001, 0, 36, 0, 0, 9545, 20, 3, 0, 0, 0, 0, 0, 0, 0, 0, 'Grim Patron - Face Nagmara'),
(950001, 1, 36, 0, 0, 9545, 20, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Mistress Nagmara - Face Grim Patron'),
(950001, 2, 0, 0, 0, 0, 0, 0, @ENTRY + 5, @ENTRY + 6, @ENTRY + 7, 0, 0, 0, 0, 0, 'Mistress Nagmara - Say 1, 2 or 3'),
(950001, 4, 36, 1, 0, 9545, 20, 3, 0, 0, 0, 0, 0, 0, 0, 0, 'Grim Patron - restore orientation'),
(950001, 5, 36, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mistress Nagmara - restore orientation');

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 950002;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(950002, 0, 0, 0, 0, 9547, 20, 0, @ENTRY + 1, @ENTRY + 2, @ENTRY + 3, @ENTRY + 4, 0, 0, 0, 0, 'Grim Patron - Say 1, 2, 3 or 4'),
(950002, 0, 36, 0, 0, 9547, 20, 3, 0, 0, 0, 0, 0, 0, 0, 0, 'Guzzling Patron - Face Nagmara'),
(950002, 1, 36, 0, 0, 9547, 20, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Mistress Nagmara - Face Guzzling Patron'),
(950002, 2, 0, 0, 0, 0, 0, 0, @ENTRY + 5, @ENTRY + 6, @ENTRY + 7, 0, 0, 0, 0, 0, 'Mistress Nagmara - Say 1, 2 or 3'),
(950002, 4, 36, 1, 0, 9547, 20, 3, 0, 0, 0, 0, 0, 0, 0, 0, 'Guzzling Patron - restore orientation'),
(950002, 5, 36, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mistress Nagmara - restore orientation');

UPDATE `creature_movement_template` SET `script_id` = 950002, waittime = 5000 WHERE `entry` = 9500 AND `point` = 7;
UPDATE `creature_movement_template` SET `script_id` = 950002, waittime = 5000 WHERE `entry` = 9500 AND `point` = 15;
UPDATE `creature_movement_template` SET `script_id` = 950001, waittime = 5000 WHERE `entry` = 9500 AND `point` = 12;

SET @CONDITION := 125;

DELETE FROM `conditions` WHERE `condition_entry` = @CONDITION;
INSERT INTO `conditions` VALUES
(@CONDITION, 8, 4201, 0);

DELETE FROM `gossip_menu_option` WHERE `menu_id` = 2076;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES 
(2076, 0, 0, 'Why don\'t you and Rocknot go find somewhere private...', 1, 1, -1, 0, 0, 0, 0, '', @CONDITION);
