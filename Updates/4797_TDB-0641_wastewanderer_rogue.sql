-- Wastewander Rogue spell_list
DELETE FROM `creature_template_spells` WHERE `entry` = 5615;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 561501;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(561501, 'Tanaris - Wastewander Rogue', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 561501;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(561501, 1, 8721, 0, -1, 1, 0, 100, 0, 0, 6000, 5000, 12000, 'Wastewander Rogue - Backstab - current');

UPDATE `creature_template` SET `SpellList` = 561501 WHERE `entry` = 5615;
