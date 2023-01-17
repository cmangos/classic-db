-- Remove Refloot 24091 purple itemlevel 64-65 replaced by 60342,60343,60344
-- wotlkmangos: 12129 is level 80

-- 60342 NPC LOOT (Purple World Drop) - (Item Levels: 60-62) - (NPC Levels: 61)
-- 944 Elemental Mage Staff
-- 1263 Brain Hacker
-- 1443 Jeweled Amulet of Cainwyn
-- 2243 Hand of Edward the Odd
-- 2245 Helm of Narv
-- 2801 Blade of Hanna
-- 14553 Sash of Mercy
-- 14554 Cloudkeeper Legplates
-- 14555 Alcor's Sunrazor
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60342, -60342, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN ( -- 9 items
11339, -- Hakkari Shadow Hunter 61 61 - 0.4 befor ( Purple: 0.10% Blue: 16.95% Green: 38.20% White: 28.52% ) - https://web.archive.org/web/20080423233721/http://wow.allakhazam.com:80/db/mob.html?wmob=11339
11356, -- Gurubashi Champion 61 61 - 0.4 befor - https://web.archive.org/web/20070314002402/http://wow.allakhazam.com/db/mob.html?wmob=11356
12459, -- Blackwing Warlock 61 61 - 0.3 befor - https://web.archive.org/web/20070825011951/http://wow.allakhazam.com/db/mob.html?wmob=12459
12468, -- Death Talon Hatcher 61 61 - 0.4 befor - https://web.archive.org/web/20070824154836/http://wow.allakhazam.com/db/mob.html?wmob=12468
15264 -- Anubisath Sentinel 61 61 - 0.3 befor - https://web.archive.org/web/20070826022549/http://wow.allakhazam.com/db/mob.html?wmob=15264
);
-- Add missing items uncovered by these npcs (doesnt matter if they dont match itemlevel requirement of the refloot description, loot is loot.
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60342, 2245, 0, 1, 1, 1, 0, 'Helm of Narv'),
(60342, 14555, 0, 1, 1, 1, 0, 'Alcor''s Sunrazor'),
(60342, 2801, 0, 1, 1, 1, 0, 'Blade of Hanna');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.1 WHERE `mincountorref` = -60342; -- Align General Chance

-- 60343 NPC LOOT (Purple World Drop) - (Item Levels: 60-64) - (NPC Levels: 61-62)
-- 944	Elemental Mage Staff
-- 1168 Skullflame Shield
-- 1263	Brain Hacker
-- 1443	Jeweled Amulet of Cainwyn
-- 2243	Hand of Edward the Odd
-- 2245 Helm of Narv
-- 2801	Blade of Hanna
-- 3475 Cloak of Flames
-- 14553	Sash of Mercy
-- 14554	Cloudkeeper Legplates
-- 14555	Alcor's Sunrazor
-- 14557 The Lion Horn of Stormwind
-- 14558	Lady Maye's Pendant
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60343, -60343, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN ( -- 13 items
11665, -- Lava Annihilator 61 62 - 0.4 befor - https://web.archive.org/web/20070824104205/http://wow.allakhazam.com/db/mob.html?wmob=11665
11666, -- Firewalker 61 62 - 0.3 befor - https://web.archive.org/web/20070824102724/http://wow.allakhazam.com/db/mob.html?wmob=11666
11667, -- Flameguard 61 62 - 0.3 befor - https://web.archive.org/web/20070824102542/http://wow.allakhazam.com/db/mob.html?wmob=11667
11668, -- Firelord 61 62 - 0.4 befor - https://web.archive.org/web/20070824104532/http://wow.allakhazam.com/db/mob.html?wmob=11668
12076, -- Lava Elemental 61 62 - 0.4 befor - https://web.archive.org/web/20070824102908/http://wow.allakhazam.com/db/mob.html?wmob=12076
12101 -- Lava Surger 61 62 - 0.3 befor - https://web.archive.org/web/20070824102740/http://wow.allakhazam.com/db/mob.html?wmob=12101
);
-- Add missing items uncovered by these npcs (doesnt matter if they dont match itemlevel requirement of the refloot description, loot is loot.
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60343, 2245, 0, 1, 1, 1, 0, 'Helm of Narv'),
(60343, 3475, 0, 1, 1, 1, 0, 'Cloak of Flames'),
(60343, 1168, 0, 1, 1, 1, 0, 'Skullflame Shield'),
(60343, 14557, 0, 1, 1, 1, 0, 'The Lion Horn of Stormwind');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.1 WHERE `mincountorref` = -60343; -- Align General Chance

