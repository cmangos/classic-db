-- Corrected Rares for Zones:
-- Elwynn Forest
-- Westfall
-- Redridge Mountains
-- Duskwood
-- Source WayBack Machine Allakhazam

-- Fedfennel 472
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 67, `groupid` = 2 WHERE `item` = 3233;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 30 WHERE `entry` = 472 AND `item` = 2589;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 10 WHERE `entry` = 472 AND `item` = 117;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 8 WHERE `entry` = 472 AND `item` = 118;
DELETE FROM `creature_loot_template` WHERE `entry` = 472 AND `item` = 5744;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (472, 5744, 33, 2, 1, 1, 0);

-- Gruff Swiftbite 100
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 25 WHERE `entry` = 100 AND `item` = 2589;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 6 WHERE `entry` = 100 AND `item` = 117;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 2 WHERE `entry` = 100 AND `item` = 118;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 3 WHERE `entry` = 100 AND `item` = 159;
DELETE FROM `creature_loot_template` WHERE `entry` = 100 AND `item` = 5503;
DELETE FROM `creature_loot_template` WHERE `entry` = 100 AND `item` = 5504;

-- Morgaine the Sly 99
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 20, `groupid` = 2 WHERE `item` = 1917;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 80, `groupid` = 2 WHERE `item` = 6201;

-- Mother Fang 471
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 30 WHERE `entry` = 471 AND `item` = 3174;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 45 WHERE `entry` = 471 AND `item` = 1476;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 100, `groupid` = 2 WHERE `entry` = 471 AND `item` = 5465;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 10, `groupid` = 3 WHERE `item` = 3000;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 90, `groupid` = 3 WHERE `item` = 6148;

-- Narg the Taskmaster 79
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 20, `groupid` = 2 WHERE `item` = 1913;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 80, `groupid` = 2 WHERE `item` = 6147;

-- Thuros Lightfingers 61
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 70, `groupid` = 2 WHERE `item` = 6202;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 30, `groupid` = 2 WHERE `item` = 6203;

-- Brack 520
DELETE FROM `creature_loot_template` WHERE `entry` = 520 AND `item` IN (2235, 6179);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (520, 2235, 60, 2, 1, 1, 0);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (520, 6179, 40, 2, 1, 1, 0);

-- Foe Reaper 4000 573
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 75, `groupid` = 2 WHERE `item` = 933;
DELETE FROM `creature_loot_template` WHERE `entry` = 573 AND `item` = 4434;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (573, 4434, 25, 2, 1, 1, 0);

-- Leprithus 572
DELETE FROM `creature_loot_template` WHERE `entry` = 572 AND `item` IN (1314, 1387);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (572, 1314, 75, 2, 1, 1, 0);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (572, 1387, 25, 2, 1, 1, 0);

-- Master Digger 1424
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 75, `groupid` = 2 WHERE `item` = 6206;
DELETE FROM `creature_loot_template` WHERE `entry` = 1424 AND `item` = 6205;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (1424, 6205, 25, 2, 1, 1, 0);

-- Seargeant Brashclaw 506
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 25, `groupid` = 2 WHERE `item` = 2203;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 75, `groupid` = 2 WHERE `item` = 2204;

-- Slark 519
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 40, `groupid` = 2 WHERE `item` = 3188;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 60, `groupid` = 2 WHERE `item` = 6180;

-- Vultros 462
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 30, `groupid` = 2 WHERE `item` = 4454;
DELETE FROM `creature_loot_template` WHERE `entry` = 462 AND `item` = 5971;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (462, 5971, 70, 2, 1, 1, 0);

-- Kazon 584
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 75, `groupid` = 2 WHERE `item` = 3231;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 25, `groupid` = 2 WHERE `item` = 4058;

-- Rohh the Silent 947
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 20, `groupid` = 2 WHERE `item` = 4446;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 80, `groupid` = 2 WHERE `item` = 4447;

-- Commander Felstron 771
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 50, `groupid` = 2 WHERE `item` = 4464;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 50, `groupid` = 2 WHERE `item` = 4465;

-- Fenros 507
DELETE FROM `creature_loot_template` WHERE `entry` = 507 AND `item` IN (4474, 6204);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (507, 4474, 67, 2, 1, 1, 0);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (507, 6204, 33, 2, 1, 1, 0);

-- Lord Malathrom 503
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 50, `groupid` = 2 WHERE `item` = 4462;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 15 WHERE `entry` = 503 AND `item` = 6530;
DELETE FROM `creature_loot_template` WHERE `entry` = 503 AND `item` = 1187;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (503, 1187, 50, 2, 1, 1, 0);

-- Lupos 521
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 80 WHERE `item` = 3018;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 20 WHERE `item` = 3227;

-- Naraxis 574
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 50, `groupid` = 2 WHERE `item` = 4448;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 50, `groupid` = 2 WHERE `item` = 4449;

-- Nefaru 534
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 25 WHERE `item` = 4476;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 75 WHERE `item` = 4477;
