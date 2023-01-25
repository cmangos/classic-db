/* This script is to fix Chain of the Scarlet Crusade set loot tables in Classic 1.12.1 DB */
/* Used vanillawowdb.com, classicDB.ch, Classicwowhead.com and vanilla-twinhead.twinstar.cz for reference*/
-- Followup to https://github.com/cmangos/tbc-db/commit/42e94b4704681ae7012d00065fd1a9a58f878378 which wrongly added the item to too many mobs.

/* REM remove Scarlet Chestpeice (10328) from wrong loot tables  */
-- https://www.wowhead.com/classic/item=10328/scarlet-chestpiece
-- https://web.archive.org/web/20080802094216/http://wow.allakhazam.com/db/item.html?witem=10328 ~ 0.3%
DELETE FROM `creature_loot_template` WHERE `item` = '10328';
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `Maxcount`, `condition_id`, `comments`) VALUES
('4302', '10328', '0.5', '0', '1', '1', '0', 'Scarlet Chestpiece'); -- 0.5

/* REM Add Scarlet Belt (10329) to loot tables  */
-- https://www.wowhead.com/classic/item=10329/scarlet-belt
-- https://web.archive.org/web/20080802185327/http://wow.allakhazam.com/db/item.html?witem=10329 - ~1.5%
DELETE FROM `creature_loot_template` WHERE `item` = '10329';
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `Maxcount`, `condition_id`, `comments`) VALUES
('4298', '10329', '2', '0', '1', '1', '0', 'Scarlet Belt'), -- 3
('4295', '10329', '2', '0', '1', '1', '0', 'Scarlet Belt'); -- 2

-- Followup to https://github.com/cmangos/tbc-db/commit/ceb2e0b0737901187a3957c02471aabae705408b - upsi
-- https://www.wowhead.com/classic/item=10330/scarlet-leggings
-- https://web.archive.org/web/20080803161329/http://wow.allakhazam.com/db/item.html?witem=10330
-- https://web.archive.org/web/20080610174639/http://wow.allakhazam.com/db/mob.html?wmob=3975 - groupids, chances
-- https://web.archive.org/web/20080515190045/http://wow.allakhazam.com/db/mob.html?wmob=3976 - groupids, chances
DELETE FROM `creature_loot_template` WHERE `item` = '10330';
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `Maxcount`, `condition_id`, `comments`) VALUES
('3975', '10330', '15', '1', '1', '1', '0', 'Scarlet Leggings'),
('3976', '10330', '15', '1', '1', '1', '0', 'Scarlet Leggings');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '15' WHERE `item` = '7717' AND `entry` = '3975';

/* REM Add Scarlet Gauntlets (10331) to loot tables  */
-- https://www.wowhead.com/classic/item=10331/scarlet-gauntlets
-- https://web.archive.org/web/20080803074951/http://wow.allakhazam.com/db/item.html?witem=10331 - ~1.5%
DELETE FROM `creature_loot_template` WHERE `item` = '10331';
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `Maxcount`, `condition_id`, `comments`) VALUES
('4301', '10331', '2', '0', '1', '1', '0', 'Scarlet Gauntlets'); -- 2

-- https://www.wowhead.com/classic/item=10332/scarlet-boots - zone loot (30005)

/* REM Add Scarlet Whristguards (10333) to loot tables  */
-- https://www.wowhead.com/classic/item=10333/scarlet-wristguards
-- https://web.archive.org/web/20080803132246/http://wow.allakhazam.com/db/item.html?witem=10333 - ~1.5%
DELETE FROM `creature_loot_template` WHERE `item` = '10333';
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `Maxcount`, `condition_id`, `comments`) VALUES
('4290', '10333', '2', '0', '1', '1', '0', 'Scarlet Wristguards'), -- 3
('4292', '10333', '2', '0', '1', '1', '0', 'Scarlet Wristguards'); -- 2

