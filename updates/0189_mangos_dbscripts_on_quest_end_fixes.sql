-- scripted the quest end script for quest 808 Minshinas Skull
UPDATE `creature_template` SET `MovementType` = 0 WHERE `entry` = 3289;
UPDATE `quest_template` SET `CompleteScript` = 808 WHERE `entry` = 808;
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 808;
INSERT INTO `dbscripts_on_quest_end` VALUES (808, 0, 10, 3289, 20000, 0, 0, 0, 0, 0, 0, 0, -823.88, -4924.51, 19.71, 1.89, 'Summon Minshinas Ghost');
INSERT INTO `dbscripts_on_quest_end` VALUES (808, 1, 0, 0, 0, 0, 0, 0, 2000000016, 0, 0, 0, 0, 0, 0, 0, 'Gadrin Say');
INSERT INTO `dbscripts_on_quest_end` VALUES (808, 3, 1, 2, 0, 3289, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Minshina Bow');
DELETE FROM `db_script_string` WHERE `entry` = 2000000016;
INSERT INTO `db_script_string` VALUES (2000000016, "I thank you. $n. And my brother thanks you.", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL);
