-- ***************************************************************************************************
-- *                         Pledges and Gifts                                                       *
-- ***************************************************************************************************
-- Pledge of Adoration (SW)
-- Changing loot groups to reflect live
UPDATE `item_loot_template` SET `groupid`= 2 WHERE `entry`= 21975 AND `item` IN (21812, 21813, 22218, 22235, 22261, 22279);
UPDATE `item_loot_template` SET `groupid`= 1 WHERE `entry`= 21975 AND `item`= 22259;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`= 50 WHERE `entry`= 21975 AND `item`= 22117;
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (21975, 22143, 50, 0, 1, 1, 0);
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (21975, 22200, 14.0, 2, 1, 1, 0);

-- Pledge of Friendship(SW)
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (22178, 22143, 50, 0, 1, 1, 0);
UPDATE `item_loot_template` SET `ChanceOrQuestChance`= 50 WHERE `entry`= 22178 AND `item`= 22117;

-- Pledge of Adoration(Darnassus)
UPDATE `item_loot_template` SET `groupid`= 2 WHERE `entry`= 22155 AND `item` IN (21812, 21813, 22218, 22261, 22279);
UPDATE `item_loot_template` SET `groupid`= 1 WHERE `entry`= 22155 AND `item`= 22259;
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (22155, 22140, 50, 0, 1, 1, 0);
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (22155, 22200, 14.0, 2, 1, 1, 0);
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (22155, 22235, 1.8, 2, 1, 1, 0);
UPDATE `item_loot_template` SET `ChanceOrQuestChance`= 50 WHERE `entry`= 22155 AND `item`= 22120;

-- Pledge of Friendship(Darnassus)
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (22159, 22140, 50, 0, 1, 1, 0);
UPDATE `item_loot_template` SET `ChanceOrQuestChance`= 50 WHERE `entry`= 22159 AND `item`= 22120;

-- Pledge of Adoration(Ironforge)
UPDATE `item_loot_template` SET `groupid`= 2 WHERE `entry`= 22154 AND `item` IN (21812, 21813, 22218, 22235, 22261, 22279);
UPDATE `item_loot_template` SET `groupid`= 1 WHERE `entry`= 22154 AND `item`= 22259;
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (22154, 22141, 50, 0, 1, 1, 0);
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (22154, 22200, 14.0, 2, 1, 1, 0);
UPDATE `item_loot_template` SET `ChanceOrQuestChance`= 50 WHERE `entry`= 22154 AND `item`= 22119;

-- Pledge of Friendship(Ironforge)
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (22160, 22141, 50, 0, 1, 1, 0);
UPDATE `item_loot_template` SET `ChanceOrQuestChance`= 50 WHERE `entry`= 22160 AND `item`= 22119;

-- Gift of Adoration(Ironforge)
UPDATE `item_loot_template` SET `ChanceOrQuestChance`= 100 WHERE `entry`= 21980 AND `item`= 22173;
UPDATE `item_loot_template` SET `groupid`= 1 WHERE `entry`= 21980 AND `item` IN (21812, 21813, 22218, 22235, 22259, 22261, 22279);
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (21980, 22200, 14.0, 1, 1, 1, 0);

-- Gift of Adoration(SW)
UPDATE `item_loot_template` SET `ChanceOrQuestChance`= 100 WHERE `entry`= 21981 AND `item`= 22176;
UPDATE `item_loot_template` SET `groupid`= 1 WHERE `entry`= 21981 AND `item` IN (21812, 21813, 22218, 22235, 22259, 22261, 22279);
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (21981, 22200, 14.0, 1, 1, 1, 0);


-- Gift of Adoration(Darnassus)
UPDATE `item_loot_template` SET `ChanceOrQuestChance`= 100 WHERE `entry`= 21979 AND `item`= 21960;
UPDATE `item_loot_template` SET `groupid`= 1 WHERE `entry`= 21979 AND `item` IN (21812, 21813, 22218, 22259, 22261, 22279);
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (21979, 22200, 14.0, 1, 1, 1, 0);
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (21979, 22235, 1.9, 1, 1, 1, 0);

-- Pledge of Adoration(Orgrimmar)
UPDATE `item_loot_template` SET `groupid`= 2 WHERE `entry`= 22156 AND `item` IN (21812, 21813, 22218, 22235, 22261, 22279);
UPDATE `item_loot_template` SET `groupid`= 1 WHERE `entry`= 22156 AND `item`= 22259;
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (22156, 22142, 50, 0, 1, 1, 0);
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (22156, 22200, 14.0, 2, 1, 1, 0);
UPDATE `item_loot_template` SET `ChanceOrQuestChance`= 50 WHERE `entry`= 22156 AND `item`= 22123;

-- Pledge of Adoration(Undercity)
UPDATE `item_loot_template` SET `groupid`= 2 WHERE `entry`= 22157 AND `item` IN (21812, 21813, 22218, 22235, 22261, 22279);
UPDATE `item_loot_template` SET `groupid`= 1 WHERE `entry`= 22157 AND `item`= 22259;
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (22157, 22145, 50, 0, 1, 1, 0);
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (22157, 22200, 14.0, 2, 1, 1, 0);
UPDATE `item_loot_template` SET `ChanceOrQuestChance`= 50 WHERE `entry`= 22157 AND `item`= 22121;

-- Pledge of Adoration(Thunder Bluff)
UPDATE `item_loot_template` SET `groupid`= 2 WHERE `entry`= 22158 AND `item` IN (21812, 21813, 22218, 22261, 22279);
UPDATE `item_loot_template` SET `groupid`= 1 WHERE `entry`= 22158 AND `item`= 22259;
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (22158, 22144, 50, 0, 1, 1, 0);
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (22158, 22200, 14.0, 2, 1, 1, 0);
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (22158, 22235, 1.8, 2, 1, 1, 0);
UPDATE `item_loot_template` SET `ChanceOrQuestChance`= 50 WHERE `entry`= 22158 AND `item`= 22122;

-- Pledge of Friendship(Orgrimmar)
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (22161, 22142, 50, 0, 1, 1, 0);
UPDATE `item_loot_template` SET `ChanceOrQuestChance`= 50 WHERE `entry`= 22161 AND `item`= 22123;

-- Pledge of Friendship(Thunder Bluff)
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (22162, 22144, 50, 0, 1, 1, 0);
UPDATE `item_loot_template` SET `ChanceOrQuestChance`= 50 WHERE `entry`= 22162 AND `item`= 22122;

-- Pledge of Friendship(Undercity)
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (22163, 22145, 50, 0, 1, 1, 0);
UPDATE `item_loot_template` SET `ChanceOrQuestChance`= 50 WHERE `entry`= 22163 AND `item`= 22121;

