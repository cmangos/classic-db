-- Befor, the groupid of a reference_loot_template referenced towards the items inside the reference_loot_template
-- Now, the groupid for a reference_loot_template is the same as for items, abiding to the 100% chance rule inside the primary loot table.
-- We will also have to check for cases, where groupid = 1 and other items also having groupid = 1
-- Same for refloots where groupid != 0 or 1 as it no longer rolles for explicit items inside the refloot which have this corresponding groupid

-- Linked Core Commits:
-- https://github.com/cmangos/mangos-tbc/commit/e9aa973fd979b5fe801a4c3a6c9011c7fc0170b4
-- https://github.com/cmangos/mangos-tbc/commit/ca97309fa842e1287661d30009910ac15554a87d
-- https://github.com/cmangos/mangos-tbc/commit/1ebd794f68a58ff7a093d2e4d4b3e6fdf05943f2

-- at the end most! (except the ones that were targeted by the core change) world loot templates should have groupid = 0 as they do no share chance with each other!
-- SELECT * FROM fishing_loot_template WHERE `mincountorref` < 0 AND groupid != 0;
-- -- SELECT * FROM spell_loot_template WHERE `mincountorref` < 0 AND groupid != 0;
-- SELECT * FROM creature_loot_template WHERE `mincountorref` < 0 AND groupid != 0;
-- SELECT * FROM gameobject_loot_template WHERE `mincountorref` < 0 AND groupid != 0;
-- SELECT * FROM item_loot_template WHERE `mincountorref` < 0 AND groupid != 0;
-- SELECT * FROM disenchant_loot_template WHERE `mincountorref` < 0 AND groupid != 0;
-- SELECT * FROM prospecting_loot_template WHERE `mincountorref` < 0 AND groupid != 0;
-- -- SELECT * FROM milling_loot_template WHERE `mincountorref` < 0 AND groupid != 0;
-- SELECT * FROM pickpocketing_loot_template WHERE `mincountorref` < 0 AND groupid != 0;
-- SELECT * FROM skinning_loot_template WHERE `mincountorref` < 0 AND groupid != 0;
-- SELECT * FROM mail_loot_template WHERE `mincountorref` < 0 AND groupid != 0;

-- ============
-- DBErrors.log
-- ============

-- Table 'creature_loot_template' entry 639 group 1 has total chance > 100% (104.599998)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 639 AND `mincountOrRef` IN (-50600,-50610,-60126,-60443);

