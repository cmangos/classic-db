-- Convert more long init cd healers to spell list

UPDATE `creature_template` SET `SpellList` = 43001 WHERE `entry` = 430; -- Redridge Mystic
UPDATE `creature_template` SET `SpellList` = 45601 WHERE `entry` = 456; -- Murloc Minor Oracle
UPDATE `creature_template` SET `SpellList` = 51701 WHERE `entry` = 517; -- Murloc Oracle
UPDATE `creature_template` SET `SpellList` = 54801 WHERE `entry` = 548; -- Murloc Minor Tidecaller
UPDATE `creature_template` SET `SpellList` = 94001 WHERE `entry` = 940; -- Kurzen Medicine Man
UPDATE `creature_template` SET `SpellList` = 903601 WHERE `entry` = 9036; -- Vile''rel
UPDATE `creature_template` SET `SpellList` = 1103201 WHERE `entry` = 11032; -- Malor the Zealous
UPDATE `creature_template` SET `SpellList` = 1561301 WHERE `entry` = 15613; -- Merok Longstride
UPDATE `creature_template` SET `SpellList` = 1561501 WHERE `entry` = 15615; -- Shadow Priestess Shai

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (43001,45601,51701,54801,94001,903601,1103201,1561301,1561501);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(43001, 'Redridge Mountains - Redridge Mystic (430)', 75, 75),
(45601, 'Westfall - Murloc Minor Oracle (456)', 75, 75),
(51701, 'Westfall - Murloc Oracle (517)', 75, 75),
(54801, 'Redridge Mountains - Murloc Minor Tidecaller (548)', 75, 75),
(94001, 'Stranglethorn Vale - Kurzen Medicine Man (940)', 75, 0),
(903601, 'Blackrock Depths - Vile\'rel (9036)', 75, 75),
(1103201, 'Stratholme - Malor the Zealous (11032)', 75, 0),
(1561301, 'Silithus - Merok Longstride (15613)', 75, 0),
(1561501, 'Silithus - Shadow Priestess Shai (15615)', 75, 0);

-- SELECT * FROM creature_template_spells where entry IN (430,456,517,548,940,9036,11032,15613,15615);
DELETE FROM `creature_template_spells` WHERE `entry` IN (430,456,517,548,940,9036,11032);
-- 430	0	20802	547	0	0	0	0	0	0	0	0
-- 456	0	9532	332	0	0	0	0	0	0	0	0
-- 517	0	9734	6074	4980	0	0	0	0	0	0	0
-- 548	0	547	9672	0	0	0	0	0	0	0	0
-- 940	0	588	6064	6077	0	0	0	0	0	0	0
-- 9036	0	15586	15587	11974	0	0	0	0	0	0	0
-- 11032	0	12734	16172	17233	15493	0	0	0	0	0	0

