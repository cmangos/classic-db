-- https://github.com/cmangos/issues/issues/3413

-- Scarlet Warrior 1535
UPDATE `creature_template` SET `SpellList` = 153501 WHERE `entry` = 1535;
DELETE FROM `creature_template_spells` WHERE `entry` = 1535; -- s.3288
DELETE FROM `creature_spell_list` WHERE `Id` = 153501;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(153501, 0, 3238, 0, -1, 0, 0, 100, 0, 0, 10000, 45000, 45000, 'Tirisfal Glades - Scarlet Warrior - Cast Nimble Reflexes');

-- Greater Duskbat 1553
DELETE FROM `creature_template_spells` WHERE `entry` = 1553; -- s.8281

-- Scarlet Friar 1538
UPDATE `creature_template` SET `SpellList` = 153801 WHERE `entry` = 1538;
UPDATE `creature_template_spells` SET `spell1` = 0 WHERE `entry` = 1538; -- s.1243 as spell 2
DELETE FROM `creature_spell_list_entry` WHERE `Id` = 153801;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES (153801, 'Tirisfal Glades - Scarlet Friar', 0, 0);
DELETE FROM `creature_spell_list` WHERE `Id` = 153801;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(153801, 0, 2052, 0, -1, 201, 0, 100, 1, 4000, 12000, 15000, 30000, 'Tirisfal Glades - Scarlet Friar - Lesser Heal (Rank 2) on Friendly Missing 50% including self');

-- Scarlet Neophyte 1539
UPDATE `creature_template` SET `SpellList` = 153901 WHERE `entry` = 1539;
DELETE FROM `creature_spell_list_entry` WHERE `Id` = 153901;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES (153901, 'Tirisfal Glades - Scarlet Neophyte', 0, 75);
DELETE FROM `creature_spell_list` WHERE `Id` = 153901;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(153901, 0, 13322, 2, -1, 1, 0, 100, 0, 0, 0, 0, 0, 'Tirisfal Glades - Scarlet Neophyte - Frostbolt on Current'); -- not having "cd" here makes the spell in mc mode interrupt himself if spammed

-- Captain Vachon 1664
UPDATE `creature_template_spells` SET `spell1` = 72 WHERE `entry` = 1664 AND `spell1` = 35178;

-- https://www.wowhead.com/classic/spell=8852/moss-hide
REPLACE INTO `creature_template_addon` (`entry`, `sheath_state`, `auras`) VALUES
(1007, 1, '8852'), -- https://www.wowhead.com/classic/npc=1007/mosshide-gnoll#abilities
(1008, 1, '8852'), -- missing on wowhead, but sniffs show it.
(1009, 1, '8852 12544'), -- https://www.wowhead.com/classic/npc=1009/mosshide-mistweaver#abilities;50
(1010, 1, '8852'), -- https://www.wowhead.com/classic/npc=1010/mosshide-fenrunner#abilities
(1011, 1, '8852'), -- https://www.wowhead.com/classic/npc=1011/mosshide-trapper#abilities
(1013, 1, '8852'), -- https://www.wowhead.com/classic/npc=1013/mosshide-mystic#abilities;50
(1014, 1, '8852'); -- https://www.wowhead.com/classic/npc=1014/mosshide-alpha#abilities

-- Mosshide Mystic 1013
UPDATE `creature_template` SET `SpellList` = 101301 WHERE `entry` = 1013;
DELETE FROM `creature_template_spells` WHERE `entry` = 1013; -- s.3288
DELETE FROM `creature_spell_list_entry` WHERE `Id` = 101301;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES (101301, 'Wetlands - Mosshide Mystic', 0, 75);
DELETE FROM `creature_spell_list` WHERE `Id` = 101301;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(101301, 0, 11986, 0, -1, 201, 0, 100, 1, 4000, 12000, 20000, 30000, 'Wetlands - Mosshide Mystic - Healing Wave on Friendly Missing 50% including self'),
(101301, 1, 11436, 0, -1, 1, 0, 100, 0, 14000, 20000, 20000, 40000, 'Wetlands - Mosshide Mystic - Cast Slow on Current'),
(101301, 2, 9532, 2, -1, 1, 0, 100, 0, 0, 0, 0, 0, 'Wetlands - Mosshide Mystic - Lightning Bolt on Current');