-- Table 'creature_loot_template' entry 645 group 1 has total chance > 100% (102.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 645 AND `mincountOrRef` IN (-50600,-50610);

-- Table 'creature_loot_template' entry 646 group 1 has total chance > 100% (101.799995)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 646 AND `mincountOrRef` IN (-50600,-50610);

-- Table 'creature_loot_template' entry 10508 group 1 has total chance > 100% (200.100006)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 10508 AND `mincountOrRef` IN (-35029,-35030,-49003);

-- Table 'creature_loot_template' entry 647 group 1 has total chance > 100% (101.900002)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 647 AND `mincountOrRef` IN (-50600,-50610);

-- Table 'creature_loot_template' entry 644 group 1 has total chance > 100% (112.500000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 644 AND `mincountOrRef` IN (-50600,-50610,-60122);

-- Table 'creature_loot_template' entry 643 group 1 has total chance > 100% (101.599998)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 643 AND `mincountOrRef` IN (-50600,-50610);

-- Table 'creature_loot_template' entry 14509 group 1 has total chance > 100% (300.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 14509 AND `mincountOrRef` IN (-24721,-34086,-34092);

-- Remove Sack of Gems from this Refloot, placed in groupid 2
-- 34003	NPC LOOT (Green NPC Loot) - Classic World bosses and dragons
-- Table 'creature_loot_template' entry 6109 group 1 has total chance > 100% (300.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 6109 AND `mincountOrRef` IN (-34002,-34004,-34003);
-- Table 'creature_loot_template' entry 10184 group 1 has total chance > 100% (300.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 10184 AND `mincountOrRef` IN (-34000,-34001,-34002);
-- Table 'creature_loot_template' entry 11583 group 1 has total chance > 100% (500.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 11583 AND `mincountOrRef` IN (-34002,-34009,-34071,-34072,-34003);
-- Table 'creature_loot_template' entry 12397 group 1 has total chance > 100% (300.000000)
-- Table 'creature_loot_template' entry 12397 group 2 has total chance > 100% (200.000000) - seemingly not in classic? - missing commit: https://github.com/cmangos/tbc-db/commit/545ef3fe5d30a031f6fae8f8fc0cdf7d6563b8c5
-- 35032	(World Boss Loot) - Lord Kazzak / Highlord Kruul - Epic Items (2 groups)
DELETE FROM `reference_loot_template` WHERE `entry` = 35032;
DELETE FROM `reference_loot_template_names` WHERE `entry` = 35032;
DELETE FROM `creature_loot_template` WHERE `entry` = 12397 AND `mincountOrRef` = -35032;
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 12397 AND `mincountOrRef` = -34002;
-- Table 'creature_loot_template' entry 14887 group 1 has total chance > 100% (300.000000)
-- Table 'creature_loot_template' entry 14888 group 1 has total chance > 100% (300.000000)
-- Table 'creature_loot_template' entry 14889 group 1 has total chance > 100% (300.000000)
-- Table 'creature_loot_template' entry 14890 group 1 has total chance > 100% (300.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` IN (14887,14888,14889,14890) AND `mincountOrRef` IN (-34002,-34005,-34006,-34007,-34008);
-- Table 'creature_loot_template' entry 15114 group 1 has total chance > 100% (120.000000)
-- Table 'creature_loot_template' entry 15114 group 1 has items with chance=0% but group total chance >= 100% (120.000000)
DELETE FROM `creature_loot_template` WHERE `entry` = 12397 AND `item` IN (18544,18546,19133,19134,19135,17111,17112,17113,18204,18543); -- inserted into ctl
DELETE FROM `reference_loot_template` WHERE `entry` = 34003 AND `item` IN (17962,17963,17964,17965,17969);
DELETE FROM `creature_loot_template` WHERE `entry` IN (6109,10184,11583,12397,14887,14888,14889,14890,15114) AND `mincountOrRef` = -34003;
DELETE FROM `creature_loot_template`WHERE `entry` IN (6109,10184,11583,12397,14887,14888,14889,14890,15114) AND `item` IN (17962,17963,17964,17965,17969);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(6109, 34003, 100, 0, -34003, 2, 0, 'NPC LOOT (Green NPC Loot) - Classic World bosses and dragons'),
(6109, 17962, 20, 9, 1, 1, 0, 'Blue Sack of Gems'),
(6109, 17963, 20, 9, 1, 1, 0, 'Green Sack of Gems'),
(6109, 17964, 20, 9, 1, 1, 0, 'Gray Sack of Gems'),
(6109, 17965, 20, 9, 1, 1, 0, 'Yellow Sack of Gems'),
(6109, 17969, 20, 9, 1, 1, 0, 'Red Sack of Gems'),

(10184, 34003, 100, 0, -34003, 1, 0, 'NPC LOOT (Green NPC Loot) - Classic World bosses and dragons'),
(10184, 17962, 4, 9, 1, 1, 0, 'Blue Sack of Gems'),
(10184, 17963, 4, 9, 1, 1, 0, 'Green Sack of Gems'),
(10184, 17964, 4, 9, 1, 1, 0, 'Gray Sack of Gems'),
(10184, 17965, 4, 9, 1, 1, 0, 'Yellow Sack of Gems'),
(10184, 17969, 4, 9, 1, 1, 0, 'Red Sack of Gems'),

(11583, 34003, 100, 0, -34003, 1, 0, 'NPC LOOT (Green NPC Loot) - Classic World bosses and dragons'),
(11583, 17962, 20, 9, 1, 1, 0, 'Blue Sack of Gems'),
(11583, 17963, 20, 9, 1, 1, 0, 'Green Sack of Gems'),
(11583, 17964, 20, 9, 1, 1, 0, 'Gray Sack of Gems'),
(11583, 17965, 20, 9, 1, 1, 0, 'Yellow Sack of Gems'),
(11583, 17969, 20, 9, 1, 1, 0, 'Red Sack of Gems'),

(12397, 34003, 100, 0, -34003, 2, 0, 'NPC LOOT (Green NPC Loot) - Classic World bosses and dragons'),
(12397, 17962, 20, 9, 1, 1, 0, 'Blue Sack of Gems'),
(12397, 17963, 20, 9, 1, 1, 0, 'Green Sack of Gems'),
(12397, 17964, 20, 9, 1, 1, 0, 'Gray Sack of Gems'),
(12397, 17965, 20, 9, 1, 1, 0, 'Yellow Sack of Gems'),
(12397, 17969, 20, 9, 1, 1, 0, 'Red Sack of Gems'),

(12397, 18544, 0, 1, 1, 1, 0, 'Doomhide Gauntlets'),
(12397, 18546, 0, 1, 1, 1, 0, 'Infernal Headcage'),
(12397, 19133, 0, 1, 1, 1, 0, 'Fel Infused Leggings'),
(12397, 19134, 0, 1, 1, 1, 0, 'Flayed Doomguard Belt'),
(12397, 19135, 0, 1, 1, 1, 0, 'Blacklight Bracer'),
(12397, 17111, 0, 2, 1, 1, 0, 'Blazefury Medallion'),
(12397, 17112, 0, 2, 1, 1, 0, 'Empyrean Demolisher'),
(12397, 17113, 0, 2, 1, 1, 0, 'Amberseal Keeper'),
(12397, 18204, 0, 2, 1, 1, 0, 'Eskhandar\'s Pelt'),
(12397, 18543, 0, 2, 1, 1, 0, 'Ring of Entropy'),

(14887, 34003, 100, 0, -34003, 1, 0, 'NPC LOOT (Green NPC Loot) - Classic World bosses and dragons'),
(14887, 17962, 20, 9, 1, 1, 0, 'Blue Sack of Gems'),
(14887, 17963, 20, 9, 1, 1, 0, 'Green Sack of Gems'),
(14887, 17964, 20, 9, 1, 1, 0, 'Gray Sack of Gems'),
(14887, 17965, 20, 9, 1, 1, 0, 'Yellow Sack of Gems'),
(14887, 17969, 20, 9, 1, 1, 0, 'Red Sack of Gems'),

(14888, 34003, 100, 0, -34003, 1, 0, 'NPC LOOT (Green NPC Loot) - Classic World bosses and dragons'),
(14888, 17962, 20, 9, 1, 1, 0, 'Blue Sack of Gems'),
(14888, 17963, 20, 9, 1, 1, 0, 'Green Sack of Gems'),
(14888, 17964, 20, 9, 1, 1, 0, 'Gray Sack of Gems'),
(14888, 17965, 20, 9, 1, 1, 0, 'Yellow Sack of Gems'),
(14888, 17969, 20, 9, 1, 1, 0, 'Red Sack of Gems'),

(14889, 34003, 100, 0, -34003, 1, 0, 'NPC LOOT (Green NPC Loot) - Classic World bosses and dragons'),
(14889, 17962, 20, 9, 1, 1, 0, 'Blue Sack of Gems'),
(14889, 17963, 20, 9, 1, 1, 0, 'Green Sack of Gems'),
(14889, 17964, 20, 9, 1, 1, 0, 'Gray Sack of Gems'),
(14889, 17965, 20, 9, 1, 1, 0, 'Yellow Sack of Gems'),
(14889, 17969, 20, 9, 1, 1, 0, 'Red Sack of Gems'),

(14890, 34003, 100, 0, -34003, 1, 0, 'NPC LOOT (Green NPC Loot) - Classic World bosses and dragons'),
(14890, 17962, 20, 9, 1, 1, 0, 'Blue Sack of Gems'),
(14890, 17963, 20, 9, 1, 1, 0, 'Green Sack of Gems'),
(14890, 17964, 20, 9, 1, 1, 0, 'Gray Sack of Gems'),
(14890, 17965, 20, 9, 1, 1, 0, 'Yellow Sack of Gems'),
(14890, 17969, 20, 9, 1, 1, 0, 'Red Sack of Gems'),

(15114, 34003, 100, 0, -34003, 1, 0, 'NPC LOOT (Green NPC Loot) - Classic World bosses and dragons');

-- Table 'creature_loot_template' entry 14834 group 1 has total chance > 100% (200.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 14834 AND `mincountOrRef` IN (-34078,-34079);

-- Table 'creature_loot_template' entry 1763 group 1 has total chance > 100% (101.699997)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 1763 AND `mincountOrRef` IN (-50600,-50610);

-- 34045	Temple of Ahn'Qiraj (Boss Loot) - AQ Enchanting Formulas (group 1) & Imperial Qiraji Armaments / Regalia (group 2)
-- Table 'creature_loot_template' entry 15263 group 1 has total chance > 100% (210.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 15263 AND `mincountOrRef` IN (-34080,-34081);
-- Table 'creature_loot_template' entry 15516 group 1 has total chance > 100% (210.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 15516 AND `mincountOrRef` IN (-34082,-34083);
-- Table 'creature_loot_template' entry 15510 group 1 has total chance > 100% (210.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 15510 AND `mincountOrRef` IN (-34084,-34085);
DELETE FROM `reference_loot_template` WHERE `entry` = 34045 AND `item` IN (20727,20728,20729,20730,20731,20734,20736); -- also included in 34023
UPDATE `reference_loot_template` SET `groupid` = 1 WHERE `entry` = 34045;
UPDATE `creature_loot_template` SET `item` = 34023, `groupid` = 0, `mincountOrRef` = -34023, `comments` = 'Ahn\'Qiraj (Boss Loot) - AQ Enchanting Formulas' WHERE `entry` IN (15263,15299,15509,15510,15511,15516,15517,15543,15544)
AND `groupid` = 1 AND `mincountOrRef` = -34045;
REPLACE INTO `reference_loot_template_names` (`entry`, `name`) VALUES (34045, 'Temple of Ahn\'Qiraj (Boss Loot) - Imperial Qiraji Armaments / Regalia'); -- rename
UPDATE `creature_loot_template` SET `groupid` = 0, `comments` = 'Temple of Ahn\'Qiraj (Boss Loot) - Imperial Qiraji Armaments / Regalia' WHERE `entry` IN (15263,15275,15276,15299,15509,15510,15511,15516,15517,15543,15544)
AND `groupid` = 2 AND `mincountOrRef` = -34045;

-- Table 'creature_loot_template' entry 15747 group 1 has total chance > 100% (125.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 15747 AND `mincountOrRef` IN (-60154,-60154);

-- Table 'creature_loot_template' entry 12098 group 1 has total chance > 100% (200.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 12098 AND `mincountOrRef` IN (-34067,-34068);

-- Table 'creature_loot_template' entry 13020 group 1 has items with chance=0% but group total chance >= 100% (100.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 13020 AND `mincountOrRef` IN (-34033);

-- Table 'creature_loot_template' entry 10504 group 1 has total chance > 100% (104.066673)
-- Table 'creature_loot_template' entry 10504 group 1 has total chance > 100% (105.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 10504 AND `mincountOrRef` IN (-30011,-35031);

-- Table 'creature_loot_template' entry 12201 group 1 has items with chance=0% but group total chance >= 100% (100.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 12201 AND `mincountOrRef` IN (-35009);

-- Table 'creature_loot_template' entry 15928 group 1 has items with chance=0% but group total chance >= 100% (100.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 15928 AND `mincountOrRef` IN (-34041);

-- Table 'creature_loot_template' entry 14323 group 1 has total chance > 100% (106.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 14323 AND `mincountOrRef` IN (-35018);

-- Table 'creature_loot_template' entry 11380 group 1 has total chance > 100% (300.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 11380 AND `mincountOrRef` IN (-34087,-34089,-34091);

-- Table 'creature_loot_template' entry 12264 group 1 has total chance > 100% (214.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 12264 AND `mincountOrRef` IN (-34011,-34065,-34066);

-- Table 'creature_loot_template' entry 11382 group 1 has total chance > 100% (300.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 11382 AND `mincountOrRef` IN (-34087,-34088,-34090);

-- Table 'creature_loot_template' entry 11982 group 1 has total chance > 100% (314.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 11982 AND `mincountOrRef` IN (-34011,-34050,-34051,-34052);

-- Table 'creature_loot_template' entry 11988 group 1 has total chance > 100% (314.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 11988 AND `mincountOrRef` IN (-34011,-34058,-34059,-34060);

-- Table 'creature_loot_template' entry 12017 group 1 has items with chance=0% but group total chance >= 100% (100.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 12017 AND `mincountOrRef` IN (-34034);

-- Table 'creature_loot_template' entry 10503 group 1 has total chance > 100% (117.050003)
-- Table 'creature_loot_template' entry 10503 group 1 has items with chance=0% but group total chance >= 100% (117.050003)
-- Table 'creature_loot_template' entry 10503 group 1 has total chance > 100% (117.000000)
-- Table 'creature_loot_template' entry 10503 group 1 has items with chance=0% but group total chance >= 100% (117.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 10503 AND `mincountOrRef` IN (-30011,-60296);

-- Table 'creature_loot_template' entry 11983 group 1 has total chance > 100% (200.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 11983 AND `mincountOrRef` IN (-34037,-34077);

-- 34024	Ruins of Ahn'Qiraj (Boss Loot) - AQ Enchanting Formulas (group 1) & AQ20 Class Books (group 2)
-- Table 'creature_loot_template' entry 15340 group 1 has total chance > 100% (105.000000)
-- Table 'creature_loot_template' entry 15340 group 2 has total chance > 100% (120.000000)
-- Table 'creature_loot_template' entry 15340 group 2 has items with chance=0% but group total chance >= 100% (120.000000)
-- Table 'creature_loot_template' entry 15341 group 1 has total chance > 100% (105.000000)
-- Table 'creature_loot_template' entry 15341 group 2 has total chance > 100% (120.000000)
-- Table 'creature_loot_template' entry 15341 group 2 has items with chance=0% but group total chance >= 100% (120.000000)
-- Table 'creature_loot_template' entry 15348 group 1 has total chance > 100% (105.000000)
-- Table 'creature_loot_template' entry 15348 group 2 has total chance > 100% (120.000000)
-- Table 'creature_loot_template' entry 15348 group 2 has items with chance=0% but group total chance >= 100% (120.000000)
-- Table 'creature_loot_template' entry 15369 group 1 has total chance > 100% (105.000000)
-- Table 'creature_loot_template' entry 15369 group 2 has total chance > 100% (120.000000)
-- Table 'creature_loot_template' entry 15369 group 2 has items with chance=0% but group total chance >= 100% (120.000000)
-- Table 'creature_loot_template' entry 15370 group 2 has total chance > 100% (130.000000)
-- Table 'creature_loot_template' entry 15370 group 2 has items with chance=0% but group total chance >= 100% (130.000000)
-- Table 'creature_loot_template' entry 15339 group 1 has total chance > 100% (305.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 15339 AND `mincountOrRef` IN (-34103,-34104);
DELETE FROM `creature_loot_template` WHERE `entry` IN (15340,15341,15348,15369,15370,15339) AND `groupid` = 1 AND `mincountOrRef` = -34024;
REPLACE INTO `reference_loot_template_names` (`entry`, `name`) VALUES (34023, 'Ruins of Ahn\'Qiraj (Boss Loot) - AQ20 Enchanting Formulas');
DELETE FROM `reference_loot_template` WHERE `entry` = 34023; -- old outdated wotlkmangos
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(34023, 20727, 0, 1, 1, 1, 203, 'Formula: Enchant Gloves - Shadow Power'),
(34023, 20728, 0, 1, 1, 1, 203, 'Formula: Enchant Gloves - Frost Power'),
(34023, 20729, 0, 1, 1, 1, 203, 'Formula: Enchant Gloves - Fire Power'),
(34023, 20730, 0, 1, 1, 1, 203, 'Formula: Enchant Gloves - Healing Power'),
(34023, 20731, 0, 1, 1, 1, 203, 'Formula: Enchant Gloves - Superior Agility'),
(34023, 20734, 0, 1, 1, 1, 203, 'Formula: Enchant Cloak - Stealth'),
(34023, 20736, 0, 1, 1, 1, 203, 'Formula: Enchant Cloak - Dodge');

REPLACE INTO `reference_loot_template_names` (`entry`, `name`) VALUES (34024, 'Ruins of Ahn\'Qiraj (Boss Loot) - AQ20 Class Books'); -- rename
DELETE FROM `creature_loot_template` WHERE `entry` IN (15340,15341,15348,15369,15370,15339) AND `mincountOrRef` = -34023;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(15339, 34023, 5, 0, -34023, 1, 0, 'Ahn\'Qiraj (Boss Loot) - AQ Enchanting Formulas'),
(15340, 34023, 5, 0, -34023, 1, 0, 'Ahn\'Qiraj (Boss Loot) - AQ Enchanting Formulas'),
(15341, 34023, 5, 0, -34023, 1, 0, 'Ahn\'Qiraj (Boss Loot) - AQ Enchanting Formulas'),
(15348, 34023, 5, 0, -34023, 1, 0, 'Ahn\'Qiraj (Boss Loot) - AQ Enchanting Formulas'),
(15369, 34023, 5, 0, -34023, 1, 0, 'Ahn\'Qiraj (Boss Loot) - AQ Enchanting Formulas'),
(15370, 34023, 5, 0, -34023, 1, 0, 'Ahn\'Qiraj (Boss Loot) - AQ Enchanting Formulas');
UPDATE `creature_loot_template` SET `groupid` = 0, `comments` = 'Ruins of Ahn\'Qiraj (Boss Loot) - AQ20 Class Books' WHERE `entry` IN (15340,15341,15348,15369,15370,15339) AND `groupid` = 2 AND `mincountOrRef` = -34024;
UPDATE `reference_loot_template` SET `groupid` = 1 WHERE `entry` = 34024;

-- Table 'creature_loot_template' entry 12435 group 1 has items with chance=0% but group total chance >= 100% (100.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 12435 AND `mincountOrRef` IN (-34032);

-- Table 'creature_loot_template' entry 14601 group 1 has total chance > 100% (200.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 14601 AND `mincountOrRef` IN (-34037,-34076);

-- Table 'creature_loot_template' entry 11981 group 1 has total chance > 100% (200.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 11981 AND `mincountOrRef` IN (-34037,-34075);

-- Table 'creature_loot_template' entry 15757 group 1 has total chance > 100% (115.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 15757 AND `mincountOrRef` IN (-60298);

-- Table 'creature_loot_template' entry 14326 group 1 has total chance > 100% (106.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 14326 AND `mincountOrRef` IN (-35018);

-- Table 'creature_loot_template' entry 11502 group 1 has total chance > 100% (300.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 11502 AND `mincountOrRef` IN (-34002,-34069,-34070);

-- Table 'creature_loot_template' entry 12056 group 1 has total chance > 100% (214.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 12056 AND `mincountOrRef` IN (-34011,-34056,-34057);

-- Table 'creature_loot_template' entry 12057 group 1 has total chance > 100% (314.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 12057 AND `mincountOrRef` IN (-34011,-34053,-34054,-34055);

-- Table 'creature_loot_template' entry 12118 group 1 has total chance > 100% (214.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 12118 AND `mincountOrRef` IN (-34011,-34061,-34062);

-- Table 'creature_loot_template' entry 15727 group 1 has total chance > 100% (200.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 15727 AND `mincountOrRef` IN (-34101,-34102);

-- Table 'creature_loot_template' entry 12259 group 1 has total chance > 100% (214.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 12259 AND `mincountOrRef` IN (-34011,-34063,-34064);

-- Table 'creature_loot_template' entry 14020 group 1 has total chance > 100% (200.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 14020 AND `mincountOrRef` IN (-34073,-34074);
UPDATE `reference_loot_template_names` SET `name` = 'Blackwing Lair (Boss Loot) - Chromaggus - Epic Items (T2 Shoulders)' WHERE `entry` = 34038;

-- Table 'creature_loot_template' entry 16011 group 1 has items with chance=0% but group total chance >= 100% (100.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 16011 AND `mincountOrRef` IN (-34042);

-- Table 'creature_loot_template' entry 15751 group 1 has total chance > 100% (115.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 15751 AND `mincountOrRef` IN (-60250,-60174);

-- Table 'creature_loot_template' entry 14507 group 1 has total chance > 100% (200.000000)
-- Table 'creature_loot_template' entry 14507 group 1 has items with chance=0% but group total chance >= 100% (200.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 14507 AND `mincountOrRef` IN (-24721,-34086);

-- Table 'creature_loot_template' entry 14510 group 1 has total chance > 100% (200.000000)
-- Table 'creature_loot_template' entry 14510 group 1 has items with chance=0% but group total chance >= 100% (200.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 14510 AND `mincountOrRef` IN (-24721,-34086);

-- Table 'creature_loot_template' entry 14515 group 1 has total chance > 100% (200.000000)
-- Table 'creature_loot_template' entry 14515 group 1 has items with chance=0% but group total chance >= 100% (200.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 14515 AND `mincountOrRef` IN (-24721,-34086);

-- Table 'creature_loot_template' entry 14517 group 1 has total chance > 100% (200.000000)
-- Table 'creature_loot_template' entry 14517 group 1 has items with chance=0% but group total chance >= 100% (200.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 14517 AND `mincountOrRef` IN (-24721,-34086);

-- Table 'creature_loot_template' entry 15807 group 1 has total chance > 100% (115.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 15807 AND `mincountOrRef` IN (-60134);

-- Table 'creature_loot_template' entry 15806 group 1 has total chance > 100% (140.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 15806 AND `mincountOrRef` IN (-60140);

-- Table 'creature_loot_template' entry 15758 group 1 has total chance > 100% (110.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 15758 AND `mincountOrRef` IN (-60298);

-- Table 'creature_loot_template' entry 15750 group 1 has total chance > 100% (110.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 15750 AND `mincountOrRef` IN (-60180,-60180);

-- Table 'creature_loot_template' entry 15748 group 1 has total chance > 100% (110.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 15748 AND `mincountOrRef` IN (-60154);

-- Table 'creature_loot_template' entry 15952 group 1 has items with chance=0% but group total chance >= 100% (100.000000)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 15952 AND `mincountOrRef` IN (-34040);

-- 179501	Knot Thimblejack's Cache
-- Table 'gameobject_loot_template' entry 16591 group 1 has total chance > 100% (108.000000)
-- Table 'gameobject_loot_template' entry 16591 group 1 has items with chance=0% but group total chance >= 100% (108.000000)
UPDATE `gameobject_loot_template` SET `groupid` = 0 WHERE `entry` = 16591 AND `mincountOrRef` = -12006;

-- 180690	Large Scarab Coffer
-- Table 'gameobject_loot_template' entry 17533 group 1 has total chance > 100% (325.000000)
UPDATE `gameobject_loot_template` SET `groupid` = 0 WHERE `entry` = 17533;

-- 180691	Scarab Coffer
-- Table 'gameobject_loot_template' entry 17532 group 1 has total chance > 100% (225.000000)
UPDATE `gameobject_loot_template` SET `groupid` = 0 WHERE `entry` = 17532;

-- 21156	Scarab Bag
-- Table 'item_loot_template' entry 21156 group 1 has total chance > 100% (420.000000)
UPDATE `item_loot_template` SET `groupid` = 0 WHERE `entry` = 21156 AND `mincountOrRef` = -34027;

-- 65174	NPC LOOT (Rare NPC Loot) - The Behemoth - Special Items
-- https://web.archive.org/web/20050215230316/http://wow.allakhazam.com/db/mob.html?wmob=8924
-- https://www.wowhead.com/wotlk/npc=8924/the-behemoth
-- Table 'reference_loot_template' entry 65174 group 1 has total chance > 100% (150.000000)
UPDATE `reference_loot_template` SET `ChanceOrQuestChance` = 50, `groupid` = 1 WHERE `entry` = 65174 AND `item` = 11603; -- Vilerend Slicer
UPDATE `reference_loot_template` SET `ChanceOrQuestChance` = 0, `groupid` = 1, `maxcount` = 1 WHERE `entry` = 65174 AND `mincountOrRef` = -60184; -- NPC LOOT (Green World Drop) - (Item Levels: 49-53) - (NPC Levels: 50)

-- ================
-- Non DBErrors.log
-- ================










-- https://github.com/cmangos/tbc-db/commit/844efa1c73391c02794c6adf99e538960cd50148#diff-834d137b91daa23bb3caa40bdb528ff0522742702aa14692fd2735735217c852
-- SELECT DISTINCT entry FROM reference_loot_template where groupid NOT IN (0,1);
-- 16882	Battered Junkbox (16882) - (Daggers, Rings & Necklace, Patterns)
DELETE FROM `reference_loot_template_names` WHERE `entry` = 16882;
DELETE FROM `reference_loot_template` WHERE `entry` = 16882;
DELETE FROM `item_loot_template` WHERE `entry` = 16882;
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16882, 929, 10, 0, 1, 1, 0, 'Healing Potion'),
(16882, 5374, 11, 0, 1, 1, 0, 'Small Pocket Watch'),
(16882, 1206, 1.3, 1, 1, 1, 0, 'Moss Agate'),
(16882, 1705, 1.7, 1, 1, 1, 0, 'Lesser Moonstone'),

(16882, 1935, 0.05, 2, 1, 1, 0, 'Assassin\'s Blade'), -- https://www.wowhead.com/tbc/item=1935/assassins-blade#comments:id=2640111
(16882, 2236, 0.05, 2, 1, 1, 0, 'Blackfang'), -- https://www.wowhead.com/wotlk/item=2236/blackfang#comments

(16882, 12054, 0.05, 3, 1, 1, 0, 'Demon Band'),
(16882, 11983, 0.05, 3, 1, 1, 0, 'Chrome Ring'),
(16882, 4998, 0.05, 3, 1, 1, 0, 'Blood Ring'),
(16882, 4999, 0.05, 3, 1, 1, 0, 'Azora\'s Will'),
(16882, 5001, 0.05, 3, 1, 1, 0, 'Heart Ring'),
(16882, 11982, 0.05, 3, 1, 1, 0, 'Viridian Band'),
(16882, 11969, 0.05, 3, 1, 1, 0, 'Jacinth Circle'),
(16882, 11968, 0.05, 3, 1, 1, 0, 'Amber Hoop'),
(16882, 11967, 0.05, 3, 1, 1, 0, 'Zircon Band'),
(16882, 11984, 0.05, 3, 1, 1, 0, 'Cobalt Ring'),
(16882, 11993, 0.05, 3, 1, 1, 0, 'Clay Ring'),
(16882, 11994, 0.05, 3, 1, 1, 0, 'Coral Band'),
(16882, 12053, 0.05, 3, 1, 1, 0, 'Volcanic Rock Ring'),
(16882, 12052, 0.05, 3, 1, 1, 0, 'Ring of the Moon'),
(16882, 12047, 0.05, 3, 1, 1, 0, 'Spectral Necklace'),
(16882, 12008, 0.05, 3, 1, 1, 0, 'Savannah Ring'),
(16882, 12007, 0.05, 3, 1, 1, 0, 'Prairie Ring'),
(16882, 12006, 0.05, 3, 1, 1, 0, 'Meadow Ring'),
(16882, 11995, 0.05, 3, 1, 1, 0, 'Ivory Band'),

(16882, 3611, 0.03, 4, 1, 1, 0, 'Plans: Green Iron Boots'),
(16882, 11098, 0.03, 4, 1, 1, 0, 'Formula: Enchant Cloak - Lesser Shadow Resistance'),
(16882, 11039, 0.03, 4, 1, 1, 0, 'Formula: Enchant Cloak - Minor Agility'),
(16882, 11038, 0.03, 4, 1, 1, 0, 'Formula: Enchant 2H Weapon - Lesser Spirit'),
(16882, 10316, 0.03, 4, 1, 1, 0, 'Pattern: Colorful Kilt'),
(16882, 7363, 0.03, 4, 1, 1, 0, 'Pattern: Pilferer\'s Gloves'),
(16882, 7360, 0.03, 4, 1, 1, 0, 'Pattern: Dark Leather Gloves'),
(16882, 4348, 0.03, 4, 1, 1, 0, 'Pattern: Phoenix Gloves'),
(16882, 4296, 0.03, 4, 1, 1, 0, 'Pattern: Dark Leather Shoulders'),
(16882, 4294, 0.03, 4, 1, 1, 0, 'Pattern: Hillman\'s Belt'),
(16882, 3874, 0.03, 4, 1, 1, 0, 'Plans: Polished Steel Boots'),
(16882, 3608, 0.03, 4, 1, 1, 0, 'Plans: Mighty Iron Hammer'),
(16882, 3396, 0.03, 4, 1, 1, 0, 'Recipe: Elixir of Lesser Agility'),
(16882, 3393, 0.03, 4, 1, 1, 0, 'Recipe: Minor Magic Resistance Potion'),
(16882, 2883, 0.03, 4, 1, 1, 0, 'Plans: Deadly Bronze Poniard'),
(16882, 4350, 0.03, 4, 1, 1, 0, 'Pattern: Spider Silk Slippers'),
(16882, 4410, 0.03, 4, 1, 1, 0, 'Schematic: Shadow Goggles'),
(16882, 4412, 0.03, 4, 1, 1, 0, 'Schematic: Moonsight Rifle'),
(16882, 7091, 0.03, 4, 1, 1, 0, 'Pattern: Truefaith Gloves'),
(16882, 6391, 0.03, 4, 1, 1, 0, 'Pattern: Stylish Green Shirt'),
(16882, 6390, 0.03, 4, 1, 1, 0, 'Pattern: Stylish Blue Shirt'),
(16882, 6375, 0.03, 4, 1, 1, 0, 'Formula: Enchant Bracer - Lesser Spirit'),
(16882, 6211, 0.03, 4, 1, 1, 0, 'Recipe: Elixir of Ogre\'s Strength'),
(16882, 6046, 0.03, 4, 1, 1, 0, 'Plans: Steel Weapon Chain'),
(16882, 6044, 0.03, 4, 1, 1, 0, 'Plans: Iron Shield Spike'),
(16882, 5578, 0.03, 4, 1, 1, 0, 'Plans: Silvered Bronze Breastplate'),
(16882, 2601, 0.03, 4, 1, 1, 0, 'Pattern: Gray Woolen Robe');

-- 16883	Worn Junkbox (16883) - (Daggers, Rings, Patterns, Poisons)
DELETE FROM `reference_loot_template_names` WHERE `entry` = 16883;
DELETE FROM `reference_loot_template` WHERE `entry` = 16883;
DELETE FROM `item_loot_template` WHERE `entry` = 16883;
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16883, 1710, 10, 0, 1, 1, 0, 'Greater Healing Potion'),
(16883, 5140, 6, 0, 2, 5, 0, 'Flash Powder'),
(16883, 5530, 10, 0, 2, 5, 0, 'Blinding Powder'),

(16883, 1529, 1, 1, 1, 1, 0, 'Jade'),
(16883, 3864, 1, 1, 1, 1, 0, 'Citrine'),

(16883, 776, 0.05, 2, 1, 1, 0, 'Vendetta'),
(16883, 8006, 0.05, 2, 1, 1, 0, 'The Ziggler'),

(16883, 11996, 0.05, 3, 1, 1, 0, 'Basalt Ring'),
(16883, 11986, 0.05, 3, 1, 1, 0, 'Thallium Hoop'),
(16883, 11985, 0.05, 3, 1, 1, 0, 'Cerulean Ring'),
(16883, 11972, 0.05, 3, 1, 1, 0, 'Carnelian Loop'),
(16883, 11971, 0.05, 3, 1, 1, 0, 'Amethyst Band'),
(16883, 11970, 0.05, 3, 1, 1, 0, 'Spinel Ring'),
(16883, 5003, 0.05, 3, 1, 1, 0, 'Crystal Starfire Medallion'),
(16883, 5007, 0.05, 3, 1, 1, 0, 'Band of Thorns'),
(16883, 5009, 0.05, 3, 1, 1, 0, 'Mindbender Loop'),
(16883, 5011, 0.05, 3, 1, 1, 0, 'Welken Ring'),
(16883, 11997, 0.05, 3, 1, 1, 0, 'Greenstone Circle'),
(16883, 12009, 0.05, 3, 1, 1, 0, 'Tundra Ring'),
(16883, 12010, 0.05, 3, 1, 1, 0, 'Fen Ring'),
(16883, 12040, 0.05, 3, 1, 1, 0, 'Forest Pendant'),
(16883, 12039, 0.05, 3, 1, 1, 0, 'Tundra Necklace'),
(16883, 12030, 0.05, 3, 1, 1, 0, 'Jet Chain'),
(16883, 12028, 0.05, 3, 1, 1, 0, 'Basalt Necklace'),
(16883, 12029, 0.05, 3, 1, 1, 0, 'Greenstone Talisman'),
(16883, 12020, 0.05, 3, 1, 1, 0, 'Thallium Choker'),
(16883, 12019, 0.05, 3, 1, 1, 0, 'Cerulean Talisman'),

(16883, 7449, 0.03, 4, 1, 1, 0, 'Pattern: Dusky Leather Leggings'),
(16883, 7450, 0.03, 4, 1, 1, 0, 'Pattern: Green Whelp Armor'),
(16883, 7453, 0.03, 4, 1, 1, 0, 'Pattern: Swift Boots'),
-- (16883, 21940, 0.03, 4, 1, 1, 0, 'Design: Golden Hare'),
(16883, 10601, 0.03, 4, 1, 1, 0, 'Schematic: Bright-Eye Goggles'),
(16883, 11164, 0.03, 4, 1, 1, 0, 'Formula: Enchant Weapon - Lesser Beastslayer'),
(16883, 11167, 0.03, 4, 1, 1, 0, 'Formula: Enchant Boots - Lesser Spirit'),
-- (16883, 20976, 0.03, 4, 1, 1, 0, 'Design: Citrine Pendant of Golden Healing'),
-- (16883, 20974, 0.03, 4, 1, 1, 0, 'Design: Jade Pendant of Blasting'),
(16883, 3867, 0.03, 4, 1, 1, 0, 'Plans: Golden Iron Destroyer'),
(16883, 7092, 0.03, 4, 1, 1, 0, 'Pattern: Hands of Darkness'),
(16883, 7090, 0.03, 4, 1, 1, 0, 'Pattern: Green Silk Armor'),
(16883, 4300, 0.03, 4, 1, 1, 0, 'Pattern: Guardian Leather Bracers'),
(16883, 4299, 0.03, 4, 1, 1, 0, 'Pattern: Guardian Armor'),
(16883, 3874, 0.03, 4, 1, 1, 0, 'Plans: Polished Steel Boots'),
(16883, 3873, 0.03, 4, 1, 1, 0, 'Plans: Golden Scale Cuirass'),
(16883, 3872, 0.03, 4, 1, 1, 0, 'Plans: Golden Scale Leggings'),
(16883, 3870, 0.03, 4, 1, 1, 0, 'Plans: Green Iron Shoulders'),
(16883, 3869, 0.03, 4, 1, 1, 0, 'Plans: Shadow Crescent Axe'),
(16883, 3868, 0.03, 4, 1, 1, 0, 'Plans: Frost Tiger Blade'),
(16883, 3866, 0.03, 4, 1, 1, 0, 'Plans: Jade Serpentblade'),
(16883, 3832, 0.03, 4, 1, 1, 0, 'Recipe: Elixir of Detect Lesser Invisibility'),
(16883, 3831, 0.03, 4, 1, 1, 0, 'Recipe: Mighty Troll\'s Blood Potion'),
(16883, 3830, 0.03, 4, 1, 1, 0, 'Recipe: Elixir of Fortitude'),
(16883, 4352, 0.03, 4, 1, 1, 0, 'Pattern: Boots of the Enchanter'),
(16883, 4353, 0.03, 4, 1, 1, 0, 'Pattern: Spider Belt'),
(16883, 6045, 0.03, 4, 1, 1, 0, 'Plans: Iron Counterweight'),
(16883, 7085, 0.03, 4, 1, 1, 0, 'Pattern: Azure Shoulders'),
(16883, 7086, 0.03, 4, 1, 1, 0, 'Pattern: Earthen Silk Belt'),
(16883, 5974, 0.03, 4, 1, 1, 0, 'Pattern: Guardian Cloak'),
(16883, 5774, 0.03, 4, 1, 1, 0, 'Pattern: Green Silk Pack'),
(16883, 4417, 0.03, 4, 1, 1, 0, 'Schematic: Large Seaforium Charge'),
(16883, 4416, 0.03, 4, 1, 1, 0, 'Schematic: Goblin Land Mine'),
(16883, 4414, 0.03, 4, 1, 1, 0, 'Schematic: Portable Bronze Mortar'),
(16883, 7084, 0.03, 4, 1, 1, 0, 'Pattern: Crimson Silk Shoulders'),

(16883, 2930, 0, 5, 2, 5, 0, 'Essence of Pain'),
(16883, 8923, 0, 5, 2, 5, 0, 'Essence of Agony'),
-- (16883, 8924, 0, 5, 2, 5, 0, 'Dust of Deterioration'),
(16883, 5173, 0, 5, 2, 5, 0, 'Deathweed'),
(16883, 2928, 0, 5, 2, 5, 0, 'Dust of Decay');

-- (16883, 27729, 0.5, 6, 1, 1, 0, 'Humanoid Skull'),
-- (16883, 24231, 3, 6, 2, 3, 0, 'Coarse Snuff'),
-- (16883, 24232, 5, 6, 2, 2, 0, 'Shabby Knot'),
-- (16883, 24281, 5, 6, 1, 1, 0, 'Carved Ivory Bone'),
-- (16883, 24282, 1, 6, 1, 1, 0, 'Rogue\'s Diary');

-- 16884	Sturdy Junkbox (16884) - (Daggers, Jewellery, Patterns, Poisons)
DELETE FROM `reference_loot_template_names` WHERE `entry` = 16884;
DELETE FROM `reference_loot_template` WHERE `entry` = 16884;
DELETE FROM `item_loot_template` WHERE `entry` = 16884;
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16884, 3928, 10, 0, 1, 1, 0, 'Superior Healing Potion'),
(16884, 5140, 8, 0, 1, 5, 0, 'Flash Powder'),
(16884, 5530, 12, 0, 1, 6, 0, 'Blinding Powder'),
(16884, 7909, 1, 1, 1, 1, 0, 'Aquamarine'),
(16884, 7910, 1, 1, 1, 1, 0, 'Star Ruby'),

(16884, 2164, 0.05, 2, 1, 1, 0, 'Gut Ripper'),
(16884, 4091, 0.05, 2, 1, 1, 0, 'Widowmaker'),

(16884, 12022, 0.05, 3, 1, 1, 0, 'Iridium Chain'),
(16884, 12013, 0.05, 3, 1, 1, 0, 'Desert Ring'),
(16884, 12012, 0.05, 3, 1, 1, 0, 'Marsh Ring'),
(16884, 12001, 0.05, 3, 1, 1, 0, 'Onyx Ring'),
(16884, 11999, 0.05, 3, 1, 1, 0, 'Lodestone Hoop'),
(16884, 11998, 0.05, 3, 1, 1, 0, 'Jet Loop'),
(16884, 11988, 0.05, 3, 1, 1, 0, 'Tellurium Band'),
(16884, 11987, 0.05, 3, 1, 1, 0, 'Iridium Circle'),
(16884, 11975, 0.05, 3, 1, 1, 0, 'Topaz Ring'),
(16884, 11974, 0.05, 3, 1, 1, 0, 'Aquamarine Ring'),
(16884, 11973, 0.05, 3, 1, 1, 0, 'Hematite Link'),
(16884, 12023, 0.05, 3, 1, 1, 0, 'Tellurium Necklace'),
(16884, 12024, 0.05, 3, 1, 1, 0, 'Vanadium Talisman'),
(16884, 12032, 0.05, 3, 1, 1, 0, 'Onyx Choker'),
(16884, 7552, 0.05, 3, 1, 1, 0, 'Falcon\'s Hook'),
(16884, 7553, 0.05, 3, 1, 1, 0, 'Band of the Unicorn'),
(16884, 12043, 0.05, 3, 1, 1, 0, 'Desert Choker'),
(16884, 12042, 0.05, 3, 1, 1, 0, 'Marsh Chain'),
(16884, 12031, 0.05, 3, 1, 1, 0, 'Lodestone Necklace'),

(16884, 11204, 0.03, 4, 1, 1, 0, 'Formula: Enchant Bracer - Greater Spirit'),
(16884, 11208, 0.03, 4, 1, 1, 0, 'Formula: Enchant Weapon - Demonslaying'),
(16884, 11225, 0.03, 4, 1, 1, 0, 'Formula: Enchant Bracer - Greater Stamina'),
-- (16884, 21949, 0.03, 4, 1, 1, 0, 'Design: Ruby Serpent'),
-- (16884, 21947, 0.03, 4, 1, 1, 0, 'Design: Gem Studded Band'),
-- (16884, 21945, 0.03, 4, 1, 1, 0, 'Design: The Aquamarine Ward'),
-- (16884, 21944, 0.03, 4, 1, 1, 0, 'Design: Truesilver Boar'),
(16884, 7992, 0.03, 4, 1, 1, 0, 'Plans: Blue Glittering Axe'),
(16884, 11202, 0.03, 4, 1, 1, 0, 'Formula: Enchant Shield - Stamina'),
(16884, 10606, 0.03, 4, 1, 1, 0, 'Schematic: Parachute Cloak'),
(16884, 8387, 0.03, 4, 1, 1, 0, 'Pattern: Big Voodoo Mask'),
(16884, 8385, 0.03, 4, 1, 1, 0, 'Pattern: Turtle Scale Gloves'),
(16884, 8029, 0.03, 4, 1, 1, 0, 'Plans: Wicked Mithril Blade'),
(16884, 7993, 0.03, 4, 1, 1, 0, 'Plans: Dazzling Mithril Rapier'),
(16884, 7990, 0.03, 4, 1, 1, 0, 'Plans: Heavy Mithril Helm'),
(16884, 7989, 0.03, 4, 1, 1, 0, 'Plans: Mithril Spurs'),
(16884, 7975, 0.03, 4, 1, 1, 0, 'Plans: Heavy Mithril Pants'),
(16884, 4300, 0.03, 4, 1, 1, 0, 'Pattern: Guardian Leather Bracers'),
(16884, 3395, 0.03, 4, 1, 1, 0, 'Recipe: Limited Invulnerability Potion'),
(16884, 8389, 0.03, 4, 1, 1, 0, 'Pattern: Big Voodoo Pants'),
(16884, 10312, 0.03, 4, 1, 1, 0, 'Pattern: Red Mageweave Gloves'),
(16884, 10315, 0.03, 4, 1, 1, 0, 'Pattern: Red Mageweave Shoulders'),
(16884, 10603, 0.03, 4, 1, 1, 0, 'Schematic: Catseye Ultra Goggles'),
(16884, 10604, 0.03, 4, 1, 1, 0, 'Schematic: Mithril Heavy-bore Rifle'),
(16884, 10302, 0.03, 4, 1, 1, 0, 'Pattern: Red Mageweave Pants'),
(16884, 10300, 0.03, 4, 1, 1, 0, 'Pattern: Red Mageweave Vest'),
(16884, 9295, 0.03, 4, 1, 1, 0, 'Recipe: Invisibility Potion'),
(16884, 9293, 0.03, 4, 1, 1, 0, 'Recipe: Magic Resistance Potion'),
(16884, 10320, 0.03, 4, 1, 1, 0, 'Pattern: Red Mageweave Headband'),

(16884, 2930, 0, 5, 2, 5, 0, 'Essence of Pain'),
(16884, 8923, 0, 5, 2, 5, 0, 'Essence of Agony'),
(16884, 5173, 0, 5, 2, 5, 0, 'Deathweed'),
-- (16884, 8924, 0, 5, 2, 5, 0, 'Dust of Deterioration'),
(16884, 2928, 0, 5, 2, 5, 0, 'Dust of Decay');

-- (16884, 24231, 4, 6, 2, 3, 0, 'Coarse Snuff'),
-- (16884, 24232, 5, 6, 2, 2, 0, 'Shabby Knot'),
-- (16884, 24281, 6, 6, 1, 1, 0, 'Carved Ivory Bone'),
-- (16884, 24283, 0.01, 6, 1, 1, 0, 'An Antique Gun'),
-- (16884, 27729, 0.8, 6, 1, 1, 0, 'Humanoid Skull'),
-- (16884, 24282, 1.5, 6, 1, 1, 0, 'Rogue\'s Diary');

-- 16885	Heavy Junkbox (16885) - (Daggers, Jewellery, Patterns, Poisons)
DELETE FROM `reference_loot_template_names` WHERE `entry` = 16885;
DELETE FROM `reference_loot_template` WHERE `entry` = 16885;
DELETE FROM `item_loot_template` WHERE `entry` = 16885;
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16885, 5140, 10, 0, 2, 5, 0, 'Flash Powder'),
(16885, 5530, 16, 0, 2, 5, 0, 'Blinding Powder'),
(16885, 7910, 1, 1, 1, 1, 0, 'Star Ruby'),
(16885, 13446, 10, 0, 1, 1, 0, 'Major Healing Potion'),

(16885, 1728, 0.0333, 2, 1, 1, 0, 'Teebu\'s Blazing Longsword'),
(16885, 2163, 0.0333, 2, 1, 1, 0, 'Shadowblade'),
(16885, 14555, 0.0333, 2, 1, 1, 0, 'Alcor\'s Sunrazor'),

(16885, 12014, 0.05, 3, 1, 1, 0, 'Arctic Ring'),
(16885, 12015, 0.05, 3, 1, 1, 0, 'Swamp Ring'),
(16885, 12025, 0.05, 3, 1, 1, 0, 'Selenium Chain'),
(16885, 12026, 0.05, 3, 1, 1, 0, 'Quicksilver Pendant'),
(16885, 12034, 0.05, 3, 1, 1, 0, 'Marble Necklace'),
(16885, 12035, 0.05, 3, 1, 1, 0, 'Obsidian Pendant'),
(16885, 12044, 0.05, 3, 1, 1, 0, 'Arctic Pendant'),
(16885, 12045, 0.05, 3, 1, 1, 0, 'Swamp Pendant'),
(16885, 12046, 0.05, 3, 1, 1, 0, 'Jungle Necklace'),
(16885, 12055, 0.05, 3, 1, 1, 0, 'Stardust Band'),
(16885, 12056, 0.05, 3, 1, 1, 0, 'Ring of the Heavens'),
(16885, 12057, 0.05, 3, 1, 1, 0, 'Dragonscale Band'),
(16885, 12004, 0.05, 3, 1, 1, 0, 'Obsidian Band'),
(16885, 12002, 0.05, 3, 1, 1, 0, 'Marble Circle'),
(16885, 11991, 0.05, 3, 1, 1, 0, 'Quicksilver Ring'),
(16885, 11976, 0.05, 3, 1, 1, 0, 'Sardonyx Knuckle'),
(16885, 11977, 0.05, 3, 1, 1, 0, 'Serpentine Loop'),
(16885, 11978, 0.05, 3, 1, 1, 0, 'Jasper Link'),
(16885, 11989, 0.05, 3, 1, 1, 0, 'Vanadium Loop'),
(16885, 11990, 0.05, 3, 1, 1, 0, 'Selenium Loop'),

(16885, 15731, 0.03, 4, 1, 1, 0, 'Pattern: Runic Leather Gauntlets'),
(16885, 15737, 0.03, 4, 1, 1, 0, 'Pattern: Chimeric Boots'),
-- (16885, 21953, 0.03, 4, 1, 1, 0, 'Design: Emerald Owl'),
(16885, 14499, 0.03, 4, 1, 1, 0, 'Pattern: Mooncloth Bag'),
(16885, 14498, 0.03, 4, 1, 1, 0, 'Pattern: Runecloth Headband'),
(16885, 14494, 0.03, 4, 1, 1, 0, 'Pattern: Brightcloth Pants'),
(16885, 14484, 0.03, 4, 1, 1, 0, 'Pattern: Brightcloth Cloak'),
(16885, 15743, 0.03, 4, 1, 1, 0, 'Pattern: Heavy Scorpid Belt'),
(16885, 15745, 0.03, 4, 1, 1, 0, 'Pattern: Runic Leather Belt'),
(16885, 15746, 0.03, 4, 1, 1, 0, 'Pattern: Chimeric Leggings'),
-- (16885, 21949, 0.03, 4, 1, 1, 0, 'Design: Ruby Serpent'),
(16885, 16220, 0.03, 4, 1, 1, 0, 'Formula: Enchant Boots - Spirit'),
(16885, 16218, 0.03, 4, 1, 1, 0, 'Formula: Enchant Bracer - Superior Spirit'),
(16885, 16215, 0.03, 4, 1, 1, 0, 'Formula: Enchant Boots - Greater Stamina'),
(16885, 15757, 0.03, 4, 1, 1, 0, 'Pattern: Wicked Leather Pants'),
(16885, 15755, 0.03, 4, 1, 1, 0, 'Pattern: Chimeric Vest'),
(16885, 14478, 0.03, 4, 1, 1, 0, 'Pattern: Brightcloth Robe'),
(16885, 14467, 0.03, 4, 1, 1, 0, 'Pattern: Frostweave Robe'),
(16885, 13490, 0.03, 4, 1, 1, 0, 'Recipe: Greater Stoneshield Potion'),
(16885, 11224, 0.03, 4, 1, 1, 0, 'Formula: Enchant Shield - Frost Resistance'),
(16885, 11208, 0.03, 4, 1, 1, 0, 'Formula: Enchant Weapon - Demonslaying'),
(16885, 12682, 0.03, 4, 1, 1, 0, 'Plans: Thorium Armor'),
(16885, 12683, 0.03, 4, 1, 1, 0, 'Plans: Thorium Belt'),
(16885, 12684, 0.03, 4, 1, 1, 0, 'Plans: Thorium Bracers'),
(16885, 12689, 0.03, 4, 1, 1, 0, 'Plans: Radiant Breastplate'),
(16885, 12691, 0.03, 4, 1, 1, 0, 'Plans: Wildthorn Mail'),
(16885, 12704, 0.03, 4, 1, 1, 0, 'Plans: Thorium Leggings'),
(16885, 12697, 0.03, 4, 1, 1, 0, 'Plans: Radiant Boots'),
(16885, 12695, 0.03, 4, 1, 1, 0, 'Plans: Radiant Gloves'),
(16885, 12694, 0.03, 4, 1, 1, 0, 'Plans: Thorium Helm'),
(16885, 12693, 0.03, 4, 1, 1, 0, 'Plans: Thorium Boots'),

-- (16885, 8924, 0, 5, 2, 5, 0, 'Dust of Deterioration'),
(16885, 8923, 0, 5, 2, 5, 0, 'Essence of Agony'),
(16885, 5173, 0, 5, 2, 5, 0, 'Deathweed'),
(16885, 2930, 0, 5, 2, 5, 0, 'Essence of Pain'),
(16885, 2928, 0, 5, 2, 5, 0, 'Dust of Decay');

-- (16885, 24231, 5, 6, 2, 3, 0, 'Coarse Snuff'),
-- (16885, 24232, 5, 6, 2, 2, 0, 'Shabby Knot'),
-- (16885, 24281, 9, 6, 1, 1, 0, 'Carved Ivory Bone'),
-- (16885, 24283, 0.01, 6, 1, 1, 0, 'An Antique Gun'),
-- (16885, 27729, 1, 6, 1, 1, 0, 'Humanoid Skull'),
-- (16885, 24282, 2, 6, 1, 1, 0, 'Rogue\'s Diary');

-- 30101	AQ War Effort - Colossus of Zora/Regal/Ashi - Rare Items
-- 30102	AQ War Effort - Colossus of Zora/Regal/Ashi - Epic Items
DELETE FROM `creature_loot_template` WHERE `entry` IN (15740,15741,15742);
DELETE FROM `reference_loot_template_names` WHERE `entry` = 30101;
DELETE FROM `reference_loot_template` WHERE `entry` = 30101;
DELETE FROM `reference_loot_template_names` WHERE `entry` = 30102;
DELETE FROM `reference_loot_template` WHERE `entry` = 30102;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(15740, 1203, 0, 1, 1, 1, 0, 'Aegis of Stormwind'),
(15740, 1973, 0, 1, 1, 1, 0, 'Orb of Deception'),
(15740, 2564, 0, 1, 1, 1, 0, 'Elven Spirit Claws'),
(15740, 4696, 0, 1, 1, 1, 0, 'Lapidis Tankard of Tidesippe'),
(15740, 5266, 0, 1, 1, 1, 0, 'Eye of Adaegus'),
(15740, 6622, 0, 1, 1, 1, 0, 'Sword of Zeal'),
(15740, 7734, 0, 1, 1, 1, 0, 'Six Demon Bag'),
(15740, 9402, 0, 1, 1, 1, 0, 'Earthborn Kilt'),
(15740, 11302, 0, 1, 1, 1, 0, 'Uther\'s Strength'),
(15740, 13000, 0, 1, 1, 1, 0, 'Staff of Hale Magefire'),

(15740, 13001, 0, 2, 1, 1, 0, 'Maiden\'s Circle'),
(15740, 13002, 0, 2, 1, 1, 0, 'Lady Alizabeth\'s Pendant'),
(15740, 13003, 0, 2, 1, 1, 0, 'Lord Alexander\'s Battle Axe'),
(15740, 13004, 0, 2, 1, 1, 0, 'Torch of Austen'),
(15740, 13006, 0, 2, 1, 1, 0, 'Mass of McGowan'),
(15740, 13007, 0, 2, 1, 1, 0, 'Mageflame Cloak'),
(15740, 13008, 0, 2, 1, 1, 0, 'Dalewind Trousers'),
(15740, 13009, 0, 2, 1, 1, 0, 'Cow King\'s Hide'),
(15740, 13013, 0, 2, 1, 1, 0, 'Elder Wizard\'s Mantle'),
(15740, 13015, 0, 2, 1, 1, 0, 'Serathil'),

(15740, 13030, 0, 3, 1, 1, 0, 'Basilisk Bone'),
(15740, 13036, 0, 3, 1, 1, 0, 'Assassination Blade'),
(15740, 13040, 0, 3, 1, 1, 0, 'Heartseeking Crossbow'),
(15740, 13047, 0, 3, 1, 1, 0, 'Twig of the World Tree'),
(15740, 13053, 0, 3, 1, 1, 0, 'Doombringer'),
(15740, 13060, 0, 3, 1, 1, 0, 'The Needler'),
(15740, 13066, 0, 3, 1, 1, 0, 'Wyrmslayer Spaulders'),
(15740, 13067, 0, 3, 1, 1, 0, 'Hydralick Armor'),
(15740, 13070, 0, 3, 1, 1, 0, 'Sapphiron\'s Scale Boots'),
(15740, 13072, 0, 3, 1, 1, 0, 'Stonegrip Gauntlets'),

(15740, 13073, 0, 4, 1, 1, 0, 'Mugthol\'s Helm'),
(15740, 13075, 0, 4, 1, 1, 0, 'Direwing Legguards'),
(15740, 13077, 0, 4, 1, 1, 0, 'Girdle of Uther'),
(15740, 13083, 0, 4, 1, 1, 0, 'Garrett Family Crest'),
(15740, 13085, 0, 4, 1, 1, 0, 'Horizon Choker'),
(15740, 13091, 0, 4, 1, 1, 0, 'Medallion of Grand Marshal Morris'),
(15740, 13096, 0, 4, 1, 1, 0, 'Band of the Hierophant'),
(15740, 13107, 0, 4, 1, 1, 0, 'Magiskull Cuffs'),
(15740, 13111, 0, 4, 1, 1, 0, 'Sandals of the Insurgent'),
(15740, 13116, 0, 4, 1, 1, 0, 'Spaulders of the Unseen'),

(15740, 13118, 0, 5, 1, 1, 0, 'Serpentine Sash'),
(15740, 13120, 0, 5, 1, 1, 0, 'Deepfury Bracers'),
(15740, 13123, 0, 5, 1, 1, 0, 'Dreamwalker Armor'),
(15740, 13125, 0, 5, 1, 1, 0, 'Elven Chain Boots'),
(15740, 13126, 0, 5, 1, 1, 0, 'Battlecaller Gauntlets'),
(15740, 13130, 0, 5, 1, 1, 0, 'Windrunner Legguards'),
(15740, 13133, 0, 5, 1, 1, 0, 'Drakesfire Epaulets'),
(15740, 13135, 0, 5, 1, 1, 0, 'Lordly Armguards'),
(15740, 13144, 0, 5, 1, 1, 0, 'Serenity Belt'),
(15740, 13146, 0, 5, 1, 1, 0, 'Shell Launcher Shotgun'),

(15740, 647, 0, 6, 1, 1, 0, 'Destiny'),
(15740, 811, 0, 6, 1, 1, 0, 'Axe of the Deep Woods'),
(15740, 1168, 0, 6, 1, 1, 0, 'Skullflame Shield'),
(15740, 1263, 0, 6, 1, 1, 0, 'Brain Hacker'),
(15740, 1728, 0, 6, 1, 1, 0, 'Teebu\'s Blazing Longsword'),
(15740, 2099, 0, 6, 1, 1, 0, 'Dwarven Hand Cannon'),
(15740, 2244, 0, 6, 1, 1, 0, 'Krol Blade'),
(15740, 2801, 0, 6, 1, 1, 0, 'Blade of Hanna'),
(15740, 14555, 0, 6, 1, 1, 0, 'Alcor\'s Sunrazor'),

(15740, 833, 0, 7, 1, 1, 0, 'Lifestone'),
(15740, 944, 0, 7, 1, 1, 0, 'Elemental Mage Staff'),
(15740, 1443, 0, 7, 1, 1, 0, 'Jeweled Amulet of Cainwyn'),
(15740, 2243, 0, 7, 1, 1, 0, 'Hand of Edward the Odd'),
(15740, 2245, 0, 7, 1, 1, 0, 'Helm of Narv'),
(15740, 2246, 0, 7, 1, 1, 0, 'Myrmidon\'s Signet'),
(15740, 3475, 0, 7, 1, 1, 0, 'Cloak of Flames'),
(15740, 14553, 0, 7, 1, 1, 0, 'Sash of Mercy'),
(15740, 14554, 0, 7, 1, 1, 0, 'Cloudkeeper Legplates'),
(15740, 14558, 0, 7, 1, 1, 0, 'Lady Maye\'s Pendant'),

(15741, 1203, 0, 1, 1, 1, 0, 'Aegis of Stormwind'),
(15741, 1973, 0, 1, 1, 1, 0, 'Orb of Deception'),
(15741, 2564, 0, 1, 1, 1, 0, 'Elven Spirit Claws'),
(15741, 4696, 0, 1, 1, 1, 0, 'Lapidis Tankard of Tidesippe'),
(15741, 5266, 0, 1, 1, 1, 0, 'Eye of Adaegus'),
(15741, 6622, 0, 1, 1, 1, 0, 'Sword of Zeal'),
(15741, 7734, 0, 1, 1, 1, 0, 'Six Demon Bag'),
(15741, 9402, 0, 1, 1, 1, 0, 'Earthborn Kilt'),
(15741, 11302, 0, 1, 1, 1, 0, 'Uther\'s Strength'),
(15741, 13000, 0, 1, 1, 1, 0, 'Staff of Hale Magefire'),

(15741, 13001, 0, 2, 1, 1, 0, 'Maiden\'s Circle'),
(15741, 13002, 0, 2, 1, 1, 0, 'Lady Alizabeth\'s Pendant'),
(15741, 13003, 0, 2, 1, 1, 0, 'Lord Alexander\'s Battle Axe'),
(15741, 13004, 0, 2, 1, 1, 0, 'Torch of Austen'),
(15741, 13006, 0, 2, 1, 1, 0, 'Mass of McGowan'),
(15741, 13007, 0, 2, 1, 1, 0, 'Mageflame Cloak'),
(15741, 13008, 0, 2, 1, 1, 0, 'Dalewind Trousers'),
(15741, 13009, 0, 2, 1, 1, 0, 'Cow King\'s Hide'),
(15741, 13013, 0, 2, 1, 1, 0, 'Elder Wizard\'s Mantle'),
(15741, 13015, 0, 2, 1, 1, 0, 'Serathil'),

(15741, 13030, 0, 3, 1, 1, 0, 'Basilisk Bone'),
(15741, 13036, 0, 3, 1, 1, 0, 'Assassination Blade'),
(15741, 13040, 0, 3, 1, 1, 0, 'Heartseeking Crossbow'),
(15741, 13047, 0, 3, 1, 1, 0, 'Twig of the World Tree'),
(15741, 13053, 0, 3, 1, 1, 0, 'Doombringer'),
(15741, 13060, 0, 3, 1, 1, 0, 'The Needler'),
(15741, 13066, 0, 3, 1, 1, 0, 'Wyrmslayer Spaulders'),
(15741, 13067, 0, 3, 1, 1, 0, 'Hydralick Armor'),
(15741, 13070, 0, 3, 1, 1, 0, 'Sapphiron\'s Scale Boots'),
(15741, 13072, 0, 3, 1, 1, 0, 'Stonegrip Gauntlets'),

(15741, 13073, 0, 4, 1, 1, 0, 'Mugthol\'s Helm'),
(15741, 13075, 0, 4, 1, 1, 0, 'Direwing Legguards'),
(15741, 13077, 0, 4, 1, 1, 0, 'Girdle of Uther'),
(15741, 13083, 0, 4, 1, 1, 0, 'Garrett Family Crest'),
(15741, 13085, 0, 4, 1, 1, 0, 'Horizon Choker'),
(15741, 13091, 0, 4, 1, 1, 0, 'Medallion of Grand Marshal Morris'),
(15741, 13096, 0, 4, 1, 1, 0, 'Band of the Hierophant'),
(15741, 13107, 0, 4, 1, 1, 0, 'Magiskull Cuffs'),
(15741, 13111, 0, 4, 1, 1, 0, 'Sandals of the Insurgent'),
(15741, 13116, 0, 4, 1, 1, 0, 'Spaulders of the Unseen'),

(15741, 13118, 0, 5, 1, 1, 0, 'Serpentine Sash'),
(15741, 13120, 0, 5, 1, 1, 0, 'Deepfury Bracers'),
(15741, 13123, 0, 5, 1, 1, 0, 'Dreamwalker Armor'),
(15741, 13125, 0, 5, 1, 1, 0, 'Elven Chain Boots'),
(15741, 13126, 0, 5, 1, 1, 0, 'Battlecaller Gauntlets'),
(15741, 13130, 0, 5, 1, 1, 0, 'Windrunner Legguards'),
(15741, 13133, 0, 5, 1, 1, 0, 'Drakesfire Epaulets'),
(15741, 13135, 0, 5, 1, 1, 0, 'Lordly Armguards'),
(15741, 13144, 0, 5, 1, 1, 0, 'Serenity Belt'),
(15741, 13146, 0, 5, 1, 1, 0, 'Shell Launcher Shotgun'),

(15741, 647, 0, 6, 1, 1, 0, 'Destiny'),
(15741, 811, 0, 6, 1, 1, 0, 'Axe of the Deep Woods'),
(15741, 1168, 0, 6, 1, 1, 0, 'Skullflame Shield'),
(15741, 1263, 0, 6, 1, 1, 0, 'Brain Hacker'),
(15741, 1728, 0, 6, 1, 1, 0, 'Teebu\'s Blazing Longsword'),
(15741, 2099, 0, 6, 1, 1, 0, 'Dwarven Hand Cannon'),
(15741, 2244, 0, 6, 1, 1, 0, 'Krol Blade'),
(15741, 2801, 0, 6, 1, 1, 0, 'Blade of Hanna'),
(15741, 14555, 0, 6, 1, 1, 0, 'Alcor\'s Sunrazor'),

(15741, 833, 0, 7, 1, 1, 0, 'Lifestone'),
(15741, 944, 0, 7, 1, 1, 0, 'Elemental Mage Staff'),
(15741, 1443, 0, 7, 1, 1, 0, 'Jeweled Amulet of Cainwyn'),
(15741, 2243, 0, 7, 1, 1, 0, 'Hand of Edward the Odd'),
(15741, 2245, 0, 7, 1, 1, 0, 'Helm of Narv'),
(15741, 2246, 0, 7, 1, 1, 0, 'Myrmidon\'s Signet'),
(15741, 3475, 0, 7, 1, 1, 0, 'Cloak of Flames'),
(15741, 14553, 0, 7, 1, 1, 0, 'Sash of Mercy'),
(15741, 14554, 0, 7, 1, 1, 0, 'Cloudkeeper Legplates'),
(15741, 14558, 0, 7, 1, 1, 0, 'Lady Maye\'s Pendant'),

(15742, 1203, 0, 1, 1, 1, 0, 'Aegis of Stormwind'),
(15742, 1973, 0, 1, 1, 1, 0, 'Orb of Deception'),
(15742, 2564, 0, 1, 1, 1, 0, 'Elven Spirit Claws'),
(15742, 4696, 0, 1, 1, 1, 0, 'Lapidis Tankard of Tidesippe'),
(15742, 5266, 0, 1, 1, 1, 0, 'Eye of Adaegus'),
(15742, 6622, 0, 1, 1, 1, 0, 'Sword of Zeal'),
(15742, 7734, 0, 1, 1, 1, 0, 'Six Demon Bag'),
(15742, 9402, 0, 1, 1, 1, 0, 'Earthborn Kilt'),
(15742, 11302, 0, 1, 1, 1, 0, 'Uther\'s Strength'),
(15742, 13000, 0, 1, 1, 1, 0, 'Staff of Hale Magefire'),

(15742, 13001, 0, 2, 1, 1, 0, 'Maiden\'s Circle'),
(15742, 13002, 0, 2, 1, 1, 0, 'Lady Alizabeth\'s Pendant'),
(15742, 13003, 0, 2, 1, 1, 0, 'Lord Alexander\'s Battle Axe'),
(15742, 13004, 0, 2, 1, 1, 0, 'Torch of Austen'),
(15742, 13006, 0, 2, 1, 1, 0, 'Mass of McGowan'),
(15742, 13007, 0, 2, 1, 1, 0, 'Mageflame Cloak'),
(15742, 13008, 0, 2, 1, 1, 0, 'Dalewind Trousers'),
(15742, 13009, 0, 2, 1, 1, 0, 'Cow King\'s Hide'),
(15742, 13013, 0, 2, 1, 1, 0, 'Elder Wizard\'s Mantle'),
(15742, 13015, 0, 2, 1, 1, 0, 'Serathil'),

(15742, 13030, 0, 3, 1, 1, 0, 'Basilisk Bone'),
(15742, 13036, 0, 3, 1, 1, 0, 'Assassination Blade'),
(15742, 13040, 0, 3, 1, 1, 0, 'Heartseeking Crossbow'),
(15742, 13047, 0, 3, 1, 1, 0, 'Twig of the World Tree'),
(15742, 13053, 0, 3, 1, 1, 0, 'Doombringer'),
(15742, 13060, 0, 3, 1, 1, 0, 'The Needler'),
(15742, 13066, 0, 3, 1, 1, 0, 'Wyrmslayer Spaulders'),
(15742, 13067, 0, 3, 1, 1, 0, 'Hydralick Armor'),
(15742, 13070, 0, 3, 1, 1, 0, 'Sapphiron\'s Scale Boots'),
(15742, 13072, 0, 3, 1, 1, 0, 'Stonegrip Gauntlets'),

(15742, 13073, 0, 4, 1, 1, 0, 'Mugthol\'s Helm'),
(15742, 13075, 0, 4, 1, 1, 0, 'Direwing Legguards'),
(15742, 13077, 0, 4, 1, 1, 0, 'Girdle of Uther'),
(15742, 13083, 0, 4, 1, 1, 0, 'Garrett Family Crest'),
(15742, 13085, 0, 4, 1, 1, 0, 'Horizon Choker'),
(15742, 13091, 0, 4, 1, 1, 0, 'Medallion of Grand Marshal Morris'),
(15742, 13096, 0, 4, 1, 1, 0, 'Band of the Hierophant'),
(15742, 13107, 0, 4, 1, 1, 0, 'Magiskull Cuffs'),
(15742, 13111, 0, 4, 1, 1, 0, 'Sandals of the Insurgent'),
(15742, 13116, 0, 4, 1, 1, 0, 'Spaulders of the Unseen'),

(15742, 13118, 0, 5, 1, 1, 0, 'Serpentine Sash'),
(15742, 13120, 0, 5, 1, 1, 0, 'Deepfury Bracers'),
(15742, 13123, 0, 5, 1, 1, 0, 'Dreamwalker Armor'),
(15742, 13125, 0, 5, 1, 1, 0, 'Elven Chain Boots'),
(15742, 13126, 0, 5, 1, 1, 0, 'Battlecaller Gauntlets'),
(15742, 13130, 0, 5, 1, 1, 0, 'Windrunner Legguards'),
(15742, 13133, 0, 5, 1, 1, 0, 'Drakesfire Epaulets'),
(15742, 13135, 0, 5, 1, 1, 0, 'Lordly Armguards'),
(15742, 13144, 0, 5, 1, 1, 0, 'Serenity Belt'),
(15742, 13146, 0, 5, 1, 1, 0, 'Shell Launcher Shotgun'),

(15742, 647, 0, 6, 1, 1, 0, 'Destiny'),
(15742, 811, 0, 6, 1, 1, 0, 'Axe of the Deep Woods'),
(15742, 1168, 0, 6, 1, 1, 0, 'Skullflame Shield'),
(15742, 1263, 0, 6, 1, 1, 0, 'Brain Hacker'),
(15742, 1728, 0, 6, 1, 1, 0, 'Teebu\'s Blazing Longsword'),
(15742, 2099, 0, 6, 1, 1, 0, 'Dwarven Hand Cannon'),
(15742, 2244, 0, 6, 1, 1, 0, 'Krol Blade'),
(15742, 2801, 0, 6, 1, 1, 0, 'Blade of Hanna'),
(15742, 14555, 0, 6, 1, 1, 0, 'Alcor\'s Sunrazor'),

(15742, 833, 0, 7, 1, 1, 0, 'Lifestone'),
(15742, 944, 0, 7, 1, 1, 0, 'Elemental Mage Staff'),
(15742, 1443, 0, 7, 1, 1, 0, 'Jeweled Amulet of Cainwyn'),
(15742, 2243, 0, 7, 1, 1, 0, 'Hand of Edward the Odd'),
(15742, 2245, 0, 7, 1, 1, 0, 'Helm of Narv'),
(15742, 2246, 0, 7, 1, 1, 0, 'Myrmidon\'s Signet'),
(15742, 3475, 0, 7, 1, 1, 0, 'Cloak of Flames'),
(15742, 14553, 0, 7, 1, 1, 0, 'Sash of Mercy'),
(15742, 14554, 0, 7, 1, 1, 0, 'Cloudkeeper Legplates'),
(15742, 14558, 0, 7, 1, 1, 0, 'Lady Maye\'s Pendant');

-- 35016	Dire Maul: Class Quest Books
-- https://web.archive.org/web/20051210220156/http://wow.allakhazam.com/db/mob.html?wmob=14349
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 22 WHERE `entry` = 14349 AND `item` = 18354;
DELETE FROM `creature_loot_template` WHERE `entry` = 14349 AND `item` IN (35016,18332,18333,12662,14256,5759,7909,7910,49003,60196,60008,60272,60332,50499);
DELETE FROM `reference_loot_template` WHERE `entry` = 35016 AND `item` IN (18332,18333);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(14349, 12662, 11, 0, 1, 1, 0, 'Demonic Rune'),
(14349, 14256, 8, 0, 1, 1, 0, 'Felcloth'),
(14349, 5759, 0.5, 0, 1, 1, 0, 'Thorium Lockbox'),
(14349, 7909, 0.3, 1, 1, 1, 0, 'Aquamarine'),
(14349, 7910, 0.4, 1, 1, 1, 0, 'Star Ruby'),
(14349, 18332, 1.5, 2, 1, 1, 0, 'Libram of Rapidity'),
(14349, 18333, 0.5, 2, 1, 1, 0, 'Libram of Focus'),
(14349, 49003, 0.1, 0, -49003, 1, 0, 'Darkmoon Cards (Beasts, Elementals, Portals, Warlords 5-8) - (Elite NPC Levels: ~50+) - VANILLA NPC ONLY'),
(14349, 60196, 2, 0, -60196, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 55-59) - (NPC Levels: 56)'),
(14349, 60008, 6, 0, -60008, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 51-60) - (NPC Levels: 51-63) - VANILLA NPC ONLY'),
(14349, 60272, 0.1, 0, -60272, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 54-59) - (NPC Levels: 56)'),
(14349, 60332, 0.01, 0, -60332, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 54-59) - (NPC Levels: 56)'),
(14349, 50499, 0.1, 0, -50499, 1, 0, 'NPC LOOT (World Drop) - (Level: 48/50/60 - Book / Codex / Tome / Grimoire) - NPC Levels 52+ (WORLD CLASS LOOT DROP)');

-- SELECT DISTINCT entry FROM reference_loot_template where groupid IN (0) order by entry;
-- 1	Alterac Valley - Player Skinning loot
-- 5759	NPC LOOT (Darkmaster Gandling) - Random Item
UPDATE `reference_loot_template` SET `groupid` = 1 WHERE `entry` = 5759; -- 167 items, total chance of 78.9% with a 10% to be rolled in ctl

-- 10500	NPC LOOT (Scourge Invasion) - Ghoul Berserker / Spectral Soldier / Skeletal Shocktrooper / Flameshocker - Quest Start Item
UPDATE `reference_loot_template` SET `groupid` = 1 WHERE `entry` = 10500; -- 6 items

-- 11103	Fishing Loot - Ruins of Mathystra (443) / Cliffspring Falls (445) / Grove of the Ancients (448) / Wildbend River (454) / Cliffspring River (456) / Twilight Vale (2077)
UPDATE `fishing_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` < 0; -- always rolled.

-- 12009	Purple Lotus
UPDATE `reference_loot_template` SET `groupid` = 1 WHERE `entry` = 12009;

-- 12010	Sungrass
UPDATE `reference_loot_template` SET `groupid` = 1 WHERE `entry` = 12010;

-- 12011	Blindweed
UPDATE `reference_loot_template` SET `groupid` = 1 WHERE `entry` = 12011;

-- 12012	Golden Sansam
UPDATE `reference_loot_template` SET `groupid` = 1 WHERE `entry` = 12012;

-- 12013	Dreamfoil
UPDATE `reference_loot_template` SET `groupid` = 1 WHERE `entry` = 12013;

-- 12014	Mountain Silversage
UPDATE `reference_loot_template` SET `groupid` = 1 WHERE `entry` = 12014;

-- 12015	Felweed
UPDATE `reference_loot_template` SET `groupid` = 1 WHERE `entry` = 12015;

-- 12016	Dreaming Glory
UPDATE `reference_loot_template` SET `groupid` = 1 WHERE `entry` = 12016;

-- 12017	Ragveil
UPDATE `reference_loot_template` SET `groupid` = 1 WHERE `entry` = 12016;

-- 24015	Pledge-Gift of Adoration loots

-- 65281	NPC LOOT (Rare NPC Loot) - Mosh'Ogg Butcher - Special Items
UPDATE `reference_loot_template` SET `groupid` = 1 WHERE `entry` = 65281;

-- does not pop error in classicmangos as chance for unique items is 0 and 0 and refloots add the remaining chance for that group
-- Table 'creature_loot_template' entry 3586 group 1 has total chance > 100% (101.699997)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 3586 AND `mincountOrRef` IN (-50600,-50610);

-- Table 'creature_loot_template' entry 10508 group 1 has total chance > 100% (200.150009)
-- Table 'creature_loot_template' entry 10508 group 1 has total chance > 100% (200.100006)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `entry` = 10508 AND `mincountOrRef` IN (-30011,-35029,-35030,-49003);

-- SELECT DISTINCT entry FROM reference_loot_template where groupid IN (1) order by entry; -- 900 so the remaining refloots
-- Remaining World Loot Cleanup - SELECT DISTINCT mincountorref FROM creature_loot_template WHERE `mincountorref` < 0 AND groupid != 0 order by -mincountorref;
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -30009; -- Sunken Temple (Temple of Atal'Hakkar) - Zone Drop
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -30011; -- Scholomance - Zone Drop
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -30012; -- Stratholme - Zone Drop
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -34012; -- Molten Core Epic Items (T1 Bracers & Belt)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -35008; -- 35008	Stratholme - Sothos and Jarien's Heirlooms (both have grpid 1 so no differences are made for now.
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -35010; -- Sunken Temple (Boss Loot) - Atal'ai Defenders - Atal'ai Items
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -35011; -- Sunken Temple (Boss Loot) - Weaver / Hazzas / Dreamscythe / Morphaz - Items
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -35012; -- Sunken Temple (Boss Loot) - Spawn of Hakkar
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -35015; -- Dire Maul (The Maul) - Skarr the Unbreakable / The Razza / Mushgog - Items
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -35024; -- Upper Blackrock Spire (Boss Loot) - Lord Valthalak - Items
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -35031; -- Scholomance (Boss Loot) - Shared Boss Loot - Items
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -49003; -- Darkmoon Cards (Beasts, Elementals, Portals, Warlords 5-8) - (Elite NPC Levels: ~50+) - VANILLA NPC ONLY
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -49004; -- Darkmoon Cards (Beasts, Elementals, Portals, Warlords 2-4) - (Normal NPC Levels: ~50+) - VANILLA NPC ONLY
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -50600; -- NPC LOOT (White World Drop) - (Scrolls I) - (NPC Levels 10-25)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -50610; -- NPC LOOT (Lesser Healing Potion / Minor Mana Potion)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -50611; -- NPC LOOT (Healing Potion / Lesser Mana Potion)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -50612; -- NPC LOOT (Greater Healing Potion / Mana Potion)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -50613; -- NPC LOOT (Superior Healing Potion / Greater Mana Potion)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -50614; -- NPC LOOT (Major Healing Potion / Superior Mana Potion)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -50615; -- NPC LOOT (Major Healing Potion / Major Mana Potion)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -60008; -- NPC LOOT (Grey World Drop) - (Item Levels: 51-60) - (NPC Levels: 51-63) - VANILLA NPC ONLY
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -60122; -- NPC LOOT (Green World Drop) - (Item Levels: 18-22) - (NPC Levels: 19)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -60123; -- NPC LOOT (Green World Drop) - (Item Levels: 18-23) - (NPC Levels: 19-20)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -60124; -- NPC LOOT (Green World Drop) - (Item Levels: 19-23) - (NPC Levels: 20)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -60125; -- NPC LOOT (Green World Drop) - (Item Levels: 19-24) - (NPC Levels: 20-21)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -60126; -- NPC LOOT (Green World Drop) - (Item Levels: 20-24) - (NPC Levels: 21)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -60127; -- NPC LOOT (Green World Drop) - (Item Levels: 20-25) - (NPC Levels: 21-22)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -60129; -- NPC LOOT (Green World Drop) - (Item Levels: 21-26) - (NPC Levels: 22-23)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -60130; -- NPC LOOT (Green World Drop) - (Item Levels: 22-26) - (NPC Levels: 23)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -60131; -- NPC LOOT (Green World Drop) - (Item Levels: 22-27) - (NPC Levels: 23-24)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -60132; -- NPC LOOT (Green World Drop) - (Item Levels: 23-27) - (NPC Levels: 24)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -60133; -- NPC LOOT (Green World Drop) - (Item Levels: 23-28) - (NPC Levels: 24-25)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -60134; -- NPC LOOT (Green World Drop) - (Item Levels: 24-28) - (NPC Levels: 25)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -60135; -- NPC LOOT (Green World Drop) - (Item Levels: 24-29) - (NPC Levels: 25-26)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -60136; -- NPC LOOT (Green World Drop) - (Item Levels: 25-29) - (NPC Levels: 26)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -60137; -- NPC LOOT (Green World Drop) - (Item Levels: 25-30) - (NPC Levels: 26-27)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -60138; -- NPC LOOT (Green World Drop) - (Item Levels: 26-30) - (NPC Levels: 27)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -60139; -- NPC LOOT (Green World Drop) - (Item Levels: 26-31) - (NPC Levels: 27-28)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -60140; -- NPC LOOT (Green World Drop) - (Item Levels: 27-31) - (NPC Levels: 28)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -60141; -- NPC LOOT (Green World Drop) - (Item Levels: 27-32) - (NPC Levels: 28-29)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -60146; -- NPC LOOT (Green World Drop) - (Item Levels: 30-34) - (NPC Levels: 31)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -60148; -- NPC LOOT (Green World Drop) - (Item Levels: 31-35) - (NPC Levels: 32)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -60172; -- NPC LOOT (Green World Drop) - (Item Levels: 43-47) - (NPC Levels: 44)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -60179; -- NPC LOOT (Green World Drop) - (Item Levels: 47-51) - (NPC Levels: 47-48)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -60195; -- NPC LOOT (Green World Drop) - (Item Levels: 54-59) - (NPC Levels: 55-56)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -60198; -- NPC LOOT (Green World Drop) - (Item Levels: 56-60) - (NPC Levels: 57)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -60290; -- NPC LOOT (Green World Drop) - (Item Levels: 57-61) - (NPC Levels: 58) - VANILLA NPC ONLY
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -60292; -- NPC LOOT (Green World Drop) - (Item Levels: 58-62) - (NPC Levels: 59) - VANILLA NPC ONLY
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -60294; -- NPC LOOT (Green World Drop) - (Item Levels: 59-63) - (NPC Levels: 60) - VANILLA NPC ONLY
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -60297; -- NPC LOOT (Green World Drop) - (Item Levels: 60-65) - (NPC Levels: 61-62) - VANILLA NPC ONLY
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -60315; -- NPC LOOT (Purple World Drop) - (Item Levels: 44-51) - (NPC Levels: 47-48)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -60330; -- NPC LOOT (Purple World Drop) - (Item Levels: 53-59) - (NPC Levels: 55)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -60331; -- NPC LOOT (Purple World Drop) - (Item Levels: 52-59) - (NPC Levels: 55-56)
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -60336; -- NPC LOOT (Purple World Drop) - (Item Levels: 56-61) - (NPC Levels: 58) - VANILLA NPC ONLY
UPDATE `creature_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -60446; -- 16 Slot Bag - (NPC Levels: 48+)

-- SELECT * FROM gameobject_loot_template WHERE `mincountorref` < 0 AND groupid != 0;
UPDATE `gameobject_loot_template` SET `groupid` = 0 WHERE `entry` = 181366 AND `mincountOrRef` IN (-12002); -- Naxxramas (Boss Loot) - Four Horsemen Chest (181366) - Tokens (T3 Tokens)
UPDATE `gameobject_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -60003; -- NPC LOOT (Grey World Drop) - (Item Levels: 16-20) - (NPC Levels: 16-20)
UPDATE `gameobject_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -60008; -- NPC LOOT (Grey World Drop) - (Item Levels: 51-60) - (NPC Levels: 51-63) - VANILLA NPC ONLY
UPDATE `gameobject_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -60116; -- NPC LOOT (Green World Drop) - (Item Levels: 15-19) - (NPC Levels: 16)
UPDATE `gameobject_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -60117; -- NPC LOOT (Green World Drop) - (Item Levels: 15-20) - (NPC Levels: 16-17)
UPDATE `gameobject_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -60198; -- NPC LOOT (Green World Drop) - (Item Levels: 56-60) - (NPC Levels: 57)
UPDATE `gameobject_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -60274; -- NPC LOOT (Blue World Drop) - (Item Levels: 55-65) - (NPC Levels: 57)
UPDATE `gameobject_loot_template` SET `groupid` = 0 WHERE `mincountOrRef` = -60334; -- NPC LOOT (Purple World Drop) - (Item Levels: 55-60) - (NPC Levels: 57)

-- SELECT * FROM gameobject_loot_template WHERE `mincountorref` < 0 AND groupid != 0;
-- https://www.wowhead.com/classic/item=15902/a-crazy-grab-bag
-- -60199	NPC LOOT (Green World Drop) - (Item Levels: 56-61) - (NPC Levels: 57-58) - VANILLA NPC ONLY
UPDATE `item_loot_template` SET `groupid` = 0 WHERE `entry` = 15902;

-- Rare mobs that now utilize refloot unique item + another refloot:
-- 723	NPC LOOT (Rare NPC Loot) - Mosh'Ogg Butcher - Special Items
-- 2603	NPC LOOT (Rare NPC Loot) - Kovork - Special Items
-- 2779	NPC LOOT (Rare NPC Loot) - Prince Nazjak - Special Items
-- 5863	NPC LOOT (Rare NPC Loot) - Geopriest Gukk'rok - Special Items
-- 6650	NPC LOOT (Rare NPC Loot) - General Fangferror - Special Items
-- 8924	NPC LOOT (Rare NPC Loot) - The Behemoth - Special Items
UPDATE `reference_loot_template` SET `maxcount` = 1 WHERE `entry` IN (65069,65078,65125,65135,65174,65281) AND `mincountOrRef` IN (-60156,-60166,-60122,-60185,-60184,-60172);

