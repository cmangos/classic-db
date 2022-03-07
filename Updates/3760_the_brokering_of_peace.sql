UPDATE `quest_template` SET `CompleteScript`=8484 WHERE `entry`=8484;
UPDATE `quest_template` SET `CompleteScript`=8485 WHERE `entry`=8485;

DELETE FROM `dbscripts_on_quest_end` WHERE `id` IN (8484, 8485);
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(8484, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 11308, 0, 0, 0, 0, 0, 0, 0, 0, 'King Magni Bronzebeard - Yell on Completion'),
(8485, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 11307, 0, 0, 0, 0, 0, 0, 0, 0, 'Thrall - Yell on Completion');

UPDATE `broadcast_text` SET `ChatTypeID`=1 WHERE `Id` IN (11307, 11308);

