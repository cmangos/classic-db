-- Correct Stats for Pyrewood Village Npcs (2.4++)
-- Add VendorItems for Pyrewood Npcs
-- Add path for Pyrewood Tailor 3530
-- Resolves: https://github.com/cmangos/issues/issues/1674
-- Pyrewood Area became nonelite somewhere between 7799_V2_3_3_7799 and 9183_V3_0_3_9183
-- http://www.wowhead.com/quest=99/arugals-folly#comments:id=229671:reply=29513
-- http://www.wowhead.com/quest=450/a-recipe-for-death#comments:id=283546
-- https://www.wowhead.com/quest=452/pyrewood-ambush#comments:id=307673
-- Most values were already corrected in wotlk-db
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='1891'; -- Pyrewood Watcher (3H)(1P)(1D)(1A)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `MinLootGold`='57', `MaxLootGold`='80', `PickpocketLootId`='1892', `SkinningLootId`='1892', `ResistanceShadow`='5' WHERE `entry`='1892'; -- Moonrage Watcher (3H)(1P)(1D)(1A)

DELETE FROM `skinning_loot_template` WHERE `entry` = 1892;
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(1892, 783, 4.6667, 1, 1, 1, 0, 'Light Hide'),
(1892, 2318, 60.3333, 1, 1, 1, 0, 'Light Leather'),
(1892, 2934, 35, 1, 1, 1, 0, 'Ruined Leather Scraps');

DELETE FROM `pickpocketing_loot_template` WHERE `entry` = 1892;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(1892, 2287, 13.3333, 0, 1, 1, 0, 'Haunch of Meat'),
(1892, 5369, 6.6667, 0, 1, 1, 0, 'Gnawed Bone');

UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `MinLootGold`='63', `MaxLootGold`='87', `PickpocketLootId`='1893', `SkinningLootId`='1893', `ResistanceShadow`='5' WHERE `entry`='1893'; -- Moonrage Sentry (3H)(1P)(1D)(1A)

DELETE FROM `skinning_loot_template` WHERE `entry` = 1893;
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(1893, 783, 4.3478, 1, 1, 1, 0, 'Light Hide'),
(1893, 2318, 63.6364, 1, 1, 1, 0, 'Light Leather'),
(1893, 2934, 32.0158, 1, 1, 1, 0, 'Ruined Leather Scraps');

DELETE FROM `pickpocketing_loot_template` WHERE `entry` = 1893;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(1893, 858, 18.75, 0, 1, 1, 0, 'Lesser Healing Potion'),
(1893, 1210, 6.25, 0, 1, 1, 0, 'Shadowgem'),
(1893, 5369, 25, 0, 1, 1, 0, 'Gnawed Bone');

UPDATE `creature_template` SET `SpeedWalk`='1', `MeleeBaseAttackTime`='2000', `MinLootGold`='47', `MaxLootGold`='85', `PickpocketLootId`='1896', `SkinningLootId`='1896', `ResistanceShadow`='5' WHERE `entry`='1896'; -- Moonrage Elder (3H)(1P)(1D)(1A)

DELETE FROM `skinning_loot_template` WHERE `entry` = 1896;
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(1896, 783, 2.8369, 1, 1, 1, 0, 'Light Hide'),
(1896, 2318, 65.9574, 1, 1, 1, 0, 'Light Leather'),
(1896, 2934, 31.2057, 1, 1, 1, 0, 'Ruined Leather Scraps');

