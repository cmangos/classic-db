-- Sunscale Scytheclaw spell_list
DELETE FROM `creature_template_spells` WHERE `entry` = 3256;

DELETE FROM `creature_spell_list_entry` WHERE `Id`= 325601;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(325601, 'The Barrens - Sunscale Scytheclaw', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (325601);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(325601, 1, 3391, 0, -1, 2, 0, 100, 0, 8000, 12000, 15000, 20000, 'Sunscale Scytheclaw - Thrash - self');

UPDATE `creature_template` SET `SpellList` = 325601 WHERE `entry` = 3256;

