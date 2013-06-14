-- fixing Quest 3567 (To The Top) this is removing the "You learn spell" from complete quest window and spell gets casted by Marli not by player
UPDATE `quest_template` SET `RewSpellCast` = 0 WHERE `entry` = 3567;
UPDATE `quest_template` SET `RewSpell` = 0 WHERE `entry` = 3567;
UPDATE `quest_template` SET `CompleteScript` = 3567 WHERE `entry` = 3567;
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 3567;
INSERT INTO `dbscripts_on_quest_end` VALUES (3567, 0, 15, 12242, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast spell 12242 on Player');