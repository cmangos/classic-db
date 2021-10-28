-- Troll Roof Stalker 23090
-- DrPancake <Premium User> on 2009/05/11 (Patch 3.1.1)
-- They use Hamstring They Shoot Guns They Stick you in Nets These guys are obviously Warogunters
-- They are range like a hunter, 1700-2500 damage every 2-4 seconds on cloth. Also have the ability to net. And quite a bit of hp, unless you have 5-10 good people I would stay away from this area.
-- UPDATE `creature_template` SET `SpellList` = 2309001, `DamageMultiplier` = 2 WHERE `entry` = 23090; -- 1.75, prob even higher.
-- UPDATE `creature_template_addon` SET `sheath_state` = 1, `auras` = '8279 30991' WHERE `entry` = 23090;

-- 23090	0	40124	0	0	0	0	0	0	0	0	0
-- DELETE FROM `creature_template_spells` WHERE `entry` = 23090;

-- DELETE FROM `creature_spell_list_entry` WHERE `Id` = 2309001;
-- INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
-- (2309001, 'Orgrimmar - Troll Roof Stalker (23090)', 0, 75);

-- DELETE FROM `creature_spell_list` WHERE `Id` = 2309001;
-- INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
-- (2309001, 1, 40124, 2, -1, 1, 0, 100, 0, 0, 0, 2000, 4000, 'Troll Roof Stalker - Shoot on Current'),
-- (2309001, 2, 6533, 0, -1, 1, 0, 100, 0, 0, 20000, 15000, 45000, 'Troll Roof Stalker - Net on Current'),
-- (2309001, 3, 9080, 0, -1, 1, 0, 100, 0, 0, 20000, 20000, 40000, 'Troll Roof Stalker - Hamstring on Current');

-- Ashenvale Outrunner 12856
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 12856);
UPDATE `creature_template` SET `SpellList` = 1285601 WHERE `entry` = 12856;
UPDATE `creature_template_addon` SET `sheath_state` = 1 WHERE `entry` = 12856;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 1285601;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1285601, 'Ashenvale - Ashenvale Outrunner (12856)', 0, 75);

DELETE FROM `creature_spell_list` WHERE `Id` = 1285601;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1285601, 1, 6660, 2, -1, 1, 0, 100, 0, 0, 0, 2000, 4000, 'Ashenvale Outrunner - Shoot on Current'),
(1285601, 2, 8646, 0, -1, 1, 0, 100, 0, 20000, 20000, 10000, 20000, 'Ashenvale Outrunner - Snap Kick on Current'),
(1285601, 3, 18545, 0, -1, 1, 0, 100, 0, 0, 15000, 15000, 30000, 'Ashenvale Outrunner - Scorpid Sting on Current');

-- Jadefire Shadowstalker 7110
UPDATE `creature_template` SET `SpellList` = 711001 WHERE `entry` = 7110;

-- 7110	0	14897	13578	11013	0	0	0	0	0	0	0
DELETE FROM `creature_template_spells` WHERE `entry` = 7110;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 711001;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(711001, 'Felwood - Jadefire Shadowstalker (7110)', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 711001;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(711001, 1, 13578, 0, -1, 0, 0, 100, 0, 6000, 24000, 20000, 30000, 'Jadefire Shadowstalker - Jadefire');

-- https://www.youtube.com/watch?v=bRxoweKvOIA&ab_channel=%D0%9F%D0%BE%D0%B7%D0%B0%D0%BB%D0%B8%D0%BF%D0%B0%D1%82%D0%B8%D1%83%D1%82%D0%B2%D0%B5%D1%80%D0%B5%D0%B7%D1%96%D1%81%D1%82%D1%8C
-- https://www.wowhead.com/wotlk/npc=938/kurzen-commando#comments:id=2817799