DELETE FROM `pickpocketing_loot_template` WHERE `entry` = 1896;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`)
VALUES (1896, 2287, 14.2857, 0, 1, 1, 0, 'Haunch of Meat'),
(1896, 5369, 7.1429, 0, 1, 1, 0, 'Gnawed Bone');

UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `MinLootGold`='50', `MaxLootGold`='70' WHERE `entry`='2060'; -- Councilman Smithers (3H)(1P)(1D)(1A)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `MinLootGold`='57', `MaxLootGold`='80' WHERE `entry`='2061'; -- Councilman Thatcher (3H)(1P)(1D)(1A)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `MinLootGold`='56', `MaxLootGold`='78' WHERE `entry`='2062'; -- Councilman Hendricks (3H)(1P)(1D)(1A)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `MinLootGold`='58', `MaxLootGold`='80' WHERE `entry`='2063'; -- Councilman Wilhelm (3H)(1P)(1D)(1A)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `MinLootGold`='56', `MaxLootGold`='78' WHERE `entry`='2064'; -- Councilman Hartin (3H)(1P)(1D)(1A)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `MinLootGold`='54', `MaxLootGold`='75' WHERE `entry`='2065'; -- Councilman Cooper (3H)(1P)(1D)(1A)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `MinLootGold`='57', `MaxLootGold`='80' WHERE `entry`='2066'; -- Councilman Higarth (3H)(1P)(1D)(1A)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `MinLootGold`='54', `MaxLootGold`='76' WHERE `entry`='2067'; -- Councilman Brunswick (3H)(1P)(1D)(1A)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `MinLootGold`='65', `MaxLootGold`='90' WHERE `entry`='2068'; -- Lord Mayor Morrison (3H)(1P)(1D)(1A)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='2106'; -- Apothecary Berard (3H)(1P)(1D)(1A)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `VendorTemplateId`='239' WHERE `entry`='3528'; -- Pyrewood Armorer (3H)(1P)(1D)(1.5A)
UPDATE `creature_template` SET `SpeedWalk`='1', `MeleeBaseAttackTime`='2000', `MinLootGold`='63', `MaxLootGold`='88', `SkinningLootId`='3529', `ResistanceShadow`='5' WHERE `entry`='3529'; -- Moonrage Armorer (3H)(1P)(1D)(1.5A)

DELETE FROM `skinning_loot_template` WHERE `entry` = 3529;
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(3529, 2318, 50, 1, 1, 1, 0, 'Light Leather'),
(3529, 2934, 50, 1, 1, 1, 0, 'Ruined Leather Scraps');

UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `VendorTemplateId`='201' WHERE `entry`='3530'; -- Pyrewood Tailor (3H)(1P)(1D)(1A)
UPDATE `creature_template` SET `SpeedWalk`='1', `MeleeBaseAttackTime`='2000', `MinLootGold`='63', `MaxLootGold`='87', `SkinningLootId`='3531', `ResistanceShadow`='5' WHERE `entry`='3531'; -- Moonrage Tailor (3H)(1P)(1D)(1A)

DELETE FROM `skinning_loot_template` WHERE `entry` = 3531;
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(3531, 783, 6.25, 1, 1, 1, 0, 'Light Hide'),
(3531, 2318, 56.25, 1, 1, 1, 0, 'Light Leather'),
(3531, 2934, 37.5, 1, 1, 1, 0, 'Ruined Leather Scraps');

UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000', `VendorTemplateId`='218' WHERE `entry`='3532'; -- Pyrewood Leatherworker (3H)(1P)(1D)(1.5A)
UPDATE `creature_template` SET `SpeedWalk`='1', `MeleeBaseAttackTime`='2000', `MinLootGold`='62', `MaxLootGold`='86', `SkinningLootId`='3533', `ResistanceShadow`='5' WHERE `entry`='3533'; -- Moonrage Leatherworker (3H)(1P)(1D)(1.5A)

DELETE FROM `skinning_loot_template` WHERE `entry` = 3533;
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(3533, 2934, 100, 1, 1, 1, 0, 'Ruined Leather Scraps');

UPDATE `creature` SET `spawndist` = 1, `MovementType` = 1 WHERE `id` = 2106; -- https://www.wowhead.com/npc=2106/apothecary-berard#screenshots:id=29703
UPDATE `creature` SET `spawndist` = 3 WHERE `guid` IN (19224,19229); -- walks into wall
UPDATE `creature` SET `position_x` = -328.9885, `position_y` = 1531.251, `position_z` = 18.00105, `orientation` = 4.031711, `MovementType` = 2 WHERE `id` = 3530;
DELETE FROM `creature_movement_template` WHERE `entry` = 3530;
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`) VALUES
(3530, 0, 1, -331.5994, 1512.646, 17.06103, 100, 0),
(3530, 0, 2, -338.3188, 1509.113, 18.79338, 100, 0),
(3530, 0, 3, -345.9572, 1504.301, 18.79903, 100, 0),
(3530, 0, 4, -354.1824, 1497.598, 18.80909, 100, 0),
(3530, 0, 5, -360.7778, 1495.355, 17.22692, 100, 10000), -- old position Position: X: -360.2778, 1495.027, 17.19595, 0.8305263 i dont think path is concluded here
(3530, 0, 6, -354.1824, 1497.598, 18.80909, 100, 0),
(3530, 0, 7, -345.9572, 1504.301, 18.79903, 100, 0),
(3530, 0, 8, -338.3188, 1509.113, 18.79338, 100, 0),
(3530, 0, 9, -331.5994, 1512.646, 17.06103, 100, 0),
(3530, 0, 10, -328.9885, 1531.251, 18.00105, 4.031711, 60000);

DELETE FROM `npc_vendor` WHERE `entry` = 3528; -- additonal items apart from VendorTemplateId
INSERT INTO `npc_vendor` (`entry`, `item`) VALUES (3528, 1202),(3528, 17187);

DELETE FROM `npc_vendor_template` WHERE `entry` IN (201,218,239);
INSERT INTO `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `condition_id`, `comments`) VALUES
(201, 792, 0, 0, 0, 0, 'Knitted Sandals'),
(201, 793, 0, 0, 0, 0, 'Knitted Gloves'),
(201, 794, 0, 0, 0, 0, 'Knitted Pants'),
(201, 795, 0, 0, 0, 0, 'Knitted Tunic'),
(201, 3602, 0, 0, 0, 0, 'Knitted Belt'),
(201, 3603, 0, 0, 0, 0, 'Knitted Bracers'),
(218, 796, 0, 0, 0, 0, 'Rough Leather Boots'),
(218, 797, 0, 0, 0, 0, 'Rough Leather Gloves'),
(218, 798, 0, 0, 0, 0, 'Rough Leather Pants'),
(218, 799, 0, 0, 0, 0, 'Rough Leather Vest'),
(218, 1839, 0, 0, 0, 0, 'Rough Leather Belt'),
(218, 1840, 0, 0, 0, 0, 'Rough Leather Bracers'),
(239, 847, 0, 0, 0, 0, 'Chainmail Armor'),
(239, 848, 0, 0, 0, 0, 'Chainmail Pants'),
(239, 849, 0, 0, 0, 0, 'Chainmail Boots'),
(239, 850, 0, 0, 0, 0, 'Chainmail Gloves'),
(239, 1845, 0, 0, 0, 0, 'Chainmail Belt'),
(239, 1846, 0, 0, 0, 0, 'Chainmail Bracers');

