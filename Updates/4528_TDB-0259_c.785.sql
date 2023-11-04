-- Skeletal Warder - Unholy Frenzy - friendly missing buff include self
-- ('78502','785','0','0','100','1025','1000','9400','20100','44800','0','0','11','8699','0','0','0','0','0','0','0','0','0','0','Skeletal Warder - Cast Unholy Frenzy'),
UPDATE `creature_template` SET `SpellList` = 78501 WHERE `entry` = 785;
DELETE FROM `creature_spell_list_entry` WHERE `Id` = 78501;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(78501, 'Duskwood - Skeletal Warder (785)', 75, 0);
DELETE FROM `creature_spell_list` WHERE `Id` = 78501;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(78501, 0, 8699, 0, -1, 5, 0, 100, 0, 0, 15000, 20000, 40000, 'Skeletal Warder - Unholy Frenzy - friendly missing buff include self');

