-- Vile Familiar
DELETE FROM `creature_template_spells` WHERE `entry` = 3101;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 310101;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(310101, 'Vile Familiar', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 310101;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(310101, 1, 11921, 0, -1, 1, 0, 100, 0, 6000, 15000, 25000, 35000, 'Vile Familiar Fireball - current');


UPDATE `creature_template` SET `SpellList` = 310101 WHERE `entry` = 3101;
