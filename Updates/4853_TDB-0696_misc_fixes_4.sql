-- Heavy Hide DropChance

-- classic/tbc/wotlk diff, align for classic...
-- Table 'skinning_loot_template' entry 1511 isn't creature skinning id and not referenced from loot, and then useless.
-- Table 'skinning_loot_template' entry 1514 isn't creature skinning id and not referenced from loot, and then useless.
-- Table 'skinning_loot_template' entry 1516 isn't creature skinning id and not referenced from loot, and then useless.
-- Table 'skinning_loot_template' entry 4342 isn't creature skinning id and not referenced from loot, and then useless.
-- Table 'skinning_loot_template' entry 4355 isn't creature skinning id and not referenced from loot, and then useless.
-- Table 'skinning_loot_template' entry 4396 isn't creature skinning id and not referenced from loot, and then useless.
-- Table 'skinning_loot_template' entry 4398 isn't creature skinning id and not referenced from loot, and then useless.
-- Table 'skinning_loot_template' entry 4399 isn't creature skinning id and not referenced from loot, and then useless.
-- Table 'skinning_loot_template' entry 4400 isn't creature skinning id and not referenced from loot, and then useless.
-- Table 'skinning_loot_template' entry 4504 isn't creature skinning id and not referenced from loot, and then useless.
-- Table 'skinning_loot_template' entry 4660 isn't creature skinning id and not referenced from loot, and then useless.
-- Table 'skinning_loot_template' entry 6071 isn't creature skinning id and not referenced from loot, and then useless.
-- Table 'skinning_loot_template' entry 6215 isn't creature skinning id and not referenced from loot, and then useless.
-- Table 'skinning_loot_template' entry 8138 isn't creature skinning id and not referenced from loot, and then useless.
-- Table 'skinning_loot_template' entry 10882 isn't creature skinning id and not referenced from loot, and then useless.
-- Table 'skinning_loot_template' entry 14232 isn't creature skinning id and not referenced from loot, and then useless.
-- Table 'skinning_loot_template' entry 14233 isn't creature skinning id and not referenced from loot, and then useless.
-- Table 'skinning_loot_template' entry 100002 isn't creature skinning id and not referenced from loot, and then useless.
UPDATE `creature_template` SET `SkinningLootId` = `entry` WHERE `entry` IN ( -- diff over item 4235
1511, -- 2,9878 - https://www.wowhead.com/classic/npc=1511/enraged-silverback-gorilla#skinning
1514, -- 2,2989 - https://www.wowhead.com/classic/npc=1514/mokk-the-savage#skinning
1516, -- 1,3423 - https://www.wowhead.com/classic/npc=1516/konda#skinning
4342, -- 3 - https://www.wowhead.com/classic/npc=4342/drywallow-vicejaw#skinning
4355, -- 3 - https://www.wowhead.com/classic/npc=4355/bloodfen-scytheclaw#skinning
4396, -- 3 - https://www.wowhead.com/classic/npc=4396/mudrock-tortoise#skinning
4398, -- 3 - https://www.wowhead.com/classic/npc=4398/mudrock-burrower#skinning
4399, -- 2 - https://www.wowhead.com/classic/npc=4399/mudrock-borer#skinning
4400, -- 4 - https://www.wowhead.com/classic/npc=4400/mudrock-snapjaw#skinning
4504, -- 1,9231 - https://www.wowhead.com/classic/npc=4504/frostmaw#skinning
6071, -- 2,2718 - https://www.wowhead.com/classic/npc=6071/legion-hound#skinning
6215, -- 1,7857 - https://www.wowhead.com/classic/npc=6215/chomper#skinning
8138, -- 6,0672 - https://www.wowhead.com/classic/npc=8138/sullithuz-broodling#skinning
10882, -- 0,8368 - https://www.wowhead.com/classic/npc=10882/arikara#skinning
14232, -- 3,81 - https://www.wowhead.com/classic/npc=14232/dart#skinning
14233 -- 3,077 - https://www.wowhead.com/classic/npc=14233/ripscale#skinning - reinserts for classicmangos only (classic went wrong somehow)
);
-- REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES (1511, 4235, 2.9878, 1, 1, 1, 0, 'Heavy Hide');
-- REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES (1514, 4235, 2.2989, 1, 1, 1, 0, 'Heavy Hide');
-- REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES (1516, 4235, 1.3423, 1, 1, 1, 0, 'Heavy Hide');
-- REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES (4342, 4235, 3, 1, 1, 1, 0, 'Heavy Hide');
-- REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES (4355, 4235, 3, 1, 1, 1, 0, 'Heavy Hide');
-- REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES (4396, 4235, 3, 1, 1, 1, 0, 'Heavy Hide');
-- REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES (4398, 4235, 3, 1, 1, 1, 0, 'Heavy Hide');
-- REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES (4399, 4235, 2, 1, 1, 1, 0, 'Heavy Hide');
-- REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES (4400, 4235, 4, 1, 1, 1, 0, 'Heavy Hide');
-- REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES (4504, 4235, 1.9231, 1, 1, 1, 0, 'Heavy Hide');
-- REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES (6071, 4235, 2.2718, 1, 1, 1, 0, 'Heavy Hide');
-- REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES (6215, 4235, 1.7857, 1, 1, 1, 0, 'Heavy Hide');
-- REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES (8138, 4235, 6.0672, 1, 1, 1, 0, 'Heavy Hide');
-- REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES (10882, 4235, 0.8368, 1, 1, 1, 0, 'Heavy Hide');
-- REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES (14232, 4235, 3.81, 1, 1, 1, 0, 'Heavy Hide');
-- REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES (14233, 4235, 3.077, 1, 1, 1, 0, 'Heavy Hide');
DELETE FROM `skinning_loot_template` WHERE `entry` IN (1511,1514,1516,4342,4355,4396,4398,4399,4400,4504,6071,6215,8138,10882,14232,14233);
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES -- readd diff from other cmangos versions, not best, but better.
(1511, 4234, 43.872, 1, 1, 1, 0, 'Heavy Leather'),
(1511, 4235, 2.9878, 1, 1, 1, 0, 'Heavy Hide'),
(1511, 4304, 49.5427, 1, 1, 1, 0, 'Thick Leather'),
(1511, 8169, 3.5976, 1, 1, 1, 0, 'Thick Hide'),
(1514, 4234, 44.4444, 1, 1, 1, 0, 'Heavy Leather'),
(1514, 4235, 2.2989, 1, 1, 1, 0, 'Heavy Hide'),
(1514, 4304, 49.4253, 1, 1, 1, 0, 'Thick Leather'),
(1514, 8169, 3.8314, 1, 1, 1, 0, 'Thick Hide'),
(1516, 4234, 36.9128, 1, 1, 1, 0, 'Heavy Leather'),
(1516, 4235, 1.3423, 1, 1, 1, 0, 'Heavy Hide'),
(1516, 4304, 54.698, 1, 1, 1, 0, 'Thick Leather'),
(1516, 8169, 5.0336, 1, 1, 1, 0, 'Thick Hide'),
(4342, 4234, 77, 1, 1, 1, 0, 'Heavy Leather'),
(4342, 4235, 3, 1, 1, 1, 0, 'Heavy Hide'),
(4342, 4304, 20, 1, 1, 1, 0, 'Thick Leather'),
(4355, 4234, 77, 1, 1, 1, 0, 'Heavy Leather'),
(4355, 4235, 3, 1, 1, 1, 0, 'Heavy Hide'),
(4355, 4304, 20, 1, 1, 1, 0, 'Thick Leather'),
(4396, 4234, 80, 1, 1, 1, 0, 'Heavy Leather'),
(4396, 4235, 3, 1, 1, 1, 0, 'Heavy Hide'),
(4396, 4304, 17, 1, 1, 1, 0, 'Thick Leather'),
(4396, 8167, 25, 2, 1, 1, 0, 'Turtle Scale'),
(4398, 4234, 77, 1, 1, 1, 0, 'Heavy Leather'),
(4398, 4235, 3, 1, 1, 1, 0, 'Heavy Hide'),
(4398, 4304, 20, 1, 1, 1, 0, 'Thick Leather'),
(4398, 8167, 25, 2, 1, 1, 0, 'Turtle Scale'),
(4399, 4234, 40, 1, 1, 1, 0, 'Heavy Leather'),
(4399, 4235, 2, 1, 1, 1, 0, 'Heavy Hide'),
(4399, 4304, 52, 1, 1, 1, 0, 'Thick Leather'),
(4399, 8167, 50, 2, 1, 1, 0, 'Turtle Scale'),
(4399, 8169, 6, 1, 1, 1, 0, 'Thick Hide'),
(4400, 4234, 42, 1, 1, 1, 0, 'Heavy Leather'),
(4400, 4235, 4, 1, 1, 1, 0, 'Heavy Hide'),
(4400, 4304, 51, 1, 1, 1, 0, 'Thick Leather'),
(4400, 8167, 49, 2, 1, 1, 0, 'Turtle Scale'),
(4400, 8169, 3, 1, 1, 1, 0, 'Thick Hide'),
(4504, 4234, 81.7308, 1, 1, 1, 0, 'Heavy Leather'),
(4504, 4235, 1.9231, 1, 1, 1, 0, 'Heavy Hide'),
(4504, 4304, 16.3462, 1, 1, 1, 0, 'Thick Leather'),
(6071, 2319, 72.9554, 1, 1, 1, 0, 'Medium Leather'),
(6071, 4232, 5.1956, 1, 1, 1, 0, 'Medium Hide'),
(6071, 4234, 19.5575, 1, 1, 1, 0, 'Heavy Leather'),
(6071, 4235, 2.2718, 1, 1, 1, 0, 'Heavy Hide'),
(6215, 2319, 55.3571, 1, 1, 2, 0, 'Medium Leather'),
(6215, 4232, 14.2857, 1, 1, 1, 0, 'Medium Hide'),
(6215, 4234, 28.5714, 1, 1, 2, 0, 'Heavy Leather'),
(6215, 4235, 1.7857, 1, 1, 1, 0, 'Heavy Hide'),
(8138, 4234, 69.7725, 1, 1, 2, 0, 'Heavy Leather'),
(8138, 4235, 6.0672, 1, 1, 1, 0, 'Heavy Hide'),
(8138, 4304, 24.1603, 1, 1, 2, 0, 'Thick Leather'),
(10882, 2319, 73.2218, 1, 1, 1, 0, 'Medium Leather'),
(10882, 4232, 5.4393, 1, 1, 1, 0, 'Medium Hide'),
(10882, 4234, 20.5021, 1, 1, 1, 0, 'Heavy Leather'),
(10882, 4235, 0.8368, 1, 1, 1, 0, 'Heavy Hide'),
(14232, 4234, 0, 1, 1, 1, 0, 'Heavy Leather'),
(14232, 4235, 3.81, 1, 1, 1, 0, 'Heavy Hide'),
(14232, 4304, 18.095, 1, 1, 1, 0, 'Thick Leather'),
(14233, 4234, 0, 1, 1, 1, 0, 'Heavy Leather'),
(14233, 4235, 3.077, 1, 1, 1, 0, 'Heavy Hide'),
(14233, 4304, 24.615, 1, 1, 1, 0, 'Thick Leather');

