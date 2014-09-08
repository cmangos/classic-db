-- Fixed movement of creature 1373 (Jarven Thunderbrew) in quest 308 (Distracting Jarven)
-- Thanks Zingzah for reporting. This closes #529
-- Also fixed similar 'teleporting movement' for others quests
UPDATE `dbscripts_on_quest_end` SET `data_flags` = 0 WHERE `command` = 3 AND
`id` IN (308, 930, 931, 997, 1191, 1383, 3922, 7491, 7642);

INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(931, 11, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(3922, 6, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

UPDATE `dbscripts_on_quest_start` SET `data_flags` = 0 WHERE `command` = 3 AND
`id` IN (994, 1713, 2480, 2608, 2765, 3321, 3625);
