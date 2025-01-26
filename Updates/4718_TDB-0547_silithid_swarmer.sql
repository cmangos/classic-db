-- Silithid Swarmer spell_list
DELETE FROM `creature_template_spells` WHERE `entry` = 3252;

DELETE FROM `creature_spell_list_entry` WHERE `Id`= 325201;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(325201, 'The Barrens - Silithid Swarmer', 0, 0);

-- Timers from Sniff data during classic tests
-- ServerToClient: SMSG_SPELL_START
-- 09:08:36.316 
-- 09:08:37.928
-- 09:08:44.396
-- 09:08:46.008
-- 09:08:47.610
-- 09:08:52.483
-- 09:08:54.002
-- 09:08:54.102 -- double cast
-- 09:08:54.102
-- 09:08:58.946
-- 09:09:00.570
-- 09:09:02.177
-- 09:09:03.393
DELETE FROM `creature_spell_list` WHERE `Id` IN (325201);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(325201, 1, 6589, 0, -1, 2, 0, 100, 0, 0, 8000, 0, 8000, 'Silithid Swarmer - Silithid Swarm - self');

UPDATE `creature_template` SET `SpellList` = 325201 WHERE `entry` = 3252;