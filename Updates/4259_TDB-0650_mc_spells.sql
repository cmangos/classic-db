-- Credit for sniffing goes to Trugge
-- cleanup and reevalute befor final export
-- evaluate if aura procs like 3391 should be present in creature_template_spells as its procced by parent spell auras, also should not have cooldown as its cooldown is defined by the proc ratio

-- ======================================================================================================
-- FIXES/ADJUSTMENTS FOR ALL creature_template_spells
-- ======================================================================================================

-- We don't need certain spells in template, they are handled by core automatically
UPDATE creature_template_spells SET spell1=0 WHERE spell1 IN (1,3,4);
UPDATE creature_template_spells SET spell2=0 WHERE spell2 IN (1,3,4);
UPDATE creature_template_spells SET spell3=0 WHERE spell3 IN (1,3,4);
UPDATE creature_template_spells SET spell4=0 WHERE spell4 IN (1,3,4);
UPDATE creature_template_spells SET spell5=0 WHERE spell5 IN (1,3,4);
UPDATE creature_template_spells SET spell6=0 WHERE spell6 IN (1,3,4);
UPDATE creature_template_spells SET spell7=0 WHERE spell7 IN (1,3,4);
UPDATE creature_template_spells SET spell8=0 WHERE spell8 IN (1,3,4);
UPDATE creature_template_spells SET spell9=0 WHERE spell9 IN (1,3,4);
UPDATE creature_template_spells SET spell10=0 WHERE spell10 IN (1,3,4);

-- Remove Trash which is done mostly by aura passive parent spells
UPDATE `creature_template_spells` SET `spell1` = 0 WHERE `spell1` = 3391;
UPDATE `creature_template_spells` SET `spell2` = 0 WHERE `spell2` = 3391;
UPDATE `creature_template_spells` SET `spell3` = 0 WHERE `spell3` = 3391;
UPDATE `creature_template_spells` SET `spell4` = 0 WHERE `spell4` = 3391;
UPDATE `creature_template_spells` SET `spell5` = 0 WHERE `spell5` = 3391;
UPDATE `creature_template_spells` SET `spell6` = 0 WHERE `spell6` = 3391;
UPDATE `creature_template_spells` SET `spell7` = 0 WHERE `spell7` = 3391;
UPDATE `creature_template_spells` SET `spell8` = 0 WHERE `spell8` = 3391;
UPDATE `creature_template_spells` SET `spell9` = 0 WHERE `spell9` = 3391;
UPDATE `creature_template_spells` SET `spell10` = 0 WHERE `spell10` = 3391;

-- Remove Dazed 1604, which is caused by auto attacking
UPDATE `creature_template_spells` SET `spell1` = 0 WHERE `spell1` = 1604;
UPDATE `creature_template_spells` SET `spell2` = 0 WHERE `spell2` = 1604;
UPDATE `creature_template_spells` SET `spell3` = 0 WHERE `spell3` = 1604;
UPDATE `creature_template_spells` SET `spell4` = 0 WHERE `spell4` = 1604;
UPDATE `creature_template_spells` SET `spell5` = 0 WHERE `spell5` = 1604;
UPDATE `creature_template_spells` SET `spell6` = 0 WHERE `spell6` = 1604;
UPDATE `creature_template_spells` SET `spell7` = 0 WHERE `spell7` = 1604;
UPDATE `creature_template_spells` SET `spell8` = 0 WHERE `spell8` = 1604;
UPDATE `creature_template_spells` SET `spell9` = 0 WHERE `spell9` = 1604;
UPDATE `creature_template_spells` SET `spell10` = 0 WHERE `spell10` = 1604;

-- Remove wrong charm immunities from Gnomeregan npcs
UPDATE `creature_template` SET `mechanicimmunemask`=`mechanicimmunemask`&~1 WHERE `entry` IN (6232,6207,6206,6211,6215,6219,6212,6220,6329,6218,7603,6223,6224,6222,6234,6233,6226,6227,6225,7849,6230,7915);
-- ('622206','6222','9','0','100','1025','5','30','1200','2500','0','0','11','13398','1','256','0','0','0','0','0','0','0','0','Leprous Technician - Cast Throw Wrench'),
-- ('622304','6223','9','0','100','1025','5','30','2000','2700','0','0','11','6660','1','256','0','0','0','0','0','0','0','0','Leprous Defender - Cast Shoot'),
-- ('622406','6224','9','0','100','1025','5','30','1200','2500','0','0','11','13398','1','256','0','0','0','0','0','0','0','0','Leprous Machinesmith - Cast Throw Wrench'),
UPDATE `creature_template` SET `SpellList` = (`entry` * 100 + 1) WHERE `entry` IN (6222,6223,6224);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (622201,622301,622401);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(622201, 'Gnomeregan - Leprous Technician', 0, 75),
(622301, 'Gnomeregan - Leprous Defender', 0, 75),
(622401, 'Gnomeregan - Leprous Machinesmith', 0, 75);
DELETE FROM `creature_spell_list` WHERE `Id` IN (622201,622301,622401) AND `Position` = 0;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(622201, 0, 13398, 2, 1, 0, 100, 0, 0, 0, 2000, 4000, 'Gnomeregan - Leprous Technician - Throw Wrench on Current'), -- Leprous Technician 6222
(622301, 0, 6660, 2, 1, 0, 100, 0, 0, 0, 2000, 4000, 'Gnomeregan - Leprous Defender - Shoot on Current'), -- Leprous Defender 6223
(622401, 0, 13398, 2, 1, 0, 100, 0, 0, 0, 2000, 4000, 'Gnomeregan - Leprous Machinesmith - Throw Wrench on Current'); -- Leprous Machinesmith 6224

