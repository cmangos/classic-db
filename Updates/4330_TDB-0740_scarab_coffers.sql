-- Improve Loottables for Scarab Coffers in AQ
-- https://www.youtube.com/watch?v=_MTgbediN0c&ab_channel=DavidWilliamBeck
-- 180691	Scarab Coffer	17532 - https://www.wowhead.com/classic/object=180691/scarab-coffer#contains - https://wowpedia.fandom.com/wiki/Scarab_Coffer?oldid=2407186
-- 180690	Large Scarab Coffer	17533 - https://www.wowhead.com/classic/object=180690/large-scarab-coffer#contains - https://wowpedia.fandom.com/wiki/Large_Scarab_Coffer?oldid=2492092
-- https://web.archive.org/web/20070519004007/http://wow.allakhazam.com/db/object.html?wobject=480
-- https://web.archive.org/web/20070519003956/http://wow.allakhazam.com/db/object.html?wobject=483
-- Based on https://github.com/lh-server/core/commit/e8ed6897801aa45ef965afbd5d508b39ddf8fd42
DELETE FROM `gameobject_loot_template` WHERE `entry` IN (17532,17533);
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(17532, 21156, 100, 1, 1, 1, 0, 'Scarab Bag'),
(17532, 34025, 100, 1, -34025, 1, 0, 'Ruins of Ahn\'Qiraj (Scarab Coffer) - Idols'),
(17532, 1, 25, 1, -34025, 1, 0, 'Ruins of Ahn\'Qiraj (Scarab Coffer) - Idols'),

(17533, 21156, 100, 1, 1, 1, 0, 'Scarab Bag'),
(17533, 34026, 100, 1, -34026, 1, 0, 'Temple of Ahn\'Qiraj (Large Scarab Coffer) - Idols'),
(17533, 1, 100, 1, -34026, 1, 0, 'Temple of Ahn\'Qiraj (Large Scarab Coffer) - Idols'),
(17533, 2, 25, 1, -34026, 1, 0, 'Temple of Ahn\'Qiraj (Large Scarab Coffer) - Idols');

DELETE FROM `reference_loot_template` WHERE `entry` IN (34025,34026,34027);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
-- Stack of 1 has almost all of the % so its not maxcount 2, but some combination of refloot 100% + refloot x%
(34025, 20867, 0, 1, 1, 1, 0, 'Onyx Idol'),
(34025, 20872, 0, 1, 1, 1, 0, 'Vermillion Idol'),
(34025, 20868, 0, 1, 1, 1, 0, 'Lambent Idol'),
(34025, 20870, 0, 1, 1, 1, 0, 'Jasper Idol'),
(34025, 20873, 0, 1, 1, 1, 0, 'Alabaster Idol'),
(34025, 20866, 0, 1, 1, 1, 0, 'Azure Idol'),
(34025, 20871, 0, 1, 1, 1, 0, 'Obsidian Idol'),
(34025, 20869, 0, 1, 1, 1, 0, 'Amber Idol'),

(34026, 20878, 0, 1, 1, 1, 0, 'Idol of Rebirth'),
(34026, 20879, 0, 1, 1, 1, 0, 'Idol of Life'),
(34026, 20882, 0, 1, 1, 1, 0, 'Idol of War'),
(34026, 20877, 0, 1, 1, 1, 0, 'Idol of the Sage'),
(34026, 20881, 0, 1, 1, 1, 0, 'Idol of Strife'),
(34026, 20874, 0, 1, 1, 1, 0, 'Idol of the Sun'),
(34026, 20876, 0, 1, 1, 1, 0, 'Idol of Death'),
(34026, 20875, 0, 1, 1, 1, 0, 'Idol of Night'),

(34027, 20865, 0, 1, 1, 1, 0, 'Ivory Scarab'),
(34027, 20864, 0, 1, 1, 1, 0, 'Bone Scarab'),
(34027, 20861, 0, 1, 1, 1, 0, 'Bronze Scarab'),
(34027, 20860, 0, 1, 1, 1, 0, 'Silver Scarab'),
(34027, 20858, 0, 1, 1, 1, 0, 'Stone Scarab'),
(34027, 20862, 0, 1, 1, 1, 0, 'Crystal Scarab'),
(34027, 20863, 0, 1, 1, 1, 0, 'Clay Scarab'),
(34027, 20859, 0, 1, 1, 1, 0, 'Gold Scarab');

