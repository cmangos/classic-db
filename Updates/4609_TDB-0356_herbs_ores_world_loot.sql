-- Remove more herbs, ores and stone from loot templates where they do not belong
DELETE FROM `creature_loot_template` WHERE `item` IN (
3819, -- Wintersbite
8845, -- Ghost Mushroom
8846, -- Gromsblood
13463, -- Dreamfoil
13464, -- Golden Sansam
13465, -- Mountain Silversage
13467) -- Icecap
AND `entry` NOT IN (
12237,12258,13196,13197,13022,14448,6512,7100,7101,6510,6511,6218,13021,11459,13285,12224,5481,6509,7149,11465,1031,6517,6527,6519,6518,1030,11461,11464,5881,1081,
7138,11458,1032,4020,7139,5055,12220,3931,8384,11462,12219,6219,13142,7584,5775,12223,13141,1033,1813,1812,5490,4541,5485,4021,4385,14424,14303,4029,3834,3919,1955,1956,
501,4387,4382,3535,17353,4028,2166,1954,765,3733,1953,17352,766,764,5761,4386,3784,3782,3783,2030,2029,1040,2027,2022,15636,1039,3780,3781,1041,2025,15637,15635,
7104,4030,9601,10641,2655,3640,5235,6556,6557,6559,7086,12836,5354,940,1851,11489,14231,14433,8212); -- creaturetype 4 (tree and swamp npcs),10 (ooze) and "Herbalist" npcs

-- Dark Iron Ore 11370
DELETE FROM `creature_loot_template` WHERE `item` = 11370 AND `entry` NOT IN (8905,8906,8907,8908,9502,8923);

-- Heavy Stone 2838
DELETE FROM `creature_loot_template` WHERE `item` = 2838 AND `entry` IN (2734,6392,2793,6391,1552,5346,2603,3715,2850,2604);

-- https://www.wowhead.com/classic/npc=7849/mobile-alert-system
UPDATE `creature_template` SET `LootId` = 0 WHERE `entry` = 7849;
DELETE FROM `creature_loot_template` WHERE `entry` = 7849;

-- https://www.wowhead.com/classic/npc=10387/vengeful-phantom
UPDATE `creature_template` SET `LootId` = 0 WHERE `entry` = 10387;
DELETE FROM `creature_loot_template` WHERE `entry` = 10387;

-- https://www.wowhead.com/tbc/npc=13736/noxxious-essence
UPDATE `creature_template` SET `LootId` = 0 WHERE `entry` = 13736;

-- Coal 3857
DELETE FROM `creature_loot_template` WHERE `item` = 3857 AND `entry` IN (6329,6224,6211,6207,6206,6220,6391,6407);

-- Small Obsidian Shard 22202
DELETE FROM `creature_loot_template` WHERE `item` = 22202;

-- Large Obsidian Shard 22203
DELETE FROM `creature_loot_template` WHERE `item` = 22203;

-- Fel Iron Ore 23424
DELETE FROM `creature_loot_template` WHERE `item` = 23424;

-- Adamantite Ore 23425
DELETE FROM `creature_loot_template` WHERE `item` = 23425;

-- Khorium Ore 23426
DELETE FROM `creature_loot_template` WHERE `item` = 23426;

-- Eternium Ore 23427
DELETE FROM `creature_loot_template` WHERE `item` = 23427;

