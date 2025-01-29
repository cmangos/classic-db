-- Freezing Ghoul spell_list
DELETE FROM `creature_template_spells` WHERE `entry` = 1796;

DELETE FROM `creature_spell_list_entry` WHERE `Id`= 179601;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(179601, 'Western Plaguelands - Freezing Ghoul', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (179601);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(179601, 1, 16803, 0, -1, 0, 0, 100, 0, 10000, 22000, 17000, 26000, 'Freezing Ghoul - Flash Freeze - none');

UPDATE `creature_template` SET `SpellList` = 179601 WHERE `entry` = 1796;
