-- Based on https://github.com/lh-server/core/commit/85b70e2b11a19c332457b21d615b6e5bf0470bbc
-- Improve Npcs using Ghost Visual Spells.

-- .add 18202
-- .add 18203
-- .add 18204
-- .add 18205
-- UPDATE `spell_template` SET `ProcChance` = 100 WHERE `Id` = 22648;

-- https://www.wowhead.com/tbc/spell=22648/call-of-eskhandar
UPDATE `spell_proc_event` SET `Cooldown` = 120 WHERE `entry` = 22648; -- Player::AddCooldown> Spell(22649) try to add and already existing cooldown 0? - CategoryRecoveryTime: 60000 ms

-- Eskhandar 14306
UPDATE `creature_template` SET `SpellList` = 1430601 WHERE `entry` = 14306;
REPLACE INTO `creature_template_addon` (`entry`, `auras`) VALUES (14306, '22650');

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 1430601;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1430601, 'Eskhandar (14306) - s.22649 (Summon Eskhandar)', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 1430601;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
('1430601', '0', '6595', '0', '-1', '1', '0', '50', '1','0','0','10000','20000', 'Eskhandar - Exploit Weakness on Current'),
('1430601', '1', '3252', '0', '-1', '1', '0', '100', '1','0','6000','12000','18000', 'Eskhandar - Shred on Current');

-- 13116 Alliance Spirit Guide - npc_spirit_guide s.22011
-- 13117 Horde Spirit Guide - npc_spirit_guide s.22011
REPLACE INTO `creature_template_addon` (`entry`, `auras`) VALUES (13116, '9036 9617');
REPLACE INTO `creature_template_addon` (`entry`, `auras`) VALUES (13117, '9036 9617');

