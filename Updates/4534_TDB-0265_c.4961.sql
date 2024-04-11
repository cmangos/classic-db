-- https://github.com/cmangos/mangos-tbc/pull/636
-- Add CSL for Dashel Stonefist (4961)
UPDATE `creature_template` SET `SpellList` = 496101 WHERE `entry` = 4961;
DELETE FROM `creature_spell_list_entry` WHERE `Id` = 496101;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(496101, 'Stormwind City - Dashel Stonefist (4961)', 0, 0);
DELETE FROM `creature_spell_list` WHERE `Id` = 496101;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(496101, 0, 12555, 0, -1, 1, 0, 100, 1, 10000, 20000, 20000, 40000, 'Dashel Stonefist - Pummel');

