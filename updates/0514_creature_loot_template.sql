-- Fixed rank and loot of creature 7057 (Digmaster Shovelphlange) in Uldaman
-- as it is a rare creature. Removed from reference table one loot (9382) specific to him
-- Added missing loot item 9382 (Tromping Miner's Boots) to creature 7057 loot table
-- source: http://www.wowwiki.com/Digmaster_Shovelphlange
UPDATE `creature_template` SET `Rank` = 4 WHERE `Entry` = 7057;

DELETE FROM `reference_loot_template` WHERE `item` = 9382;
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 7057 AND `item` = 24056;
DELETE FROM `creature_loot_template` WHERE `entry` = 7057 AND `item` = 9382;
INSERT INTO `creature_loot_template` VALUES (7057, 9382, 60, 1, 1, 1, 0);