-- https://github.com/cmangos/classic-db/commit/8bac77a1b455461779d6339a4dd5fb24d5556796#r179609522 - mistake in commit
-- https://www.wowhead.com/tbc/npc=2447/narillasanz#skinning
DELETE FROM `skinning_loot_template` WHERE `entry` = 2447;
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(2447, 4234, 40, 1, 1, 2, 0, 'Heavy Leather'),
(2447, 4235, 5, 1, 1, 1, 0, 'Heavy Hide'),
(2447, 4304, 50, 1, 1, 2, 0, 'Thick Leather'),
(2447, 8169, 5, 1, 1, 1, 0, 'Thick Hide'),
(2447, 8165, 10, 2, 1, 1, 0, 'Worn Dragonscale');

-- more wrong templates, we dont want abuse

-- https://www.wowhead.com/tbc/npc=10136/chemist-fuely
UPDATE `creature_template` SET `SkinningLootId` = 0 WHERE `entry` = 10136;
DELETE FROM `skinning_loot_template` WHERE `entry` = 10136;

-- https://www.wowhead.com/tbc/npc=756/skullsplitter-panther
UPDATE `creature_template` SET `SkinningLootId` = 0 WHERE `entry` = 756;
DELETE FROM `skinning_loot_template` WHERE `entry` = 10240; -- this entry was used somehow in tbc... ø should not exist