-- 200	2	10	1	1	-1	Support - Missing 10% including self
-- 201	2	50	1	1	-1	Support - Missing 50% including self
-- 202	2	90	1	1	-1	Support - Missing 90% including self
-- 206	2	25	1	1	-1	Support - Missing 25% including self
-- 209	2	75	1	0	-1	Support - Missing 75% excluding self
DELETE FROM `creature_spell_list` WHERE `Id` IN (43001,45601,51701,54801,94001,903601,1103201,1561301,1561501); -- none yet
-- INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
-- ('43004','430','14','0','100','1025','550','30','35800','35800','0','0','11','547','12','0','0','0','0','0','0','0','0','0','Redridge Mystic - Cast Healing Wave on Friendly Missing HP'),
-- ('43005','430','0','0','100','1025','0','0','3800','5200','0','0','11','20802','1','256','0','0','0','0','0','0','0','0','Redridge Mystic - Cast Lightning Bolt'),
(43001, 1, 20802, 2, -1, 1, 0, 100, 1, 0, 0, 0, 0, 'Redridge Mountains - Redridge Mystic - Lightning Bolt'),
(43001, 2, 547, 0, -1, 201, 0, 100, 1, 0, 10000, 15000, 30000, 'Redridge Mountains - Redridge Mystic - Healing Wave (Rank 3) - Missing 50% including self'),
-- ('45603','456','14','0','100','1025','130','40','30900','39000','0','0','11','332','12','0','0','0','0','0','0','0','0','0','Murloc Minor Oracle - Cast Healing Wave on Friendly Missing HP'),
-- ('45604','456','9','0','100','1025','0','40','3600','5100','0','0','11','9532','1','256','0','0','0','0','0','0','0','0','Murloc Minor Oracle - Cast Lightning Bolt'),
(45601, 1, 9532, 2, -1, 1, 0, 100, 1, 0, 0, 0, 0, 'Westfall - Murloc Minor Oracle - Lightning Bolt'),
(45601, 2, 332, 0, -1, 201, 0, 100, 1, 0, 10000, 15000, 30000, 'Westfall - Murloc Minor Oracle - Healing Wave (Rank 2) - Missing 50% including self'),
-- ('51703','517','14','0','100','1025','40','50','48800','53700','0','0','11','6074','12','0','0','0','0','0','0','0','0','0','Murloc Oracle - Cast Renew on Friendly Missing HP'),
-- ('51704','517','9','0','100','1025','0','40','3000','3800','0','0','11','9734','1','256','0','0','0','0','0','0','0','0','Murloc Oracle - Cast Holy Smite'),
(51701, 1, 9734, 2, -1, 1, 0, 100, 1, 0, 0, 0, 0, 'Westfall - Murloc Oracle - Holy Smite'),
(51701, 2, 6074, 0, -1, 200, 0, 100, 1, 0, 10000, 15000, 30000, 'Westfall - Murloc Oracle - Renew (Rank 2) - Missing 10% including self'),
-- ('54803','548','14','0','100','1025','180','40','31800','82800','0','0','11','547','12','0','0','0','0','0','0','0','0','0','Murloc Minor Tidecaller - Cast Healing Wave on Friendly Missing HP'),
-- ('54804','548','9','0','100','1025','0','40','3400','5200','0','0','11','9672','1','256','0','0','0','0','0','0','0','0','Murloc Minor Tidecaller - Cast Frostbolt'),
(54801, 1, 547, 0, -1, 201, 0, 100, 1, 0, 10000, 15000, 30000, 'Redridge Mountains - Murloc Minor Tidecaller - Healing Wave (Rank 3) - Missing 50% including self'),
(54801, 2, 9672, 2, -1, 1, 0, 100, 1, 0, 0, 0, 0, 'Redridge Mountains - Murloc Minor Tidecaller - Frostbolt'),
-- ('94003','940','14','0','100','1025','250','30','19900','28900','0','0','11','6077','12','0','0','0','0','0','0','0','0','0','Kurzen Medicine Man - Cast Renew on Friendly Missing HP'),
-- ('94004','940','14','0','100','1025','550','30','34300','39100','0','0','11','6064','12','0','0','0','0','0','0','0','0','0','Kurzen Medicine Man - Cast Heal on Friendly Missing HP'),
(94001, 2, 6064, 0, -1, 201, 0, 100, 1, 0, 10000, 20000, 40000, 'Stranglethorn Vale - Kurzen Medicine Man - Heal (Rank 4) - Missing 50% including self'),
(94001, 3, 6077, 0, -1, 206, 0, 100, 2, 0, 10000, 15000, 30000, 'Stranglethorn Vale - Kurzen Medicine Man - Renew (Rank 5) - Missing 25% including self'),
-- ('903603','9036','0','0','100','1025','15000','20000','15000','20000','0','0','11','15585','0','0','0','0','0','0','0','0','0','0','Vile''rel - Cast Prayer of Healing'),
-- ('903604','9036','14','0','100','1025','5000','40','16000','20000','0','0','11','15586','12','0','0','0','0','0','0','0','0','0','Vile''rel - Cast Heal on Friendly Missing HP'),
-- ('903605','9036','14','0','100','1025','2500','40','60000','120000','0','0','11','11974','12','0','0','0','0','0','0','0','0','0','Vile''rel - Cast Power Word: Shield on Friendly Missing HP'),
-- ('903606','9036','0','0','100','1025','0','0','3400','4800','0','0','11','15587','1','256','0','0','0','0','0','0','0','0','Vile''rel - Cast Mind Blast'),
(903601, 1, 15586, 0, -1, 201, 0, 100, 1, 0, 10000, 15000, 20000, 'Blackrock Depths - Vile\'rel - Heal - Missing 50% including self'),
(903601, 2, 15587, 2, -1, 1, 0, 100, 1, 0, 0, 0, 0, 'Blackrock Depths - Vile\'rel - Mind Blast'),
(903601, 3, 11974, 0, -1, 206, 0, 100, 1, 0, 20000, 30000, 60000, 'Blackrock Depths - Vile\'rel - Power Word: Shield - Missing 25% including self'),
(903601, 4, 15585, 0, -1, 206, 0, 100, 0, 15000, 20000, 15000, 20000, 'Blackrock Depths - Vile\'rel - Prayer of Healing - missing 25% including self'), -- classic only?
-- ('1103201','11032','0','0','100','1025','5000','15000','9000','14000','0','0','11','12734','17','0','0','0','0','0','0','0','0','0','Malor the Zealous - Cast Ground Smash'),
-- ('1103202','11032','14','0','100','1025','13600','20','3600000','3600000','0','0','11','17233','12','0','0','0','0','0','0','0','0','0','Malor the Zealous - Cast Lay on Hands on Friendly Missing HP'),
-- ('1103203','11032','0','0','100','1025','0','10000','7000','11000','0','0','11','16172','1','0','0','0','0','0','0','0','0','0','Malor the Zealous - Cast Head Crack'),
-- ('1103204','11032','14','0','100','1025','2500','40','14000','17000','0','0','11','15493','12','0','0','0','0','0','0','0','0','0','Malor the Zealous - Cast Holy Light on Friendly Missing HP'),
(1103201, 1, 12734, 0, -1, 103, 0, 100, 0, 5000, 15000, 9000, 14000, 'Stratholme - Malor the Zealous - Ground Smash - aoe exists'),
(1103201, 2, 16172, 0, -1, 1, 0, 100, 1, 0, 10000, 7000, 11000, 'Stratholme - Malor the Zealous - Head Crack on Current'),
(1103201, 3, 17233, 0, -1, 202, 0, 100, 1, 3000, 30000, 3600000, 3600000, 'Stratholme - Malor the Zealous - Lay on Hands (Rank 1) - Missing 90% including self'), -- condition for LoH has to be found.
(1103201, 4, 15493, 0, -1, 201, 0, 100, 1, 5000, 10000, 15000, 30000, 'Stratholme - Malor the Zealous - Holy Light - Missing 50% including self'),
-- ('1561303','15613','14','0','100','1025','4000','40','60000','120000','0','0','11','15982','12','0','0','0','0','0','0','0','0','0','Merok Longstride - Cast Healing Wave on Friendly Missing HP'),
(1561301, 2, 15982, 0, -1, 201, 0, 100, 1, 40000, 60000, 40000, 60000, 'Silithus - Merok Longstride - Healing Wave - Missing 50% including self'),
-- ('1561503','15615','14','0','100','1025','3000','40','60000','120000','0','0','11','17138','12','0','0','0','0','0','0','0','0','0','Shadow Priestess Shai - Cast Flash Heal on Friendly Missing HP'),
(1561501, 2, 17138, 0, -1, 201, 0, 100, 1, 35000, 45000, 35000, 45000, 'Silithus - Shadow Priestess Shai - Flash Heal - Missing 50% including self');

UPDATE `creature_spell_targeting` SET `Comments` = 'Support - Missing 75% including self' WHERE `Id` = 208; -- Support - missing 75% including self
UPDATE `creature_spell_targeting` SET `Comments` = 'Support - Missing 75% excluding self' WHERE `Id` = 209; -- Support - missing 75% excluding self

