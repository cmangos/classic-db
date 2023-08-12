
-- 300,1251,1487,212,889,891,892
-- https://www.youtube.com/watch?v=sGc9jbAPW50&ab_channel=Andy%27sHighlights
-- https://www.youtube.com/watch?v=0Y_ZfPJNm_U&ab_channel=CasualGamerGirl
-- https://www.youtube.com/watch?v=vzVAcw50pUU&ab_channel=ShuredGaming
-- https://www.youtube.com/watch?v=hdEuLt5DHj0&ab_channel=BRNChannel

-- Zzarc' Vul 300
-- https://www.wowhead.com/wotlk/npc=300/zzarc-vul#abilities
UPDATE `creature_template` SET `SpellList` = 30001, `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 300;

-- 300	0	8716	0	0	0	0	0	0	0	0	0
DELETE FROM `creature_template_spells` WHERE `entry` = 300;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 30001;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(30001, 'Duskwood - Zzarc\' Vul (300)', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 30001;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(30001, 1, 8716, 0, -1, 1, 0, 100, 1, 4000, 16000, 11000, 25000, 'Zzarc\' Vul - Low Swipe');

-- ===============================================================

-- https://www.wowhead.com/wotlk/npc=1251/splinter-fist-firemonger
-- CCSDB never shows Fire Immune Aura so it just has to be triggered on firespellcasthit
UPDATE `creature_template` SET `SpellList` = 125101, `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 1251;

-- 1251	0	184	4979	0	0	0	0	0	0	0	0
DELETE FROM `creature_template_spells` WHERE `entry` = 1251;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 125101;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(125101, 'Duskwood - Splinter Fist Firemonger (1251)', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 125101;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(125101, 1, 184, 0, -1, 2, 0, 100, 1, 0, 10000, 60000, 70000, 'Splinter Fist Firemonger - Fire Shield II');

-- ===============================================================

-- https://www.wowhead.com/wotlk/npc=1487/splinter-fist-enslaver#abilities
UPDATE `creature_template` SET `SpellList` = 148701, `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 1487;

-- 1487	0	6533	10277	0	0	0	0	0	0	0	0
DELETE FROM `creature_template_spells` WHERE `entry` = 1487;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 148701;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(148701, 'Duskwood - Splinter Fist Enslaver (1487)', 0, 75);

DELETE FROM `creature_spell_list` WHERE `Id` = 148701;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(148701, 1, 6533, 0, -1, 1, 0, 100, 1, 3000, 20000, 20000, 40000, 'Splinter Fist Enslaver - Net'), -- Distance cant be scripted atm. -> Distancing is done automatically on root auras.
(148701, 2, 10277, 2, -1, 1, 0, 100, 1, 0, 1000, 2000, 4000, 'Splinter Fist Enslaver - Throw');

-- ===============================================================

-- https://www.wowhead.com/tbc/npc=212/splinter-fist-warrior
UPDATE `creature_template` SET `SpellList` = 21201, `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 212;

-- 212	0	5242	0	0	0	0	0	0	0	0	0
DELETE FROM `creature_template_spells` WHERE `entry` = 212;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 21201;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(21201, 'Duskwood - Splinter Fist Warrior (212)', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 21201;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(21201, 1, 5242, 0, -1, 2, 0, 100, 1, 0, 10000, 120000, 130000, 'Splinter Fist Warrior - Battle Shout'); -- does not work currently! die to TARGET_ENUM_UNITS_PARTY_WITHIN_CASTER_RANGE

-- ===============================================================

-- https://www.wowhead.com/tbc/npc=889/splinter-fist-ogre#comments
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 889;

-- ===============================================================

-- https://www.wowhead.com/tbc/npc=891/splinter-fist-fire-weaver

UPDATE `creature_template` SET `SpellList` = 89101, `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 891;

-- 891	0	19816	20296	0	0	0	0	0	0	0	0
DELETE FROM `creature_template_spells` WHERE `entry` = 891;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 89101;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(89101, 'Duskwood - Splinter Fist Fire Weaver (891)', 0, 75);

DELETE FROM `creature_spell_list` WHERE `Id` = 89101;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(89101, 1, 19816, 2, -1, 1, 0, 100, 1, 0, 1000, 0, 0, 'Splinter Fist Fire Weaver - Fireball'),
(89101, 2, 20296, 0, -1, 1, 0, 100, 1, 5000, 20000, 18000, 20000, 'Splinter Fist Fire Weaver - Flamestrike');

-- ===============================================================

-- https://www.wowhead.com/tbc/npc=892/splinter-fist-taskmaster

UPDATE `creature_template` SET `SpellList` = 89201, `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 892;

-- 892	0	3631	0	0	0	0	0	0	0	0	0
DELETE FROM `creature_template_spells` WHERE `entry` = 892;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 89201;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(89201, 'Duskwood - Splinter Fist Taskmaster (892)', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 89201;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(89201, 1, 3631, 0, -1, 0, 0, 100, 1, 0, 10000, 240000, 240000, 'Splinter Fist Taskmaster - Battle Fury');

-- ===============================================================

-- Dynguid
-- 1 missing patrol Splinter Fist Ogre Patrol at Entrance to the Ogre Mount (5033)
-- 5064 mixed patrol (warrior/firemonger)
-- 5069 mixed patrol (warrior/firemonger)
UPDATE `creature` SET `spawntimesecsmin` = 240, `spawntimesecsmax` = 300 WHERE `id` IN (300,1251,1487,212,889,891,892);

REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 889 FROM `creature` WHERE `guid` IN (5053,5055,5057,5059,5060); -- Splinter Fist Ogre
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 891 FROM `creature` WHERE `guid` IN (5053,5055,5057,5059,5060); -- Splinter Fist Fire Weaver

REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 891 FROM `creature` WHERE `guid` IN (5028,5046,5048,5058,5061); -- Splinter Fist Fire Weaver
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 892 FROM `creature` WHERE `guid` IN (5028,5046,5048,5058,5061); -- Splinter Fist Taskmaster

REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 892 FROM `creature` WHERE `guid` IN (5047,5077,5078,5082); -- Splinter Fist Taskmaster
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 1251 FROM `creature` WHERE `guid` IN (5047,5077,5078,5082); -- Splinter Fist Firemonger

REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 212 FROM `creature` WHERE `guid` IN (5064,5065,5068,5069,5072,5073); -- Splinter Fist Warrior
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 1251 FROM `creature` WHERE `guid` IN (5064,5065,5068,5069,5072,5073); -- Splinter Fist Firemonger

REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 212 FROM `creature` WHERE `guid` IN (5067,5070,5071); -- Splinter Fist Warrior
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 1487 FROM `creature` WHERE `guid` IN (5067,5070,5071); -- Splinter Fist Enslaver

UPDATE `creature` SET `id` = 0 WHERE `guid` IN (5053,5055,5057,5059,5060,5028,5046,5048,5058,5061,5047,5077,5078,5082,5064,5065,5068,5069,5072,5073,5067,5070,5071);

UPDATE `creature` SET `spawndist` = 3, `MovementType` = 1 WHERE `guid` = 5065;
UPDATE `creature` SET `spawndist` = 3, `MovementType` = 1 WHERE `guid` = 5074;
UPDATE `creature` SET `spawndist` = 5, `MovementType` = 1 WHERE `guid` = 5079;
UPDATE `creature` SET `spawndist` = 5, `MovementType` = 1 WHERE `guid` = 5080;

DELETE FROM `creature` WHERE `id` = 212 AND `guid` = 5324;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(5324, 212, 0, 1, -11101.70, -86.99, 17.5261, 0, 240, 300, 3, 1);

