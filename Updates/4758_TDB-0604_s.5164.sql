-- s.5164 Knockdown manually casted by c.2181,1494
UPDATE `creature_template` SET `SpellList`='218101' WHERE `entry`='2181'; -- Stormscale Myrmidon
UPDATE `creature_template_addon` SET `auras` = NULL WHERE `entry` = 2181;

UPDATE `creature_template` SET `SpellList`='149401' WHERE `entry`='1494'; -- Negolash
UPDATE `creature_template_addon` SET `auras` = NULL WHERE `entry` = 1494;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (218101,149401);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(218101, 'Darkshore - Stormscale Myrmidon', 0, 0),
(149401, 'Stranglethorn Vale - Negolash', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (218101,149401);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
-- ('218101','2181','11','0','100','0','0','0','0','0','0','0','11','7095','0','34','0','0','0','0','0','0','0','0','Stormscale Myrmidon - Cast Knockdown Proc on Spawn'),
(218101, 1, 5164, 0, -1, 1, 0, 100, 1, 0, 10000, 20000, 60000, 'Stormscale Myrmidon - Knockdown'),
-- ('149401','1494','11','0','100','0','0','0','0','0','0','0','11','7095','0','32','0','0','0','0','0','0','0','0','Negolash - Cast Knockdown Proc on Spawn'),
(149401, 1, 5164, 0, -1, 1, 0, 100, 1, 0, 10000, 10000, 15000, 'Negolash - Knockdown');

