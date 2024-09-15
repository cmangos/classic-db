-- Loramus Thalipedes 7783
-- gossip moved from sd2 to DB
UPDATE `creature_template` SET `GossipMenuId` = 1163 WHERE `Entry` =7783;
DELETE FROM `conditions` WHERE `condition_entry` IN (9904, 9905);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES
(9904, 9, 2744, 0, 'Quest ID 2744 Taken'),
(9905, 9, 3141, 0, 'Quest ID 3141 Taken');
DELETE FROM `gossip_menu` WHERE `entry` IN (1163,1164,1181,1182,1183,1184,1185);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(1164, 1812, 0, 0),
(1181, 1813, 0, 0),
(1182, 1814, 0, 0),
(1183, 1815, 0, 0),
(1184, 1816, 0, 0),
(1185, 1817, 0, 0),
(1163, 1796, 0, 0);
DELETE FROM `npc_text_broadcast_text` WHERE `Id` in (1812,1813,1814,1815,1816,1817,1796);
INSERT INTO `npc_text_broadcast_text` (`Id`, `Prob0`, `Prob1`, `Prob2`, `Prob3`, `Prob4`, `Prob5`, `Prob6`, `Prob7`, `BroadcastTextId0`, `BroadcastTextId1`, `BroadcastTextId2`, `BroadcastTextId3`, `BroadcastTextId4`, `BroadcastTextId5`, `BroadcastTextId6`, `BroadcastTextId7`) VALUES
(1796, 1, 0, 0, 0, 0, 0, 0, 0, 4229, 0, 0, 0, 0, 0, 0, 0),
(1812, 1, 0, 0, 0, 0, 0, 0, 0, 4228, 0, 0, 0, 0, 0, 0, 0),
(1813, 1, 0, 0, 0, 0, 0, 0, 0, 4246, 0, 0, 0, 0, 0, 0, 0),
(1814, 1, 0, 0, 0, 0, 0, 0, 0, 4248, 0, 0, 0, 0, 0, 0, 0),
(1815, 1, 0, 0, 0, 0, 0, 0, 0, 4250, 0, 0, 0, 0, 0, 0, 0),
(1816, 1, 0, 0, 0, 0, 0, 0, 0, 4253, 0, 0, 0, 0, 0, 0, 0),
(1817, 1, 0, 0, 0, 0, 0, 0, 0, 4255, 0, 0, 0, 0, 0, 0, 0);
DELETE FROM `npc_text` WHERE `Id` in (1812,1813,1814,1815,1816,1817,1796);
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (1163,1164,1181,1182,1183,1184,1185);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(1164, 0, 0, 'Will you help?', 4245, 1, 1, -1, 0, 116401, 0, 0, NULL, 0),
(1181, 0, 0, 'Please continue.', 4247, 1, 1, 1182, 0, 0, 0, 0, NULL, 0),
(1182, 0, 0, 'I do not understand.', 4249, 1, 1, 1183, 0, 0, 0, 0, NULL, 0),
(1183, 0, 0, 'Indeed.', 4251, 1, 1, 1184, 0, 0, 0, 0, NULL, 0),
(1184, 0, 0, 'I will do this with or without your help, Loramus.', 4254, 1, 1, 1185, 0, 0, 0, 0, NULL, 0),
(1185, 0, 0, 'Yes.', 4256, 1, 1, -1, 0, 118501, 0, 0, NULL, 0),
(1163, 0, 0, 'Hail, Loramus. I bring word from the Blasted Lands.', 4230, 1, 1, 1164, 0, 0, 0, 0, NULL, 9904),
(1163, 1, 0, 'I wish to hear your story.', 4257, 1, 1, 1181, 0, 0, 0, 0, NULL, 9905);
DELETE FROM `dbscripts_on_gossip` WHERE `id` in (116401,118501);
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(116401, 0, 7, 2744, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'quest 2744 explored'),
(118501, 0, 7, 3141, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'quest 3141 explored');
