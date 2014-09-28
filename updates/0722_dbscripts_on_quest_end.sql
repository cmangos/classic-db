-- Added completion script for quests 112 (Collecting Kelp) and 114 (The Escape)
-- Source UDB 4.3.4. This closes #576 

SET @ENTRY := 2000000133;

DELETE FROM `dbscripts_on_quest_end` WHERE `id` IN (112, 114);
INSERT INTO `dbscripts_on_quest_end` VALUES 
(112, 0, 0, 0, 0, 0, 0, 0, @ENTRY, 0, 0, 0, 0, 0, 0, 0, 'William Pestle - Initial Say'),
(112, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.45219, 'William Pestle - Turn To Face Bookshelf'),
(112, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'William Pestle - Emote Working on Bookshelf'),
(112, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'William Pestle - Stop Emote'),
(112, 5, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.98451, 'William Pestle - Turn to Face Original Direction'),
(112, 5, 0, 0, 0, 0, 0, 0, @ENTRY + 1, 0, 0, 0, 0, 0, 0, 0, 'William Pestle - Final Say'),
(114, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.39307, 'Maybell Maclure - Turn To Face Wall'),
(114, 2, 0, 0, 0, 0, 0, 0, @ENTRY + 2, 0, 0, 0, 0, 0, 0, 0, 'Maybell Maclure - First Say'),
(114, 4, 1, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Maybell Maclure - Emote Drinking Vial'),
(114, 10, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Maybell Maclure - Despawn');

DELETE FROM `db_script_string` WHERE `entry` BETWEEN @ENTRY AND @ENTRY + 2;
INSERT INTO `db_script_string` VALUES
(@ENTRY, 'This shouldn\'t take long...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(@ENTRY + 1, 'The invisibility liquor is ready for you, $n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(@ENTRY + 2, 'Here goes nothing...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL);

UPDATE `creature` SET `spawntimesecs` = 20 WHERE `id` = 251;

UPDATE `quest_template` SET `CompleteScript` = 112 WHERE `Entry` = 112;
UPDATE `quest_template` SET `CompleteScript` = 114 WHERE `Entry` = 114;