-- https://www.wowhead.com/tbc/npc=10237/yor-unused
UPDATE `creature_template` SET `SkinningLootId` = 0 WHERE `entry` = 10237;
DELETE FROM `skinning_loot_template` WHERE `entry` = 10237;

-- https://www.wowhead.com/tbc/npc=12741/warrior-40-more-leash
UPDATE `creature_template` SET `SkinningLootId` = 0 WHERE `entry` = 12741;
DELETE FROM `skinning_loot_template` WHERE `entry` = 12741;

-- vmangos unique temlpates better then our currents
-- https://www.wowhead.com/classic/npc=7997/captured-sprite-darter#skinning
UPDATE `creature_template` SET `SkinningLootId` = 7997 WHERE `entry` = 7997;
DELETE FROM `skinning_loot_template` WHERE `entry` = 7997;
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(7997, 4234, 44, 1, 1, 1, 0), -- Heavy Leather
(7997, 4235, 3, 1, 1, 1, 0), -- Heavy Hide
(7997, 4304, 44, 1, 1, 1, 0), -- Thick Leather
(7997, 8165, 3, 1, 1, 1, 0), -- Worn Dragonscale
(7997, 8169, 6, 1, 1, 1, 0); -- Thick Hide

UPDATE `creature_template` SET `SkinningLootId` = 14280 WHERE `entry` = 14280;
DELETE FROM `skinning_loot_template` WHERE `entry` = 14280;
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(14280, 2319, 60, 1, 1, 1, 0), -- Medium Leather
(14280, 4234, 35, 1, 1, 1, 0), -- Heavy Leather
(14280, 4235, 5, 1, 1, 1, 0); -- Heavy Hide

