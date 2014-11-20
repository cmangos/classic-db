-- Improved start script for quest 1064 (Forsaken Aid)
-- Added missing spell visual
DELETE FROM `dbscripts_on_quest_start` WHERE `id` = 1064 AND `delay` = 3;
INSERT INTO `dbscripts_on_quest_start` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(1064, 3, 15, 6657, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
