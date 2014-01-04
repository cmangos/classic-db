-- Fixed loot table of creature 2108 (Garneg Charskull)
-- Removed related items from reference_loot_template
-- Source: http://www.wowwiki.com/Garneg_Charskull
-- Rates from UDB
DELETE FROM `reference_loot_template` WHERE `item` IN (3392, 6200);
DELETE FROM `creature_loot_template` WHERE `entry` = 2108 AND `item` IN (3392, 6200);
INSERT INTO `creature_loot_template` VALUES
(2108, 3392, 0, 2, 1, 1, 0),
(2108, 6200, 67, 2, 1, 1, 0);

-- Fixed loot table of creature 2476 (Large Lock Crocolisk)
-- Removed related items from reference_loot_template
-- Source: http://www.wowwiki.com/Large_Lock_Crocolisk
-- Rates from UDB
DELETE FROM `reference_loot_template` WHERE `item` IN (3563, 6197);
DELETE FROM `creature_loot_template` WHERE `entry` = 2476 AND `item` IN (3563, 6197);
INSERT INTO `creature_loot_template` VALUES
(2476, 3563, 70, 2, 1, 1, 0),
(2476, 6197, 0, 2, 1, 1, 0);

-- Fixed loot table of creature 596 (Brainwashed Noble)
-- Removed related items from reference_loot_template
-- Source: http://www.wowwiki.com/Brainwashed_Noble?oldid=1110892
-- Rates from UDB
DELETE FROM `reference_loot_template` WHERE `item` IN (3902, 5967);
DELETE FROM `creature_loot_template` WHERE `entry` = 596 AND `item` IN (3902, 5967);
INSERT INTO `creature_loot_template` VALUES
(596, 3902, 0, 2, 1, 1, 0),
(596, 5967, 70, 2, 1, 1, 0);

-- Fixed loot table of creature 5928 (Sorrow Wing)
-- Source: http://www.wowhead.com/npc=5928#drops:0+13-17+1
-- Rates from YTDB and reference_loot_template added
-- based on rates from similar creatures
UPDATE `creature_template` SET `lootid` = 5928 WHERE `entry` = 5928;
DELETE FROM `creature_loot_template` WHERE `entry` = 5928;
INSERT INTO `creature_loot_template` VALUES
(5928, 4633, 0.1672, 0, 1, 1, 0),
(5928, 5136, 10.2941, 0, 1, 1, 0),
(5928, 5137, 74.0196, 0, 1, 1, 0),
(5928, 5635, 4.6569, 0, 1, 1, 0),
(5928, 5637, 0.2451, 0, 1, 1, 0),
(5928, 5808, -6, 0, 1, 1, 0),
(5928, 24048, 1, 1, -24048, 1, 0),
(5928, 24058, 5, 1, -24058, 1, 0),
(5928, 24066, 0.5, 1, -24066, 1, 0),
(5928, 24068, 1, 1, -24068, 1, 0);

-- Fixed loot table of creature 771 (Commander Felstrom)
-- Removed related items from reference_loot_template
-- Source: http://www.wowwiki.com/Commander_Felstrom?oldid=537889
-- Rates from UDB
DELETE FROM `reference_loot_template` WHERE `item` IN (4465, 4464);
DELETE FROM `creature_loot_template` WHERE `entry` = 771 AND `item` IN (4464, 4465);
INSERT INTO `creature_loot_template` VALUES
(771, 4464, 0, 2, 1, 1, 0),
(771, 4465, 0, 2, 1, 1, 0);

-- Fixed loot table of creature 7361 (Grubbis)
-- Source: http://www.wowhead.com/npc=7361#drops
-- Reference_loot_template added
-- based on rates from similar creatures
DELETE FROM `creature_loot_template` WHERE `entry` = 7361 AND `item` IN (24058, 24068, 24050, 11004);
INSERT INTO `creature_loot_template` VALUES
(7361, 11004, 1, 1, -11004, 1, 0),
(7361, 24058, 5, 1, -24058, 1, 0),
(7361, 24050, 1, 1, -24050, 1, 0),
(7361, 24068, 1, 1, -24068, 1, 0);