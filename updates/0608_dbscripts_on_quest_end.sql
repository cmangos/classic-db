-- Fixed flag in quest 1117 end script target NPC instead of player
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 1117;
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(1117, 0, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1117, 1, 0, 2, 0, 0, 0, 0, 2000000108, 0, 0, 0, 0, 0, 0, 0, ''),
(1117, 2, 1, 94, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1117, 7, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1117, 8, 0, 0, 0, 0, 0, 0, 2000000109, 0, 0, 0, 0, 0, 0, 0, ''),
(1117, 8, 1, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1117, 9, 28, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
