-- Remove wrong skinning loot for 
-- 8976	Hematos	15416 - https://www.wowhead.com/wotlk/npc=8976/hematos#skinning
-- 9036	Vile'rel	15416 - https://www.wowhead.com/classic/npc=9036/vilerel
-- 15416	Ranger Jaela	15416 - https://www.wowhead.com/wotlk/npc=15416/ranger-jaela
-- https://github.com/cmangos/issues/issues/3254
UPDATE `creature_template` SET `skinninglootid` = 0 WHERE `entry` IN (9036,15416); -- not as wrong as in tbc
UPDATE `creature_template` SET `skinninglootid` = 8976 WHERE `entry` = 8976; -- https://www.wowhead.com/classic/npc=8976/hematos#skinning
DELETE FROM `skinning_loot_template` WHERE `entry` IN (8976,15416); -- https://www.wowhead.com/wotlk/npc=8976/hematos#skinning
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(8976, 8170, 55, 1, 1, 2, 0, 'Rugged Leather'),
(8976, 15416, 18, 1, 1, 1, 0, 'Black Dragonscale'),
(8976, 8165, 18, 1, 1, 1, 0, 'Worn Dragonscale'),
(8976, 4304, 3, 1, 2, 2, 0, 'Thick Leather'),
(8976, 8171, 6, 1, 1, 1, 0, 'Rugged Hide');

