DELETE FROM `dbscript_random_templates` WHERE `id`=20;
INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES
(20, 0, 197, 0, 'Gryan Stoutmantle - Random On Quest Completion Texts'),
(20, 0, 198, 0, 'Gryan Stoutmantle - Random On Quest Completion Texts'),
(20, 0, 199, 0, 'Gryan Stoutmantle - Random On Quest Completion Texts');

DELETE FROM `dbscripts_on_quest_end` WHERE `id`=166;
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(166, 1000, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gryan Stoutmantle - Random Talk on Completion');

UPDATE `broadcast_text` SET `ChatTypeId`=1 WHERE `Id` IN (197, 199);

