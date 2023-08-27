-- Dragonmaw Bonewarder 1057 - https://www.wowhead.com/wotlk/npc=1057/dragonmaw-bonewarder#abilities
-- https://github.com/cmangos/wotlk-db/issues/718
UPDATE `creature_template` SET `SpellList` = 105701 WHERE `entry` = 1057;

-- 1057	0	707	13787	8853	6205	0	0	0	0	0	0
DELETE FROM `creature_template_spells` WHERE `entry` = 1057; -- s.13787 seemingly unused.

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 105701;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(105701, 'Wetlands - Dragonmaw Bonewarder (1057)', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 105701;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(105701, 1, 707, 0, -1, 1, 0, 100, 0, 0, 20000, 20000, 40000, 'Dragonmaw Bonewarder - Immolate on Current'),
(105701, 2, 6205, 0, -1, 1, 0, 100, 0, 0, 20000, 120000, 140000, 'Dragonmaw Bonewarder - Curse of Weakness on Current');

