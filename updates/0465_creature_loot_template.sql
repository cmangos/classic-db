-- Correcting drops of Pristine Yeti Hide (Alliance) and Perfect Yeti Hide (Horde)
-- Corrected drop rate to 2.5% and into unique group.
-- Removing from Lurking Feral Scar ID:7848
-- Listed as dropping at very low rates on some sites, most likely due to bug where loot
-- is counted to new targeted mob if you switch targets before loot window appears.
-- Added in PreReq quests.
-- The Mark of Quality ID:7733  ALLIANCE
-- The Mark of Quality ID:7734  HORDE

-- Remove old drops
DELETE FROM `creature_loot_template` WHERE `item` IN (18969, 18972);

SET @ID := 97;

-- Add in updated drops
-- ALLIANCE
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (5296, 18969, 2.5, 0, 1, 1, @ID + 6);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (5297, 18969, 2.5, 0, 1, 1, @ID + 6);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (5299, 18969, 2.5, 0, 1, 1, @ID + 6);
-- HORDE
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (5296, 18972, 2.5, 0, 1, 1, @ID + 5);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (5297, 18972, 2.5, 0, 1, 1, @ID + 5);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (5299, 18972, 2.5, 0, 1, 1, @ID + 5);

-- Set conditions to quest, instead of horde/alliance.
DELETE FROM `conditions` WHERE `condition_entry` BETWEEN @ID +1 AND @ID + 6;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUE
(@ID + 1, 8, 7734, 0), -- completed horde quest 
(@ID + 2, 8, 7733, 0), -- completed alliance quest
(@ID + 3, 9, 7734, 0), -- horde quest accepted
(@ID + 4, 9, 7733, 0), -- alliance quest accepted
(@ID + 5, -2, @ID + 1, @ID + 3), -- completed or accepted horde quest 
(@ID + 6, -2, @ID + 2, @ID + 4); -- completed or accepted alliance quest 
