UPDATE `quest_template` SET `CompleteScript`=4621 WHERE `entry`=4621;
DELETE FROM `dbscripts_on_quest_end` WHERE `id`=4621;
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(4621, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5522, 0, 0, 0, 0, 0, 0, 0, 0, 'Fleet Master Firallon - Yell on Completion'),
(4621, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 5523, 0, 0, 0, 0, 0, 0, 0, 0, 'Fleet Master Firallon - Yell on Completion'),
(4621, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 5523, 0, 0, 0, 0, 0, 0, 0, 0, 'Fleet Master Firallon - Yell on Completion'),
(4621, 4000, 0, 0, 0, 0, 0, 0, 0, 0, 5523, 0, 0, 0, 0, 0, 0, 0, 0, 'Fleet Master Firallon - Yell on Completion');

UPDATE `broadcast_text` SET `ChatTypeID`=1 WHERE `Id` IN (5522, 5523);