-- 60344 NPC LOOT (Purple World Drop) - (Item Levels: 61-65) - (NPC Levels: 62)
-- 944	Elemental Mage Staff
-- 1728	Teebu's Blazing Longsword
-- 2243	Hand of Edward the Odd
-- 2801	Blade of Hanna
-- 3475	Cloak of Flames
-- 14553	Sash of Mercy
-- 14554	Cloudkeeper Legplates
-- 14555	Alcor's Sunrazor
-- 14558	Lady Maye's Pendant
-- 1443 Jeweled Amulet of Cainwyn
-- 1263 Brain Hacker
-- 14557 The Lion Horn of Stormwind
-- 1168 Skullflame Shield
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60344, -60344, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN ( -- 13 items
11352, -- Gurubashi Berserker 62 62 - 0.4 befor - https://web.archive.org/web/20070826073104/http://wow.allakhazam.com/db/mob.html?wmob=11352
11673, -- Ancient Core Hound 62 62 - 0.3 befor - https://web.archive.org/web/20070824102455/http://wow.allakhazam.com/db/mob.html?wmob=11673
-- We currently dont have a ~63 table, so add 60344 for these too, rename for future additions
12129, -- Onyxian Warder 60 63 - 0.4 befor - https://web.archive.org/web/20070825050109/http://wow.allakhazam.com/db/mob.html?wmob=12129
12460, -- Death Talon Wyrmguard 63 63 - 0.3 befor - https://web.archive.org/web/20070826071518/http://wow.allakhazam.com/db/mob.html?wmob=12460
15204 -- High Marshal Whirlaxis 63 63 - 0.1 befor - https://web.archive.org/web/20070826022728/http://wow.allakhazam.com/db/mob.html?wmob=15204
);
-- Add missing items uncovered by these npcs (doesnt matter if they dont match itemlevel requirement of the refloot description, loot is loot.
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60344, 1443, 0, 1, 1, 1, 0, 'Jeweled Amulet of Cainwyn'),
(60344, 1263, 0, 1, 1, 1, 0, 'Brain Hacker'),
(60344, 14557, 0, 1, 1, 1, 0, 'The Lion Horn of Stormwind'),
(60344, 1168, 0, 1, 1, 1, 0, 'Skullflame Shield');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.1 WHERE `mincountorref` = -60344 AND `entry` != 15818; -- Align General Chance (Exclude Eventboss)

-- Templates still differ from each other after additions, so no need to merge them.
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Purple World Drop) - (Item Levels: 59-64) - (NPC Levels: 61) - VANILLA NPC ONLY' WHERE `entry` = 60342; -- (Item Levels: 60-62)
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Purple World Drop) - (Item Levels: 59-65) - (NPC Levels: 61-62) - VANILLA NPC ONLY' WHERE `entry` = 60343; -- (Item Levels: 60-64)
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Purple World Drop) - (Item Levels: 59-65) - (NPC Levels: 62-63) - VANILLA NPC ONLY' WHERE `entry` = 60344; -- (Item Levels: 61-65)

-- Remove 24091, Remove other purple refloots from these npcs
DELETE FROM `creature_loot_template` WHERE `mincountorref` BETWEEN -24091 AND -24079 AND `entry` IN (11339,11352,11356,11665,11666,11667,11668,11673,12076,12101,12129,12459,12460,12468,15204,15264);
DELETE FROM `reference_loot_template` WHERE `entry` = 24091; -- only these are completly gone then
DELETE FROM `reference_loot_template_names` WHERE `entry` = 24091;

