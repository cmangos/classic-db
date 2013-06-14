-- fixing the "you learn spell" from quest windows, from 6 quests of Dalar Dawnweaver, 
-- adding quest end scripts so dalar dawnweaver cast spell on Player, fixing the not enough mana bug.
UPDATE `quest_template` SET `RewSpellCast` = 0 WHERE `entry` = 99;
UPDATE `quest_template` SET `RewSpellCast` = 0 WHERE `entry` = 421;
UPDATE `quest_template` SET `RewSpellCast` = 0 WHERE `entry` = 422;
UPDATE `quest_template` SET `RewSpellCast` = 0 WHERE `entry` = 423;
UPDATE `quest_template` SET `RewSpellCast` = 0 WHERE `entry` = 424;
UPDATE `quest_template` SET `RewSpellCast` = 0 WHERE `entry` = 1014;
UPDATE `quest_template` SET `CompleteScript` = 99 WHERE `entry` = 99;
UPDATE `quest_template` SET `CompleteScript` = 421 WHERE `entry` = 421;
UPDATE `quest_template` SET `CompleteScript` = 422 WHERE `entry` = 422;
UPDATE `quest_template` SET `CompleteScript` = 423 WHERE `entry` = 423;
UPDATE `quest_template` SET `CompleteScript` = 424 WHERE `entry` = 424;
UPDATE `quest_template` SET `CompleteScript` = 1014 WHERE `entry` = 1014;
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 99;
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 421;
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 422;
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 423;
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 424;
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 1014;
INSERT INTO `dbscripts_on_quest_end` VALUES (99, 0, 15, 8097, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast spell Arcane Intellect on Player');
INSERT INTO `dbscripts_on_quest_end` VALUES (421, 0, 15, 8097, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast spell Arcane Intellect on Player');
INSERT INTO `dbscripts_on_quest_end` VALUES (422, 0, 15, 8097, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast spell Arcane Intellect on Player');
INSERT INTO `dbscripts_on_quest_end` VALUES (423, 0, 15, 8097, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast spell Arcane Intellect on Player');
INSERT INTO `dbscripts_on_quest_end` VALUES (424, 0, 15, 8097, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast spell Arcane Intellect on Player');
INSERT INTO `dbscripts_on_quest_end` VALUES (1014, 0, 15, 8097, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast spell Arcane Intellect on Player');