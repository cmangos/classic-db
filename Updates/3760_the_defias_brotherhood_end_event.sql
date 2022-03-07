DELETE FROM `dbscripts_on_quest_end` WHERE `id`=166;
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(166, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 197, 198, 199, 0, 0, 0, 0, 0, 0, 'Gryan Stoutmantle - Random Talk on Completion');

UPDATE `broadcast_text` SET `ChatTypeId`=1 WHERE `Id` IN (197, 199);

