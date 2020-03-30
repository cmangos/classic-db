-- Remove "Defias" Items from World Loot Table

-- https://classic.wowhead.com/item=832/silver-defias-belt#dropped-by
DELETE FROM `reference_loot_template` WHERE `item` = 832; -- 60107 - 60117
DELETE FROM `creature_loot_template` WHERE `entry` = 121 AND `item` = 832;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(121, 832, 4, 9, 1, 1, 0, 'Silver Defias Belt');

-- https://classic.wowhead.com/item=1076/defias-renegade-ring#dropped-by
DELETE FROM `reference_loot_template` WHERE `item` = 1076; -- 60127 - 60137
DELETE FROM `creature_loot_template` WHERE `entry` IN (1706,1707,1708,1711,1715) AND `item` = 1076;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(1706, 1076, 1, 9, 1, 1, 0, 'Defias Renegade Ring'),
(1707, 1076, 1, 9, 1, 1, 0, 'Defias Renegade Ring'),
(1708, 1076, 1, 9, 1, 1, 0, 'Defias Renegade Ring'),
(1711, 1076, 1, 9, 1, 1, 0, 'Defias Renegade Ring'),
(1715, 1076, 1, 9, 1, 1, 0, 'Defias Renegade Ring');

-- https://classic.wowhead.com/item=1077/defias-mage-ring#dropped-by
DELETE FROM `reference_loot_template` WHERE `item` = 1077; -- 24066, 60129 - 60139
DELETE FROM `creature_loot_template` WHERE `entry` = 910 AND `item` = 1077;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(910, 1077, 1, 9, 1, 1, 0, 'Defias Mage Ring');

DELETE FROM `reference_loot_template` WHERE `item` = 1925; -- 60109 - 60119
DELETE FROM `creature_loot_template` WHERE `entry` = 1725 AND `item` = 1925;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(1725, 1925, 5, 9, 1, 1, 0, 'Defias Rapier');

-- https://classic.wowhead.com/item=1928/defias-mage-staff#dropped-by
DELETE FROM `reference_loot_template` WHERE `item` = 1928; -- 60109 - 60119
DELETE FROM `creature_loot_template` WHERE `entry` = 1726 AND `item` = 1928;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(1726, 1928, 5, 9, 1, 1, 0, 'Defias Mage Staff');

-- https://classic.wowhead.com/item=10400/blackened-defias-leggings#dropped-by
DELETE FROM `reference_loot_template` WHERE `item` = 10400; -- 60113 - 60123
DELETE FROM `creature_loot_template` WHERE `entry` IN (634,4417) AND `item` = 10400;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(634, 10400, 4, 9, 1, 1, 0, 'Blackened Defias Leggings'),
(4417, 10400, 4, 9, 1, 1, 0, 'Blackened Defias Leggings');

-- https://classic.wowhead.com/item=10401/blackened-defias-gloves#dropped-by
DELETE FROM `reference_loot_template` WHERE `item` = 10401; -- 60113 - 60123
DELETE FROM `creature_loot_template` WHERE `entry` IN (634,4417) AND `item` = 10401;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(634, 10401, 4, 9, 1, 1, 0, 'Blackened Defias Gloves'),
(4417, 10401, 4, 9, 1, 1, 0, 'Blackened Defias Gloves');

-- https://classic.wowhead.com/item=10402/blackened-defias-boots#dropped-by
DELETE FROM `reference_loot_template` WHERE `item` = 10402; -- 60113 - 60123
DELETE FROM `creature_loot_template` WHERE `entry` = 4416 AND `item` = 10402;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(4416, 10402, 3, 9, 1, 1, 0, 'Blackened Defias Boots');
