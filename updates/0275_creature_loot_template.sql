-- Added missing entries for items 5753 (Ruffled Chaplet) & 5754 (Wolfpack Medallion)
-- in loot table of creature 3792 (Terrowulf Packlord)
-- Source: http://www.wowwiki.com/Terrowulf_Packlord?oldid=458508
DELETE FROM `creature_loot_template` WHERE `entry` = 3792 AND `item` IN (5753, 5754);
INSERT INTO `creature_loot_template` VALUES
(3792, 5753, 0, 2, 1, 1, 0),
(3792, 5754, 54, 2, 1, 1, 0);
-- Removed wrong entries for items 5753 & 5754 in reference_loot_template
DELETE FROM `reference_loot_template` WHERE `item` IN (5754, 5753);