DELETE FROM `reference_loot_template_names` WHERE `entry` IN (34025,34026,34027);
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES
(34025, 'Ruins of Ahn\'Qiraj (Scarab Coffer) - Idols'),
(34026, 'Temple of Ahn\'Qiraj (Large Scarab Coffer) - Idols'),
(34027, 'Ahn\'Qiraj - Scarabs');

-- https://www.wowhead.com/classic/item=21156/scarab-bag#contains
-- https://wowpedia.fandom.com/wiki/Scarab_Bag?oldid=2480739
DELETE FROM `item_loot_template` WHERE `entry` = 21156;
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(21156, 34027, 100, 1, -34027, 1, 0, 'Ahn\'Qiraj - Scarabs'),
(21156, 1, 100, 1, -34027, 1, 0, 'Ahn\'Qiraj - Scarabs'),
(21156, 2, 100, 1, -34027, 1, 0, 'Ahn\'Qiraj - Scarabs'),
(21156, 3, 100, 1, -34027, 1, 0, 'Ahn\'Qiraj - Scarabs'),
(21156, 4, 20, 1, -34027, 1, 0, 'Ahn\'Qiraj - Scarabs');

-- https://www.wowhead.com/classic/item=21761/scarab-coffer-key - 11
-- https://web.archive.org/web/20080526223337/http://wow.allakhazam.com/db/item.html?witem=21761
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 7.851 WHERE `entry` = 15324 AND `item` = 21761; -- 8.7137 Qiraji Gladiator 15324 - Qiraji Gladiator: 7.45% (1,712) L: 56 - 61 Elite - 7.39 wowhead
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 6.695 WHERE `entry` = 15338 AND `item` = 21761; -- 8.2636 Obsidian Destroyer 15338 - Obsidian Destroyer: 6.88% (1,990) L: 56 - 61 Elite - 4,94
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 7.527 WHERE `entry` = 15343 AND `item` = 21761; -- 8.6516 Qiraji Swarmguard 15343 - Qiraji Swarmguard: 7.32% (2,871) L: 56 - 61 Elite 6,61
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 8.078 WHERE `entry` = 15355 AND `item` = 21761; -- 9.7329 Anubisath Guardian 15355 - Anubisath Guardian: 7.46% (2,360) L: 57 - 62 Elite - 7.04
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 5.464 WHERE `entry` = 15385 AND `item` = 21761; -- 5.8824 Colonel Zerran 15385 - Colonel Zerran: 5.81% (183) L: 59 - 63 Elite - 4,7
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 6.310 WHERE `entry` = 15386 AND `item` = 21761; -- 6.4103 Major Yeggeth 15386 - Major Yeggeth: 6.99% (295) L: 59 - 63 Elite - 5,53
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 5.923 WHERE `entry` = 15388 AND `item` = 21761; -- 4.3689 Major Pakkon 15388 - Major Pakkon: 7.78% (273) L: 58 - 63 Elite - 5,62
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 7.052 WHERE `entry` = 15389 AND `item` = 21761; -- 8.0247 Captain Drenn 15389 - Captain Drenn: 7.17% (327) L: 59 - 63 Elite - 5,96
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 6.768 WHERE `entry` = 15390 AND `item` = 21761; -- 7.1146 Captain Xurrem 15390 - Captain Xurrem: 7.39% (269) L: 58 - 63 Elite - 5,80
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 6.663 WHERE `entry` = 15391 AND `item` = 21761; -- 6.8182 Captain Qeez 15391 - Captain Qeez: 7.63% (469) L: 58 - 63 Elite - 5,54
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 6.471 WHERE `entry` = 15392 AND `item` = 21761; -- 6.7616 Captain Tuubid 15392 - Captain Tuubid: 7.36% (444) L: 58 - 63 Elite - 5,29

