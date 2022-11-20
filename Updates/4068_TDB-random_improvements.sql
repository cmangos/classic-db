-- =======
-- General
-- =======

-- https://tbc.wowhead.com/item=4290/dust-bowl
DELETE FROM `reference_loot_template` WHERE `item` = 4290 AND `entry` IN (24078,60113,60114,60115,60116,60117,60118,60119,60120,60121,60122,60123);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(832, 4290, 1.5, 9, 1, 1, 0, 'Dust Bowl'); -- Dust Devil only (template shows alot of items that dont belong in general npc loot)

-- https://tbc.wowhead.com/item=2899/wendigo-collarv
DELETE FROM `reference_loot_template` WHERE `item` = 2899; -- also 24076 in classicmangos, best try to get rid of both
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(1271, 2899, 4, 9, 1, 1, 0, 'Wendigo Collar'); -- Old Icebeard only

-- these have to be nuked sometime because guh
-- 24078
-- 24076

-- only hold white shoulder slot items, having these at 5% is way too high. Should be Values around 0.5 to 2%
-- 60423	NPC LOOT (White World Drop) - (Item Levels: 15-21) - (NPC Levels: 16-17)
-- 60440	NPC LOOT (White World Drop) - (Item Levels: 24) - (NPC Levels: 25)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 1 WHERE `mincountOrRef` BETWEEN -60440 AND -60423 AND `entry` NOT IN (14682,15812,16308,15813,15807); -- 561 Lines in classicmangos

-- one at a time
-- https://www.wowhead.com/classic/item=2287/haunch-of-meat
-- https://www.wowhead.com/classic/item=1179/ice-cold-milk
-- https://www.wowhead.com/classic/item=4605/red-speckled-mushroom
UPDATE `creature_loot_template` SET `mincountOrRef` = 1, `maxcount` = 1 WHERE `item` IN (2287,1179,4605); -- corrupted by chestloot mixed into creature loot

DELETE FROM `reference_loot_template` WHERE `entry` = 50505 AND `item` IN (6344,2881,6347,6348,6663,4292,4345,2409,4293,4346,4409,6716,2601,5972,3393,11038,11039,11081,3394,4294,4347,4410,6375,6390,6391,7360,10316,2882,2883,4348,4349,5578);
UPDATE `reference_loot_template_names` SET `name` = 'LOOT (World Drop) - (RequiredSkillRank: 130-300 (Profession Recipes)) - (NPC Levels ~20-63) (Split me up)' WHERE `entry` = 50505;

UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Green World Drop) - (Item Levels: 10-15 (Profession Recipes)) - (NPC Levels: 5-10)' WHERE `entry` = 50502;

