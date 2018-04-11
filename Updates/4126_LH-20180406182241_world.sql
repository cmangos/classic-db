-- Add your query below.
-- https://github.com/lh-server/core/commit/d2b31a62e2b347ec29242c010cf1a38964fde6f7

-- 3	6	67	0	0	0	0	Horde Player
-- 4	6	469	0	0	0	0	Alliance Player
-- Classic Only!
-- AQ20 faction specific loot (shaman/paladin)
-- https://web.archive.org/web/20061124205526/http://wow.allakhazam.com/db/mob.html?wmob=15369
-- https://web.archive.org/web/20061005012256/http://wow.allakhazam.com/db/mob.html?wmob=15340
-- https://web.archive.org/web/20060927091840/http://wow.allakhazam.com/db/mob.html?wmob=15370
UPDATE `creature_loot_template` SET `condition_id`= 4 WHERE `entry`=15369 AND `item`=21481; -- https://www.wowhead.com/tbc/item=21481/boots-of-the-desert-protector
UPDATE `creature_loot_template` SET `condition_id`= 3 WHERE `entry`=15369 AND `item`=21482; -- https://www.wowhead.com/tbc/item=21482/boots-of-the-fiery-sands
UPDATE `creature_loot_template` SET `condition_id`= 4 WHERE `entry`=15340 AND `item`=21475; -- https://www.wowhead.com/tbc/item=21475/legplates-of-the-destroyer
UPDATE `creature_loot_template` SET `condition_id`= 3 WHERE `entry`=15340 AND `item`=21476; -- https://www.wowhead.com/tbc/item=21476/obsidian-scaled-leggings
UPDATE `creature_loot_template` SET `condition_id`= 4 WHERE `entry`=15370 AND `item`=21486; -- https://www.wowhead.com/tbc/item=21486/gloves-of-the-swarm
UPDATE `creature_loot_template` SET `condition_id`= 3 WHERE `entry`=15370 AND `item`=21487; -- https://www.wowhead.com/tbc/item=21487/slimy-scaled-gauntlets
UPDATE `reference_loot_template` SET `condition_id` = 4 WHERE `entry` = 34024 AND `item` IN (21288,21289,21290); -- paladin books
UPDATE `reference_loot_template` SET `condition_id` = 3 WHERE `entry` = 34024 AND `item` IN (21291,21292,21293); -- shaman books



-- apply faction loot to 34024 too currently used by
-- https://www.wowhead.com/tbc/npc=15339/ossirian-the-unscarred - https://youtu.be/bBX3V6XX-VA?t=2598 head hilt 3 book 2 item
UPDATE `creature_loot_template` SET `maxcount` = 3 WHERE `entry` = 15339 AND `mincountOrRef` = -34024 AND `groupid` = 2; -- 1 book not 2
-- https://web.archive.org/web/20060831114255/http://wow.allakhazam.com/db/mob.html?wmob=15339
UPDATE `creature_loot_template` SET `groupid` =  1 WHERE `entry` = 15339 AND `item` IN (20886,20890); -- 1hilt/ring
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 10 WHERE `entry` = 15339 AND `item` IN (20884,20888);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 40 WHERE `entry` = 15339 AND `item` IN (20886,20890);
-- https://www.wowhead.com/tbc/npc=15340/moam - https://youtu.be/iBLtfWsG68E?t=1772 2 books 2 items (our groups are wrong) 1 hilt
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 10 WHERE `entry` = 15340 AND `item` IN (21472,21471,21467,21479,20884,20888);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 40 WHERE `entry` = 15340 AND `item` IN (20886,20890);
-- Gauntlets of the Immovable and Chitinous Shoulderguards are in opposite groups
-- Gauntlets of Southwind and Chitinous Shoulderguards are in opposite groups
-- Dustwind Turban and Gauntlets of the Immovable are in opposite groups
-- Southwind Helm and Chitinous Shoulderguards are in opposite groups
-- Gauntlets of Southwind and Obsidian Scaled Leggings are in opposite groups
-- https://www.wowhead.com/tbc/npc=15341/general-rajaxx - https://youtu.be/iBLtfWsG68E?t=1022 drape 2 books 1 item
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 10 WHERE `entry` = 15341 AND `item` IN (21492,21493);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 10 WHERE `entry` = 15341 AND `item` IN (20884,20888);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 40 WHERE `entry` = 15341 AND `item` IN (20885,20889);
-- https://www.wowhead.com/tbc/npc=15348/kurinnaxx - https://youtu.be/iBLtfWsG68E?t=594 - 1 drape 1 book 1 item
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 10 WHERE `entry` = 15348 AND `item` IN (21498,21499,20884,20888);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 40 WHERE `entry` = 15348 AND `item` IN (20885,20889);
-- Enchanting Formulas seem to have SKILL_ENCHANTING restriction as their chance drops over time and they are soulbound
-- 203	7	333	1	0	0	0	Has Skill ID 333, Minimum Skill Value 1
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 5, `condition_id` = 203 WHERE `entry` IN (15339,15340,15341,15348,15369,15370) AND `mincountOrRef` = -34024 AND `groupid` = 1; -- higher chance for formulas
UPDATE `creature_loot_template` SET `maxcount` = 1 WHERE `entry` = 15348 AND `mincountOrRef` = -34024 AND `groupid` = 2; -- 1 book not 2
-- https://www.wowhead.com/tbc/npc=15369/ayamiss-the-hunter - https://web.archive.org/web/20060831114303/http://wow.allakhazam.com/db/mob.html?wmob=15369
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0 WHERE `entry` = 15369 AND `item` IN (21480,21481,21482,21483,21484); -- race restriced are halfed due to alliance/horde raid distribution
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 10 WHERE `entry` = 15369 AND `item` IN (20885,20889,20886,20890,21478);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 30 WHERE `entry` = 15369 AND `item` IN (20884,20888);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 5 WHERE `entry` = 15369 AND `item` IN (21466,21479);
-- https://www.wowhead.com/tbc/npc=15370/buru-the-gorger - https://youtu.be/iBLtfWsG68E?t=1416 1 drape 2 books 1 item
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 10 WHERE `entry` = 15370 AND `item` IN (21485,21486,21487,20890,20889,20886,20885);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 10 WHERE `entry` = 15370 AND `item` IN (20888,20884);

UPDATE `reference_loot_template_names` SET `name` = 'Ruins of Ahn\'Qiraj (Boss Loot) - AQ Enchanting Formulas (group 1) & AQ20 Class Books (group 2)' WHERE `entry` = 34024;

