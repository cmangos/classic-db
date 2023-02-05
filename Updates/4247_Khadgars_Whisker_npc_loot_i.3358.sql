-- Remove Khadgar's Whisker 3358 from most Loot Templates it does not belong in
-- Based on https://github.com/cmangos/tbc-db/blob/c3979a1e768be9cfa559df918a723fd60a7b8629/Updates/0198_i.2449_npc_loot.sql
-- wowhead confirmed: 4382,940,764,766,765,4386,5881,4387,4385,13285,5490,5485,7584,13142,1812,8384,13141,12219,12220,12223,
-- 7139,13021,6518,6519,6517,11462,5481,12224,6509,6512,6527,6511,7100,7101,13022,6510
DELETE FROM `creature_loot_template` WHERE `item` = 3358 AND `entry` NOT IN (
12237,12258,13196,13197,13022,14448,6512,7100,7101,6510,6511,6218,13021,11459,13285,12224,5481,6509,7149,11465,1031,6517,6527,6519,6518,1030,11461,11464,5881,1081,
7138,11458,1032,4020,7139,5055,12220,3931,8384,11462,12219,6219,13142,7584,5775,12223,13141,1033,1813,1812,5490,4541,5485,4021,4385,14424,14303,4029,3834,3919,1955,1956,
501,4387,4382,3535,17353,4028,2166,1954,765,3733,1953,17352,766,764,5761,4386,3784,3782,3783,2030,2029,1040,2027,2022,15636,1039,3780,3781,1041,2025,15637,15635,
7104,4030,9601,10641,2655,3640,5235,6556,6557,6559,7086,12836,5354,940); -- creaturetype 4 (tree and swamp npcs),10 (ooze) and "Herbalist" (creaturetype 7) mobs

-- Bonus:

-- Remove Loot Table for https://www.wowhead.com/classic/npc=698/bloodscalp-tiger - corrupted
UPDATE `creature_template` SET `LootId` = 0 WHERE `entry` = 698;
DELETE FROM `creature_loot_template` WHERE `entry` = 698;

-- Remove Loot Table for https://www.wowhead.com/classic/npc=7765/rockbiter - corrupted
UPDATE `creature_template` SET `LootId` = 0 WHERE `entry` = 7765;
DELETE FROM `creature_loot_template` WHERE `entry` = 7765;

