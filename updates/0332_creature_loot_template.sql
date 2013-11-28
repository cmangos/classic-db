-- Thanks Neotmiren for researching and fixing

-- Updated loot table of Lady Vespira (rare naga, Darkshore)
-- Source: http://www.wowwiki.com/Lady_Vespira
-- Drop rate from UDB
DELETE FROM `creature_loot_template` WHERE `entry` = 7016 AND `item` = 6333;
INSERT INTO `creature_loot_template` VALUES (7016, 6333, 60, 2, 1, 1, 0);
UPDATE `creature_loot_template` SET `groupid` = 2, `ChanceOrQuestChance` = 0 WHERE `entry` = 7016 AND `item` = 6332; -- mutually exclusive group for rare Black Pearl Ring
-- Item 6333 (Spikelash Dagger) is not a world drop so removed it from reference_loot_template table
DELETE FROM `reference_loot_template` WHERE item IN (6333);
-- Updated rank of Lady Vespira (creature 7016) as she is rare but not elite
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 7016;

-- Updated loot table of Skhowl (rare yeti, Alterac Mountains)
-- Source: http://www.wowwiki.com/Skhowl
-- Drop rate from UDB
DELETE FROM `creature_loot_template` WHERE `entry` = 2452 AND `item` = 3011;
INSERT INTO `creature_loot_template` VALUES (2452, 3011, 75, 2, 1, 1, 0);
UPDATE `creature_loot_template` SET `groupid` = 2, `ChanceOrQuestChance` = 0 WHERE `entry` = 2452 AND `item` = 6331; -- mutually exclusive group for rare Howling Blade
-- Item 6331 (Feathered Headdress) is not a world drop so removed it from reference_loot_template table
DELETE FROM `reference_loot_template` WHERE item IN (6331);
-- Updated rank of Skhowk (creature 2452) as he is rare but not elite
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 2452;

-- Lo'Grosh (rare ogre, Alterac Mountains)
-- Source: http://www.wowwiki.com/Lo%27Grosh?oldid=538294
-- Drop rate from UDB
DELETE FROM `creature_loot_template` WHERE `entry` = 2453 AND `item` = 4810;
INSERT INTO `creature_loot_template` VALUES (2453, 4810, 50, 2, 1, 1, 0); -- uncommon Boulder Pads
UPDATE `creature_loot_template` SET `groupid` = 2, `ChanceOrQuestChance` = 35 WHERE `entry` = 2453 AND `item` = 1678; -- mutually exclusive group for rare Black Ogre Kickers
UPDATE `creature_loot_template` SET `groupid` = 2, `ChanceOrQuestChance` = 0 WHERE `entry` = 2453 AND `item` = 6327; -- mutually exclusive group for rare The Pacifier
-- Item 4810 (Boulder Pads) is not a world drop so removed it from reference_loot_template table
DELETE FROM `reference_loot_template` WHERE `item` IN (4810);
-- Updated rank of Lo'Grosh (creature 2453) as he is rare but not elite
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 2453;

-- Mosh'Ogg Butcher (rare elite ogre, Stranglethorn Vale)
-- Source: http://www.wowwiki.com/Mosh%27Ogg_Butcher
DELETE FROM `creature_loot_template` WHERE `entry` = 723 AND `item` = 1680;
INSERT INTO `creature_loot_template` VALUES (723, 1680, 40, 0, 1, 1, 0); -- uncommon Headchopper IL 44 [39] 2H-Axe
-- Item 1680 (Headchopper) is not a world drop so removed it from reference_loot_template table
DELETE FROM `reference_loot_template` WHERE `item` IN (1680);
-- Updated rank of Mosh'Ogg Butcher (creature 723) as he is rare and elite
UPDATE `creature_template` SET `rank` = 2 WHERE `entry` = 723;