-- https://www.wowhead.com/classic/item=21762/greater-scarab-coffer-key - 10
-- hhttps://web.archive.org/web/20080524032029/http://wow.allakhazam.com/db/item.html?witem=21762
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 7.339 WHERE `entry` = 15246 AND `item` = 21762; -- 5.9876 Qiraji Mindslayer 15246 - Qiraji Mindslayer: 6.83% (1,185) L: 56 - 61 Elite - 9,20
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 7.159 WHERE `entry` = 15247 AND `item` = 21762; -- 6.2069 Qiraji Brainwasher 15247 - Qiraji Brainwasher: 6.40% (1,250) L: 56 - 61 Elite - 8,87
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 7.582 WHERE `entry` = 15249 AND `item` = 21762; -- 6.506 Qiraji Lasher 15249 - Qiraji Lasher: 6.89% (464) L: 56 - 61 Elite - 9,35
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 8.219 WHERE `entry` = 15250 AND `item` = 21762; -- 7.8281 Qiraji Slayer 15250 - Qiraji Slayer: 7.30% (1,042) L: 57 - 61 Elite - 9,53
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 10.149 WHERE `entry` = 15252 AND `item` = 21762; -- 11.0169 Qiraji Champion 15252 - Qiraji Champion: 7.72% (792) L: 58 - 63 Elite - 11,71
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 7.402 WHERE `entry` = 15262 AND `item` = 21762; -- 6.9869 Obsidian Eradicator 15262 - Obsidian Eradicator: 7.06% (1,922) L: 55 - 60 Elite - 8,16
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 7.310 WHERE `entry` = 15264 AND `item` = 21762; -- 6.8809 Anubisath Sentinel 15264 - Anubisath Sentinel: 6.69% (3,285) L: 56 - 61 Elite - 8,36
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 8.694 WHERE `entry` = 15277 AND `item` = 21762; -- 8.362 Anubisath Defender 15277 - Anubisath Defender: 7.46% (1,443) L: 57 - 62 Elite - 10,26
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 10.346 WHERE `entry` = 15311 AND `item` = 21762; -- 10.5469 Anubisath Warder 15311 - Anubisath Warder: 8.10% (506) L: 60 - 63 Elite - 12,39
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 7.297 WHERE `entry` = 15312 AND `item` = 21762; -- 5.9016 Obsidian Nullifier 15312 - Obsidian Nullifier: 7.91% (652) L: 58 - 61 Elite - 8,08

-- Some Aggro Radius Adjustments, alot of missing trash packs! todo!
UPDATE `creature_template` SET `Detection` = 40 WHERE `entry` = 15264; -- ~37+bounding - https://youtu.be/_MTgbediN0c?t=80
UPDATE `creature_template` SET `CorpseDecay` = 5 WHERE `entry` = 15300;
UPDATE `creature_template` SET `Detection` = 50 WHERE `entry` = 15509;
UPDATE `creature_template` SET `CorpseDecay` = 5 WHERE `entry` = 15317;
UPDATE `creature_template` SET `CorpseDecay` = 5 WHERE `entry` = 15316;
UPDATE `creature_template` SET `Detection` = 50 WHERE `entry` = 15312;
UPDATE `creature_template` SET `Detection` = 50 WHERE `entry` = 15233; -- Vekniss Guardian - Increased Aggro Radius'); - https://youtu.be/_MTgbediN0c?t=335
UPDATE `creature_template` SET `Detection` = 30 WHERE `entry` = 15262; -- Obsidian Eradicator - Increased Aggro Radius'); - https://youtu.be/_MTgbediN0c?t=25
UPDATE `creature_template` SET `Detection` = 50 WHERE `entry` = 15230; -- Vekniss Warrior - Increased Aggro Radius'); - using same as Guardian (same modelsize etc) vmangos 40
UPDATE `creature_template` SET `Detection` = 50 WHERE `entry` = 15277; -- Anubisath Defender - Increased Aggro Radius'); - https://youtu.be/_MTgbediN0c?t=2515
UPDATE `creature_template` SET `Detection` = 35 WHERE `entry` = 15229; -- Vekniss Soldier - Increased Aggro Radius'); - use vmangos value
UPDATE `creature_template` SET `Detection` = 50 WHERE `entry` = 15240; -- Vekniss Hive Crawler - Increased Aggro Radius'); - https://youtu.be/_MTgbediN0c?t=1575

