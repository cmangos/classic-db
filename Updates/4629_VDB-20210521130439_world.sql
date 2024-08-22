-- Add your query below.
-- https://github.com/vmangos/core/commit/039abd821cbb1a9f8586f2b78c4f4e0eb8bcab6c

-- Ysida's Trigger should not attack players.
UPDATE `creature_template` SET `UnitFlags`=33555200 WHERE `entry`=16100;

-- Riverpaw Mystic is using wrong spell id for Healing Wave.
UPDATE `creature_template` SET `SpellList` = 45301 WHERE `entry` = 453;
DELETE FROM `creature_spell_list` WHERE `Id` = 45301;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
-- ('45304','453','9','0','100','1025','0','40','3400','4400','0','0','11','9532','1','256','0','0','0','0','0','0','0','0','Riverpaw Mystic - Cast Lightning Bolt'),
(45301, 0, 9532, 2, -1, 1, 0, 100, 1, 0, 0, 0, 0, 'Westfall - Riverpaw Mystic - Lightning Bolt'),
(45301, 1, 913, 0, -1, 201, 0, 100, 1, 5000, 15000, 15000, 30000, 'Westfall - Riverpaw Mystic - Healing Wave on Friendly Missing 50% including self');
DELETE FROM `creature_spell_list_entry` WHERE `Id` = 45301;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(45301, 'Westfall - Riverpaw Mystic 453', 75, 75);
DELETE FROM `creature_template_spells` WHERE `entry` = 453;

-- Boulderfist Shaman is using wrong spell id for Healing Wave.
UPDATE `creature_template` SET `SpellList` = 257001 WHERE `entry` = 2570;
DELETE FROM `creature_spell_list` WHERE `Id` = 257001;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
-- ('257003','2570','2','0','100','1024','40','0','0','0','0','0','11','11986','0','0','0','0','0','0','0','0','0','0','Boulderfist Shaman - Cast Healing Wave at 40% HP'),
-- ('257004','2570','9','0','100','1025','0','40','3500','4800','0','0','11','9532','1','256','0','0','0','0','0','0','0','0','Boulderfist Shaman - Cast Lightning Bolt'),
-- ('257002','2570','2','0','100','1024','45','0','0','0','0','0','11','6364','0','0','0','0','0','0','0','0','0','0','Boulderfist Shaman - Cast Searing Totem at 45% HP'),
(257001, 0, 959, 0, -1, 201, 0, 100, 1, 5000, 15000, 15000, 30000, 'Arathi Highlands - Boulderfist Shaman - Healing Wave on Friendly Missing 50% including self'), -- s.11986 tbc+
(257001, 1, 9532, 2, -1, 1, 0, 100, 1, 0, 0, 0, 0, 'Arathi Highlands - Boulderfist Shaman - Lightning Bolt'),
(257001, 2, 6364, 0, -1, 0, 0, 100, 1, 5000, 20000, 12000, 24000, 'Arathi Highlands - Boulderfist Shaman - Searing Totem');
DELETE FROM `creature_spell_list_entry` WHERE `Id` = 257001;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(257001, 'Arathi Highlands - Boulderfist Shaman 2570', 75, 75);
DELETE FROM `creature_template_spells` WHERE `entry` = 2570; -- 2570	0	11986	9532	6364	0	0	0	0	0	0	0

-- Vilebranch Headhunter is using wrong spell id for Throw.
UPDATE `creature_template` SET `SpellList` = 264101 WHERE `entry` = 2641;
DELETE FROM `creature_spell_list` WHERE `Id` = 264101;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
-- ('264103','2641','9','0','100','1025','0','5','15000','18000','0','0','11','7357','4','0','0','0','0','0','0','0','0','0','Vilebranch Headhunter - Cast Poisonous Stab'),
-- ('264104','2641','9','0','100','1025','5','30','2300','3900','0','0','11','10277','1','256','0','0','0','0','0','0','0','0','Vilebranch Headhunter - Cast Throw'),
(264101, 0, 15607, 2, -1, 1, 0, 100, 0, 0, 0, 2000, 3000, 'The Hinterlands - Vilebranch Headhunter - Throw on Current'), -- s.10277 tbc+
(264101, 1, 15656, 0, -1, 1, 0, 100, 1, 8000, 16000, 30000, 40000, 'The Hinterlands - Vilebranch Headhunter - Poisonous Stab on Current'); -- s.7357 tbc+
DELETE FROM `creature_spell_list_entry` WHERE `Id` = 264101;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(264101, 'The Hinterlands - Vilebranch Headhunter 2641', 0, 75);
DELETE FROM `creature_template_spells` WHERE `entry` = 2641; -- 2641	0	10277	7357	0	0	0	0	0	0	0	0

