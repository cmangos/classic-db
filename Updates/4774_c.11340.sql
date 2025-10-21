-- Hakkari Blood Priest 11340
-- ('1134001','11340','15','0','100','1025','1','30','15000','20000','0','0','11','17201','12','0','0','0','0','0','0','0','0','0','Hakkari Blood Priest - Cast Dispel Magic on Friendly CC'),
-- ('1134002','11340','0','0','85','1025','3000','3000','4000','6000','0','0','11','24618','1','0','0','0','0','0','0','0','0','0','Hakkari Blood Priest - Cast Drain Life'),
-- ('1134003','11340','2','1','100','1','40','0','1000','1000','0','0','22','1','0','0','0','0','0','0','0','0','0','0','Hakkari Blood Priest - Set Phase 1 when Life is below 40%'),
-- ('1134004','11340','32','1','100','1025','10','100','6000','8000','0','0','11','24617','12','0','0','0','0','0','0','0','0','0','Hakkari Blood Priest - Cast Blood Funnel in Range (Phase 1)'),
-- ('1134005','11340','2','1','100','1','100','41','1000','1000','0','0','22','0','0','0','0','0','0','0','0','0','0','0','Hakkari Blood Priest - Set Phase 0 when Life is Above 40% (Phase 1)'),
-- ('1134006','11340','7','0','100','0','0','0','0','0','0','0','22','0','0','0','0','0','0','0','0','0','0','0','Hakkari Blood Priest - Set Phase 0 on Evade'),
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 11340; -- testing
UPDATE `creature_template` SET `SpellList`='1134001' WHERE `entry`='11340'; -- https://www.wowhead.com/tbc/npc=11340/hakkari-blood-priest
DELETE FROM `creature_template_spells` WHERE `entry` = 11340; -- (11340, 0, 24617, 17201, 24618, 0, 0, 0, 0, 0, 0, 0);
DELETE FROM `creature_spell_list_entry` WHERE `Id` = 1134001;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1134001, 'Zul''Gurub - Hakkari Blood Priest', 100, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 1134001;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1134001, 0, 24617, 0, -1, 207, 0, 100, 0, 5000, 10000, 10000, 20000, 'Hakkari Blood Priest - Blood Funnel - Support - Missing 25% excluding self'),
(1134001, 1, 17201, 0, -1, 3, 0, 100, 1, 3000, 9000, 6000, 12000, 'Hakkari Blood Priest - Dispel Magic - Hardcoded - eligible friendly dispel'),
(1134001, 2, 24618, 0, 361, 1, 0, 100, 1, 5000, 10000, 5000, 10000, 'Hakkari Blood Priest - Drain Life - HEALTH_PERCENT LESS_THAN 75');

