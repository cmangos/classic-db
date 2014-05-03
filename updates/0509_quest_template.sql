-- Fixed quest 2118 (Plagued Lands) which had outdated required objectives (no longer in sync with SD2 script)
-- The quest is now completable
-- This closes #418 and closes #287 
UPDATE `quest_template` SET `ReqSpellCast1`= 0  WHERE `entry` = 2118;

/*DELETE FROM `spell_script_target` WHERE `entry` = 9439;
INSERT INTO `spell_script_target` VALUES
(9439, 1, 2164, 0);
 */