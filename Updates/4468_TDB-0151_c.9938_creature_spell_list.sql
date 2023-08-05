-- Magmus 9938
-- https://www.wowhead.com/classic/npc=9938/magmus

-- https://www.youtube.com/watch?v=lyTGjmhrQws&ab_channel=Chou-chiChang
-- https://www.youtube.com/watch?v=POiofD6U31Q&ab_channel=MosaicCreativeMedia
-- https://www.youtube.com/watch?v=ZQbNzD5jVHc&ab_channel=DurendilLeHunt
UPDATE `creature_template` SET `SpellList` = 993801 WHERE `entry` = 9938;

-- 9938	0	15593	15668	0	0	0	0	0	0	0	0
DELETE FROM `creature_template_spells` WHERE `entry` = 9938;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 993801;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(993801, 'Blackrock Depths - Magmus (9938)', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 993801;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(993801, 1, 15593, 0, -1, 0, 0, 100, 2, 60000, 120000, 30000, 60000, 'Magmus - War Stomp'), -- dont think its hp based.
(993801, 2, 15668, 0, -1, 1, 0, 100, 1, 6000, 8000, 6000, 12000, 'Magmus - Fiery Burst');

