-- Stone Watcher of Norgannon 7918
-- gossip moved from SD2 to DB
UPDATE `creature_template` SET `GossipMenuId` = 1061 WHERE `Entry` =7918;
DELETE FROM `conditions` WHERE `condition_entry` = 9906;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES
(9906, 9, 2954, 0, 'Quest ID 2954 Taken');
DELETE FROM `gossip_menu` WHERE `entry` IN (1061,1062,1063,1064,1065,1066);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(1061, 1674, 0, 0),
(1062, 1676, 0, 0),
(1063, 1675, 0, 0),
(1064, 1677, 0, 0),
(1065, 1678, 0, 0),
(1066, 1679, 0, 0);
DELETE FROM `npc_text_broadcast_text` WHERE `Id` IN (1674,1676,1675,1677,1678,1679);
INSERT INTO `npc_text_broadcast_text` (`Id`, `Prob0`, `Prob1`, `Prob2`, `Prob3`, `Prob4`, `Prob5`, `Prob6`, `Prob7`, `BroadcastTextId0`, `BroadcastTextId1`, `BroadcastTextId2`, `BroadcastTextId3`, `BroadcastTextId4`, `BroadcastTextId5`, `BroadcastTextId6`, `BroadcastTextId7`) VALUES
(1674, 1, 0, 0, 0, 0, 0, 0, 0, 4053, 0, 0, 0, 0, 0, 0, 0),
(1675, 1, 0, 0, 0, 0, 0, 0, 0, 4061, 0, 0, 0, 0, 0, 0, 0),
(1676, 1, 0, 0, 0, 0, 0, 0, 0, 4055, 0, 0, 0, 0, 0, 0, 0),
(1677, 1, 0, 0, 0, 0, 0, 0, 0, 4062, 0, 0, 0, 0, 0, 0, 0),
(1678, 1, 0, 0, 0, 0, 0, 0, 0, 4063, 0, 0, 0, 0, 0, 0, 0),
(1679, 1, 0, 0, 0, 0, 0, 0, 0, 4064, 0, 0, 0, 0, 0, 0, 0);
DELETE FROM `npc_text` WHERE `Id` in (1674,1676,1675,1677,1678,1679);
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (1061,1062,1063,1064,1065,1066);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES
(1061, 0, 0, 'What function do you serve?', 4054, 1, 1, 1062, 0, 0, 0, 0, NULL, 0, 9906),
(1062, 0, 0, 'What are the Plates of Uldum?', 4056, 1, 1, 1063, 0, 0, 0, 0, NULL, 0, 0),
(1063, 0, 0, 'Where are the Plates of Uldum?', 4057, 1, 1, 1064, 0, 0, 0, 0, NULL, 0, 0),
(1064, 0, 0, 'Excuse me? We''ve been "rescheduled for visitation"? What does that mean?!', 4058, 1, 1, 1065, 0, 0, 0, 0, NULL, 0, 0),
(1065, 0, 0, 'So... what''s inside Uldum?', 4059, 1, 1, 1066, 0, 0, 0, 0, NULL, 0, 0),
(1066, 0, 0, 'I will return when I have the Plates of Uldum.', 4060, 1, 1, -1, 0, 106601, 0, 0, NULL, 0, 0);
DELETE FROM `dbscripts_on_gossip` WHERE `id` = 106601;
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(106601, 0, 7, 2954, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'quest 2954 explored');
