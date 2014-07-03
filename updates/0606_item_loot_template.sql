-- Fixed the number of items provided in quest 2203 (Badlands Reagent Run II)
UPDATE `item_loot_template` SET `mincountOrRef` = 3, `maxcount` = 3 WHERE `entry` = 7870 AND `item` = 7866;

-- Removed quest item 7866 (Empty Thaumaturgy Vessel) from pickpocket loots
DELETE FROM `item_loot_template` WHERE `entry` = 16883 AND `item` = 7866;

DELETE FROM `spell_script_target` WHERE `entry` = 9712;
INSERT INTO `spell_script_target` VALUES (9712, 1, 2726, 0);
