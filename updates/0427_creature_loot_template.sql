-- Fixed rank and loot table of creature 599 (Marisa du'Paige)
-- Thanks Shubu for pointing. This closes #269 
-- Source: http://old.wowhead.com/npc=599#comments
-- Source: UDB
UPDATE `creature_template` SET `rank` = 2 WHERE `entry` = 599;

DELETE FROM `creature_loot_template` WHERE `entry` = 599 AND `item` IN (3019, 4660);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(599, 3019, 0, 2, 1, 1, 0),
(599, 4660, 75, 2, 1, 1, 0);