-- Vilebranch Shadowcaster is using wrong spell id for Shadow Bolt.
UPDATE `creature_template` SET `SpellList` = 264201 WHERE `entry` = 2642;
DELETE FROM `creature_spell_list` WHERE `Id` = 264201;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
-- ('264206','2642','9','0','100','1025','0','40','3400','4800','0','0','11','9613','1','256','0','0','0','0','0','0','0','0','Vilebranch Shadowcaster - Cast Shadow Bolt'),
-- ('264205','2642','9','0','100','1025','0','30','15000','25000','0','0','11','7289','4','32','0','0','0','0','0','0','0','0','Vilebranch Shadowcaster - Cast Shrink'),
(264201, 0, 12471, 2, -1, 1, 0, 100, 1, 0, 0, 0, 0, 'The Hinterlands - Vilebranch Shadowcaster - Shadow Bolt'),
(264201, 1, 7289, 0, -1, 100, 0, 100, 1, 5000, 25000, 15000, 30000, 'The Hinterlands - Vilebranch Shadowcaster - Shrink');
DELETE FROM `creature_spell_list_entry` WHERE `Id` = 264201;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(264201, 'The Hinterlands - Vilebranch Shadowcaster 2642', 0, 75);
DELETE FROM `creature_template_spells` WHERE `entry` = 2642; -- 2642	0	9613	7289	0	0	0	0	0	0	0	0

-- Scalding Whelp is using wrong spell id for Fireball.
UPDATE `creature_template` SET `SpellList` = 272501 WHERE `entry` = 2725;
DELETE FROM `creature_spell_list` WHERE `Id` = 272501;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
-- ('272502','2725','9','0','100','1025','0','40','3300','5000','0','0','11','12466','1','256','0','0','0','0','0','0','0','0','Scalding Whelp - Cast Fireball'),
(272501, 0, 9053, 2, -1, 1, 0, 100, 1, 0, 0, 0, 0, 'Badlands - Scalding Whelp - Fireball'); -- s.34083 tbc+
DELETE FROM `creature_spell_list_entry` WHERE `Id` = 272501;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(272501, 'Badlands - Scalding Whelp 2725', 0, 75);
DELETE FROM `creature_template_spells` WHERE `entry` = 2725; -- ø

-- Orgrimmar Grunt is using wrong spell id for Cleave.
UPDATE `creature_template` SET `SpellList` = 329601 WHERE `entry` = 3296;
DELETE FROM `creature_spell_list` WHERE `Id` = 329601;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
-- Orgrimmar Grunt 3296 - guard_orgrimmar
(329601, 0, 15496, 0, -1, 1, 0, 100, 1, 5000, 15000, 6000, 18000, 'Orgrimmar - Orgrimmar Grunt - Cleave on Current'), -- s.40505 tbc+
(329601, 1, 8599, 0, 5364, 0, 0, 100, 1, 0, 0, 600000, 600000, 'Orgrimmar - Orgrimmar Grunt - Enrage below 30');
DELETE FROM `creature_spell_list_entry` WHERE `Id` = 329601;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(329601, 'Orgrimmar - Orgrimmar Grunt 3296', 0, 0);
DELETE FROM `creature_template_spells` WHERE `entry` = 3296;

-- Nether Sorceress is using wrong spell id for Lash of Pain.
UPDATE `creature_template` SET `SpellList` = 468401 WHERE `entry` = 4684;
DELETE FROM `creature_spell_list` WHERE `Id` = 468401;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
-- ('468402','4684','9','0','100','1025','0','5','12000','15000','0','0','11','15968','1','0','0','0','0','0','0','0','0','0','Nether Sorceress - Cast Lash of Pain'),
-- ('468403','4684','9','0','100','1025','0','8','12000','15000','0','0','11','11831','17','1024','0','0','0','0','0','0','0','0','Nether Sorceress - Cast Frost Nova'),
-- ('468404','4684','9','0','100','1025','0','40','3400','4800','0','0','11','20297','1','256','0','0','0','0','0','0','0','0','Nether Sorceress - Cast Frostbolt'),
(468401, 0, 15968, 0, -1, 1, 0, 100, 1, 4000, 12000, 12000, 24000, 'Desolace - Nether Sorceress - Lash of Pain on Current'), 
(468401, 1, 20297, 2, -1, 1, 0, 100, 1, 0, 0, 0, 0, 'Desolace - Nether Sorceress - Frostbolt');
-- (468401, 2, 11831, 0, -1, 103, 0, 100, 0, 9000, 18000, 25000, 50000, 'Desolace - Nether Sorceress - Frost Nova - on AOE eligible target exists - not passed to cast'); - does not distance with this
DELETE FROM `creature_spell_list_entry` WHERE `Id` = 468401;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(468401, 'Desolace - Nether Sorceress 4684', 0, 75);
DELETE FROM `creature_template_spells` WHERE `entry` = 4684; -- 4684	0	15968	20297	11831	0	0	0	0	0	0	0

