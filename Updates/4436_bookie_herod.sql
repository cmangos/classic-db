-- Bookie Herod 815
-- https://www.wowhead.com/tbc/npc=815/bookie-herod
UPDATE `creature_template` SET `SpeedWalk` = 1, `SpellList` = 81501 WHERE `entry` = 815;
-- Syndicate Spectre 2638
-- https://www.wowhead.com/tbc/npc=2638/syndicate-spectre
UPDATE `creature_template` SET `MinLevel` = 35, `MaxLevel` = 35, `SpeedWalk` = 1, `MeleeBaseAttackTime` = 1000, `SpellList` = 263801 WHERE `entry` = 2638;
REPLACE INTO `creature_template_addon` (`entry`, `sheath_state`, `auras`) VALUES
(815, 1, NULL), (2638, 1, 7131);

-- 815	0	20816	3722	0	0	0	0	0	0	0	0
-- 2638	0	20791	7131	0	0	0	0	0	0	0	0
DELETE FROM `creature_template_spells` WHERE `entry` IN (815,2638);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (81501,263801);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(81501, 'Stranglethorn Vale - Bookie Herod (815)', 0, 75),
(263801, 'Stranglethorn Vale - Syndicate Spectre (2638)', 0, 75);


DELETE FROM `creature_spell_list` WHERE `Id` = 81501;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(81501, 1, 20816, 2, -1, 	1, 	0, 100, 1, 0, 0, 0, 0, 'Stranglethorn Vale - Bookie Herod - Shadow Bolt on Current'),
(81501, 2, 3722, 0, -1, 0, 0, 100, 3, 3000, 12000, 15000, 30000, 'Stranglethorn Vale - Bookie Herod - Frost Armor'),

(263801, 1, 20791, 2, -1, 	1, 	0, 100, 1, 0, 0, 0, 0, 'Stranglethorn Vale - Syndicate Spectre - Summon Syndicate Spectre'),
(263801, 2, 7131, 0, -1, 0, 0, 100, 3, 0, 0, 3600000, 3600000, 'Stranglethorn Vale - Syndicate Spectre - Illusion Passive');

