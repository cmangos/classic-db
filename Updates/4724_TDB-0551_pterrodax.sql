-- Fledgling Pterrordax spell_list
DELETE FROM `creature_template_spells` WHERE `entry` = 9165;

DELETE FROM `creature_spell_list_entry` WHERE `Id`= 916501;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(916501, 'Un\'Goro Crater - Fledgling Pterrordax', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (916501);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(916501, 1, 5708, 0, -1, 1, 0, 100, 0, 7000, 20000, 12000, 22000, 'Fledgling Pterrordax - Swoop - current');

UPDATE `creature_template` SET `SpellList` = 916501 WHERE `entry` = 9165;


-- Pterrordax spell_list
DELETE FROM `creature_template_spells` WHERE `entry` = 9166;

DELETE FROM `creature_spell_list_entry` WHERE `Id`= 916601;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(916601, 'Un\'Goro Crater - Pterrordax', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (916601);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(916601, 1, 6605, 0, -1, 2, 0, 100, 0, 6000, 15000, 15000, 25000, 'Pterrordax - Terrifying Screech - self');

UPDATE `creature_template` SET `SpellList` = 916601 WHERE `entry` = 9166;


-- Frenzied Pterrordax spell_list
DELETE FROM `creature_template_spells` WHERE `entry` = 9167;

DELETE FROM `creature_spell_list_entry` WHERE `Id`= 916701;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(916701, 'Un\'Goro Crater - Frenzied Pterrordax', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (916701);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(916701, 1, 7399, 0, -1, 7, 0, 100, 0, 6000, 16000, 16000, 26000, 'Frenzied Pterrordax - Terrify - current not alone');

UPDATE `creature_template` SET `SpellList` = 916701 WHERE `entry` = 9167;