-- Blackfathom Tide Priestess is using wrong spell id for Heal.
UPDATE `creature_template` SET `SpellList` = 480201 WHERE `entry` = 4802;
DELETE FROM `creature_spell_list` WHERE `Id` = 480201;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
-- ('480203','4802','2','0','100','1025','30','0','25000','35000','0','0','11','11642','0','0','0','0','0','0','0','0','0','0','Blackfathom Tide Priestess - Cast Heal at 30% HP'),
-- ('480204','4802','9','0','100','1025','0','40','3400','4800','0','0','11','9672','1','256','0','0','0','0','0','0','0','0','Blackfathom Tide Priestess - Cast Frostbolt'),
(480201, 0, 9672, 2, -1, 1, 0, 100, 1, 0, 0, 0, 0, 'Ashenvale - Blackfathom Tide Priestess - Frostbolt'),
(480201, 1, 2055, 0, -1, 201, 0, 100, 1, 5000, 15000, 15000, 30000, 'Ashenvale - Blackfathom Tide Priestess - Heal on Friendly Missing 50% including self'); -- s.11642 tbc+
DELETE FROM `creature_spell_list_entry` WHERE `Id` = 480201;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(480201, 'Ashenvale - Blackfathom Tide Priestess 4802', 75, 75);
DELETE FROM `creature_template_spells` WHERE `entry` = 4802; -- 4802	0	9672	11642	0	0	0	0	0	0	0	0

-- Atal'ai Priest is using wrong spell id for Heal.
UPDATE `creature_template` SET `SpellList` = 526901 WHERE `entry` = 5269;
DELETE FROM `creature_spell_list` WHERE `Id` = 526901;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
-- ('526904','5269','14','0','100','1025','1000','40','20000','30000','0','0','11','12039','12','0','0','0','0','0','0','0','0','0','Atal''ai Priest - Cast Heal on Friendly Missing HP'),
-- ('526905','5269','16','0','100','1025','12040','15','30000','60000','0','0','11','12040','12','0','0','0','0','0','0','0','0','0','Atal''ai Priest - Cast Shadow Shield on Friendly Missing Buff'),
-- ('526906','5269','0','0','100','1281','0','0','3000','4000','0','0','11','9613','1','256','0','0','0','0','0','0','0','0','Atal''ai Priest - Cast Shadow Bolt (Range Mode)'),
-- ('526907','5269','0','0','100','1537','0','10000','5000','20000','0','0','11','9613','1','256','0','0','0','0','0','0','0','0','Atal''ai Priest - Cast Shadow Bolt (Melee Mode)'),
(526901, 0, 9613, 2, -1, 1, 0, 100, 1, 0, 0, 0, 0, 'The Temple of Atal\'Hakkar - Atal\'ai Priest - Shadow Bolt'),
(526901, 1, 12039, 0, -1, 201, 0, 100, 1, 5000, 20000, 20000, 30000, 'The Temple of Atal\'Hakkar - Blackfathom Tide Priestess - Heal on Friendly Missing 50% including self'), -- s.11642 tbc+
(526901, 2, 12040, 0, -1, 5, 0, 100, 0, 10000, 30000, 30000, 60000, 'The Temple of Atal\'Hakkar - Atal\'ai Priest - Shadow Shield - friendly missing buff'); -- s.31976 tbc+
DELETE FROM `creature_spell_list_entry` WHERE `Id` = 526901;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(526901, 'The Temple of Atal\'Hakkar - Atal\'ai Priest 5269', 75, 75);
DELETE FROM `creature_template_spells` WHERE `entry` = 5269; -- 5269	0	11660	8600	0	0	0	0	0	0	0	0

-- Felguard Elite is using wrong spell id for Cleave.
UPDATE `creature_spell_list` SET `SpellId` = 15754, `Comments` = 'Blasted Lands - Felguard Elite - Cleave on Current' WHERE `Id` = 871701 AND `SpellId` = 15284; -- s.15754 classic only
UPDATE `creature_spell_list` SET `Comments` = 'Blasted Lands - Felguard Elite - Mortal Strike on Current' WHERE `Id` = 871701 AND `SpellId` = 13737;

-- Dread Guard is using wrong spell id for Cleave.
UPDATE `creature_spell_list` SET `SpellId` = 15754 WHERE `Id` = 1448301 AND `SpellId` = 15284; -- s.15754 classic only

-- End of migration.