-- https://www.wowhead.com/wotlk/npc=976/kurzen-war-tiger#skinning
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 3 WHERE `entry` = 976 AND `item` = 4232; -- Medium Hide
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 47 WHERE `entry` = 976 AND `item` = 2319; -- Medium Leather
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 47 WHERE `entry` = 976 AND `item` = 4234; -- Heavy Leather
REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(976, 4235, 3, 1, 1, 1, 0, 'Heavy Hide');

-- https://www.wowhead.com/classic/npc=2347/wild-gryphon#skinning
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 77 WHERE `entry` = 2347 AND `item` = 4234; -- Heavy Leather
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 22 WHERE `entry` = 2347 AND `item` = 4304; -- Thick Leather
REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(2347, 4235, 1, 1, 1, 1, 0, 'Heavy Hide');

-- https://www.wowhead.com/classic/npc=4339/brimgore#skinning
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 30 WHERE `entry` = 4339 AND `item` = 4234; -- Heavy Leather
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 65 WHERE `entry` = 4339 AND `item` = 4304; -- Thick Leather
DELETE FROM `skinning_loot_template` WHERE `entry` = 4339 AND `item` = 8169; -- Thick Hide
UPDATE `skinning_loot_template` SET `groupid` = 0 WHERE `entry` = 4339 AND `item` = 8165; -- Worn Dragonscale
REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(4339, 4235, 5, 1, 1, 1, 0, 'Heavy Hide');

-- https://www.wowhead.com/classic/npc=4425/blind-hunter#skinning
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 50 WHERE `entry` = 4425 AND `item` = 4234; -- Heavy Leather
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 40 WHERE `entry` = 4425 AND `item` = 2319; -- Medium Leather
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 5 WHERE `entry` = 4425 AND `item` = 4232; -- Medium Hide
REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(4425, 4235, 5, 1, 1, 1, 0, 'Heavy Hide');

-- https://www.wowhead.com/classic/npc=4660/maraudine-bonepaw#skinning
-- Table 'skinning_loot_template' entry 4660 isn't creature skinning id and not referenced from loot, and then useless.
UPDATE `creature_template` SET `SkinningLootId` = 4660 WHERE `entry` = 4660;
DELETE FROM `skinning_loot_template` WHERE `entry` = 4660;
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(4660, 4234, 75, 1, 1, 1, 0, 'Heavy Leather'),
(4660, 4235, 5, 1, 1, 1, 0, 'Heavy Hide'),
(4660, 4304, 20, 1, 1, 1, 0, 'Thick Leather');

UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 75 WHERE `entry` = 4660 AND `item` = 4234; -- Heavy Leather
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 20 WHERE `entry` = 4660 AND `item` = 4304; -- Thick Leather
REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(4660, 4235, 5, 1, 1, 1, 0, 'Heavy Hide');

-- https://www.wowhead.com/classic/npc=14223/cranky-benj#skinning
UPDATE `creature_template` SET `SkinningLootId` = 14223 WHERE `entry` = 14223; -- 100002
-- Table 'skinning_loot_template' entry 100002 isn't creature skinning id and not referenced from loot, and then useless.
DELETE FROM `skinning_loot_template` WHERE `entry` = 14223;
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(14223, 4234, 75, 1, 1, 1, 0, 'Heavy Leather'),
(14223, 4304, 20, 1, 1, 1, 0, 'Thick Leather'),
(14223, 4235, 5, 1, 1, 1, 0, 'Heavy Hide'),
(14223, 8167, 20, 2, 1, 1, 0, 'Turtle Scale');

-- Table 'skinning_loot_template' entry 100002 isn't creature skinning id and not referenced from loot, and then useless.
-- from classicmangos packport, these dont exist.
DELETE FROM `skinning_loot_template` WHERE `entry` = 100002;
UPDATE `creature_template` SET `SkinningLootId` = 0 WHERE `entry` IN (5432,5448); -- Giant Surf Glider, Tamed Turtle

-- https://www.wowhead.com/classic/npc=534/nefaru#skinning
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 50 WHERE `entry` = 534 AND `item` = 4234; -- Heavy Leather
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 40 WHERE `entry` = 534 AND `item` = 2319; -- Medium Leather
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 5 WHERE `entry` = 534 AND `item` = 4232; -- Medium Hide
REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(534, 4235, 5, 1, 1, 1, 0, 'Heavy Hide');

-- https://www.wowhead.com/classic/npc=5935/ironeye-the-invincible#skinning
UPDATE `creature_template` SET `SkinningLootId` = 5935 WHERE `entry` = 5935; -- 100004
DELETE FROM `skinning_loot_template` WHERE `entry` = 5935;
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(5935, 4234, 65, 1, 1, 2, 0, 'Heavy Leather'),
(5935, 4304, 30, 1, 1, 2, 0, 'Thick Leather'),
(5935, 4235, 5, 1, 1, 1, 0, 'Heavy Hide');

-- https://www.wowhead.com/classic/npc=8208/murderous-blisterpaw#skinning
UPDATE `creature_template` SET `SkinningLootId` = 8208 WHERE `entry` = 8208; -- 100004
DELETE FROM `skinning_loot_template` WHERE `entry` = 8208;
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(8208, 4234, 45, 1, 1, 1, 0, 'Heavy Leather'),
(8208, 4304, 50, 1, 1, 1, 0, 'Thick Leather'),
(8208, 4235, 5, 1, 1, 1, 0, 'Heavy Hide');

-- ============
-- classic only
-- ============
-- https://www.wowhead.com/classic/npc=1559/king-mukla#skinning - classic only
DELETE FROM `skinning_loot_template` WHERE `entry` = 1559;
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(1559, 8170, 50, 1, 1, 2, 0, 'Rugged Leather'),
(1559, 4304, 40, 1, 1, 2, 0, 'Thick Leather'),
(1559, 8171, 5, 1, 1, 1, 0, 'Rugged Hide'),
(1559, 8169, 5, 1, 1, 1, 0, 'Thick Hide');

-- https://www.wowhead.com/classic/npc=3792/terrowulf-packlord#skinning - classic only
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 55 WHERE `entry` = 3792 AND `item` = 4234; -- Heavy Leather
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 40 WHERE `entry` = 3792 AND `item` = 2319; -- Medium Leather
DELETE FROM `skinning_loot_template` WHERE `entry` = 3792 AND `item` = 4235; -- Heavy Hide
REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(3792, 4232, 5, 1, 1, 1, 0, 'Medium Hide');
-- ============

-- =========
-- tbc+ only
-- =========
-- https://www.wowhead.com/tbc/npc=1559/king-mukla#skinning - tbc+ only
-- DELETE FROM `skinning_loot_template` WHERE `entry` = 1559;
-- INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
-- (1559, 4304, 50, 1, 1, 1, 0, 'Thick Leather'),
-- (1559, 4234, 40, 1, 1, 1, 0, 'Heavy Leather'),
-- (1559, 8169, 5, 1, 1, 1, 0, 'Thick Hide'),
-- (1559, 4235, 5, 1, 1, 1, 0, 'Heavy Hide');

-- https://www.wowhead.com/tbc/npc=3792/terrowulf-packlord#skinning - tbc+ only
-- UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 55 WHERE `entry` = 3792 AND `item` = 4234; -- Heavy Leather
-- UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 40 WHERE `entry` = 3792 AND `item` = 2319; -- Medium Leather
-- DELETE FROM `skinning_loot_template` WHERE `entry` = 3792 AND `item` = 4232; -- Medium Hide
-- REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
-- (3792, 4235, 5, 1, 1, 1, 0, 'Heavy Hide');

-- https://www.wowhead.com/tbc/npc=23873/goreclaw-the-ravenous#skinning - tbc+ only
-- UPDATE `creature_template` SET `SkinningLootId` = 23873 WHERE `entry` = 23873;
-- DELETE FROM `skinning_loot_template` WHERE `entry` = 23873;
-- INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
-- (23873, 4234, 75, 1, 1, 1, 0, 'Heavy Leather'),
-- (23873, 4304, 20, 1, 1, 1, 0, 'Thick Leather'),
-- (23873, 4235, 5, 1, 1, 1, 0, 'Heavy Hide');
-- =========

