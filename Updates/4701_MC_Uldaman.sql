-- Uldaman
UPDATE `creature_template` SET `CharmedSpellList`='707605', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='7076'; -- https://www.wowhead.com/classic/npc=7076/earthen-guardian
UPDATE `creature_template` SET `CharmedSpellList`='707705', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='7077'; -- https://www.wowhead.com/classic/npc=7077/earthen-hallshaper
UPDATE `creature_template` SET `CharmedSpellList`='739705', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='7397'; -- https://www.wowhead.com/classic/npc=7397/earthen-stonecarver
UPDATE `creature_template` SET `CharmedSpellList`='739605', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='7396'; -- https://www.wowhead.com/classic/npc=7396/earthen-stonebreaker
UPDATE `creature_template` SET `CharmedSpellList`='732005', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='7320'; -- https://www.wowhead.com/classic/npc=7320/stonevault-mauler
UPDATE `creature_template` SET `CharmedSpellList`='732105', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='7321'; -- https://www.wowhead.com/classic/npc=7321/stonevault-flameweaver
UPDATE `creature_template` SET `CharmedSpellList`='484905', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='4849'; -- https://www.wowhead.com/classic/npc=4849/shadowforge-archaeologist
UPDATE `creature_template` SET `CharmedSpellList`='703005', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='7030'; -- https://www.wowhead.com/classic/npc=7030/shadowforge-geologist
UPDATE `creature_template` SET `CharmedSpellList`='484805', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='4848'; -- https://www.wowhead.com/classic/npc=4848/shadowforge-darkcaster
UPDATE `creature_template` SET `CharmedSpellList`='729005', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='7290'; -- https://www.wowhead.com/classic/npc=7290/shadowforge-sharpshooter
UPDATE `creature_template` SET `CharmedSpellList`='485505', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='4855'; -- https://www.wowhead.com/classic/npc=4855/stonevault-brawler
UPDATE `creature_template` SET `CharmedSpellList`='485305', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='4853'; -- https://www.wowhead.com/classic/npc=4853/stonevault-geomancer
UPDATE `creature_template` SET `CharmedSpellList`='701205', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='7012'; -- https://www.wowhead.com/classic/npc=7012/earthen-sculptor
UPDATE `creature_template` SET `CharmedSpellList`='701105', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='7011'; -- https://www.wowhead.com/classic/npc=7011/earthen-rocksmasher
UPDATE `creature_template` SET `CharmedSpellList`='717505', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='7175'; -- https://www.wowhead.com/classic/npc=7175/stonevault-ambusher
UPDATE `creature_template` SET `CharmedSpellList`='485005', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='4850'; -- https://www.wowhead.com/classic/npc=4850/stonevault-cave-lurker
UPDATE `creature_template` SET `SpellList` = 485201, `CharmedSpellList`='485205', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='4852'; -- https://www.wowhead.com/classic/npc=4852/stonevault-oracle
UPDATE `creature_template` SET `CharmedSpellList`='484705', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='4847'; -- https://www.wowhead.com/classic/npc=4847/shadowforge-relic-hunter
UPDATE `creature_template` SET `CharmedSpellList`='730905', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='7309'; -- https://www.wowhead.com/classic/npc=7309/earthen-custodian
UPDATE `creature_template` SET `SpellList` = 485401, `CharmedSpellList`='485405', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='4854'; -- https://www.wowhead.com/classic/npc=4854/grimlok
-- UPDATE `creature_template` SET `CharmedSpellList`='2483005', `MechanicImmuneMask` = `MechanicImmuneMask`&~1 WHERE `entry`='24830'; -- https://www.wowhead.com/tbc/npc=24830/stonevault-pillager - tbc+

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (707605,707705,739705,739605,732005,732105,484905,703005,484805,729005,485505,485305,701205,701105,717505,485005,485205,2483005,484705,730905,485405,485201,485401);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(707605, 'Vanilla - Earthen Guardian', 0, 0),
(707705, 'Vanilla - Earthen Hallshaper', 0, 0),
(739705, 'Vanilla - Earthen Stonecarver', 0, 0),
(739605, 'Vanilla - Earthen Stonebreaker', 0, 0),
(732005, 'Vanilla - Stonevault Mauler', 0, 0),
(732105, 'Vanilla - Stonevault Flameweaver', 0, 0),
(484905, 'Vanilla - Shadowforge Archaeologist', 0, 0),
(703005, 'Vanilla - Shadowforge Geologist', 0, 0),
(484805, 'Vanilla - Shadowforge Darkcaster', 0, 0),
(729005, 'Vanilla - Shadowforge Sharpshooter', 0, 0),
(485505, 'Vanilla - Stonevault Brawler', 0, 0),
(485305, 'Vanilla - Stonevault Geomancer', 0, 0),
(701205, 'Vanilla - Earthen Sculptor', 0, 0),
(701105, 'Vanilla - Earthen Rocksmasher', 0, 0),
(717505, 'Vanilla - Stonevault Ambusher', 0, 0),
(485005, 'Vanilla - Stonevault Cave Lurker', 0, 0),
(485205, 'Vanilla - Stonevault Oracle', 0, 0),
(484705, 'Vanilla - Shadowforge Relic Hunter', 0, 0),
(730905, 'Vanilla - Earthen Custodian', 0, 0),
(485405, 'Vanilla - Grimlok', 0, 0),
(485401, 'Uldaman - Grimlok', 50, 75),
(485201, 'Uldaman - Stonevault Oracle', 75, 0);
-- (2483005, 'Vanilla - Stonevault Pillager', 0, 0), -- tbc+

DELETE FROM `creature_spell_list` WHERE `Id` IN (707605,707705,739705,739605,732005,732105,484905,703005,484805,729005,485505,485305,701205,701105,717505,485005,485205,2483005,484705,730905,485405,485201,485401);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
-- CharmedSpellList
(707605, 4, 17207, 0, -1, 0, 0, 100, 1, 0, 0, 15284, 19265, 'Earthen Guardian - Whirlwind'),
(707605, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Earthen Guardian - Attack'),
(707705, 3, 10260, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Earthen Hallshaper - Reconstruct'),
(707705, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Earthen Hallshaper - Attack'),
(739705, 4, 2602, 0, -1, 0, 0, 100, 1, 0, 0, 18855, 18855, 'Earthen Stonecarver - Fire Shield IV'),
(739705, 3, 10452, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Earthen Stonecarver - Flame Buffet'),
(739705, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Earthen Stonecarver - Attack'),
(739605, 3, 12057, 0, -1, 0, 0, 100, 1, 0, 0, 7327, 7327, 'Earthen Stonebreaker - Strike'),
(739605, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Earthen Stonebreaker - Attack'),
(732005, 3, 3391, 0, -1, 0, 0, 100, 1, 0, 0, 5555, 6108, 'Stonevault Mauler - Thrash'),
(732005, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Stonevault Mauler - Attack'),
(732105, 3, 7739, 0, -1, 0, 0, 100, 1, 0, 0, 17895, 29678, 'Stonevault Flameweaver - Inferno Shell'), -- Immolate missing?
(732105, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Stonevault Flameweaver - Attack'),
(484905, 4, 6713, 0, -1, 0, 0, 100, 1, 0, 0, 25037, 32897, 'Shadowforge Archaeologist - Disarm'),
(484905, 3, 11972, 0, -1, 0, 0, 100, 1, 0, 0, 5231, 9949, 'Shadowforge Archaeologist - Shield Bash'),
(484905, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Shadowforge Archaeologist - Attack'),
(703005, 4, 3356, 0, -1, 0, 0, 100, 1, 0, 0, 15117, 19824, 'Shadowforge Geologist - Flame Lash'),
(703005, 3, 8814, 0, -1, 0, 0, 100, 1, 0, 0, 32371, 38626, 'Shadowforge Geologist - Flame Spike'),
(703005, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Shadowforge Geologist - Attack'),
(484805, 4, 15800, 0, -1, 0, 0, 100, 1, 0, 0, 3000, 18548, 'Shadowforge Darkcaster - Mana Burn'),
(484805, 3, 9081, 0, -1, 0, 0, 100, 1, 0, 0, 3000, 7993, 'Shadowforge Darkcaster - Shadow Bolt Volley'),
(484805, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Shadowforge Darkcaster - Attack'),
(729005, 4, 6685, 0, -1, 0, 0, 100, 1, 0, 0, 16081, 23303, 'Shadowforge Sharpshooter - Piercing Shot'),
(729005, 3, 6660, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Shadowforge Sharpshooter - Shoot'),
(729005, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Shadowforge Sharpshooter - Attack'),
(485505, 3, 3391, 0, -1, 0, 0, 100, 1, 0, 0, 10155, 14989, 'Stonevault Brawler - Thrash'),
(485505, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Stonevault Brawler - Attack'),
(485305, 4, 10452, 0, -1, 0, 0, 100, 1, 0, 0, 15821, 19562, 'Stonevault Geomancer - Flame Buffet'),
(485305, 3, 9053, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Stonevault Geomancer - Fireball'),
(485305, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Stonevault Geomancer - Attack'),
(701205, 4, 2602, 0, -1, 0, 0, 100, 1, 0, 0, 16055, 19965, 'Earthen Sculptor - Fire Shield IV'),
(701205, 3, 10452, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Earthen Sculptor - Flame Buffet'),
(701205, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Earthen Sculptor - Attack'),
(701105, 3, 12057, 0, -1, 0, 0, 100, 1, 0, 0, 5466, 8844, 'Earthen Rocksmasher - Strike'),
(701105, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Earthen Rocksmasher - Attack'),
(717505, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Stonevault Ambusher - Attack'),
(485005, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Stonevault Cave Lurker - Attack'),
(485205, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Stonevault Oracle - Attack'),
(484705, 5, 6726, 0, -1, 0, 0, 100, 1, 0, 0, 16000, 24000, 'Shadowforge Relic Hunter - Silence'), -- video
(484705, 4, 2767, 0, -1, 0, 0, 100, 1, 0, 0, 16000, 29000, 'Shadowforge Relic Hunter - Shadow Word: Pain (Rank 5)'), -- video
(484705, 3, 6064, 0, -1, 0, 0, 100, 1, 0, 0, 10000, 10000, 'Shadowforge Relic Hunter - Heal (Rank 4)'), -- video
(484705, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Shadowforge Relic Hunter - Attack'), -- video
(730905, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Earthen Custodian - Attack'), -- video
(485405, 6, 11892, 0, -1, 0, 0, 100, 1, 0, 0, 10000, 28000, 'Grimlok - Shrink'), -- video
(485405, 5, 6742, 0, -1, 0, 0, 100, 1, 0, 0, 10000, 15000, 'Grimlok - Bloodlust'), -- video
(485405, 4, 9532, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Grimlok - Lightning Bolt'), -- video
(485405, 3, 8292, 0, -1, 0, 0, 100, 1, 0, 0, 7000, 10000, 'Grimlok - Chain Bolt'), -- video
(485405, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Grimlok - Attack'), -- video
-- (2483005, 0, 2, 0, -1, 0, 0, 100, 1, 0, 0, 0, 0, 'Stonevault Pillager - Attack'), -- tbc+
-- SpellList
-- ('485207','4852','14','0','100','1025','1600','40','14400','14400','0','0','11','8005','12','0','0','0','0','0','0','0','0','0','Stonevault Oracle - Cast Healing Wave at 50% HP'),
(485201, 3, 8005, 0, -1, 201, 0, 100, 1, 0, 20000, 10000, 30000, 'Stonevault Oracle - Healing Wave - Missing 50% including self'),
-- ('485403','4854','25','0','100','1025','4863','3000','5000','0','0','0','11','6742','0','33','0','0','0','0','0','0','0','0','Grimlock - Cast Bloodlust on Jadespine Basilisk Death'),
-- ('485404','4854','0','0','100','1025','18900','24700','25300','34900','0','0','11','11892','4','32','0','0','0','0','0','0','0','0','Grimlock - Cast Shrink'),
-- ('485405','4854','0','0','100','1024','5000','7000','0','0','0','0','11','8143','0','0','0','0','0','0','0','0','0','0','Grimlock - Cast Summon Tremor Totem'),
-- ('485406','4854','0','0','100','1025','4400','10900','9600','15700','0','0','11','8292','4','512','0','0','0','0','0','0','0','0','Grimlock - Cast Chain Bolt'),
-- ('485407','4854','9','0','100','1025','0','40','3600','4800','0','0','11','9532','1','256','0','0','0','0','0','0','0','0','Grimlock - Cast Lightning Bolt'),
(485401, 6, 11892, 0, -1, 103, 0, 100, 4, 20000, 30000, 120000, 120000, 'Grimlok - Shrink - AOE eligible target exists - not passed to cast'),
(485401, 5, 6742, 0, -1, 5, 0, 100, 3, 5000, 15000, 15000, 30000, 'Grimlok - Bloodlust - eligible friendly missing buff'),
(485401, 4, 9532, 2, -1, 1, 0, 100, 1, 0, 0, 0, 0, 'Grimlok - Lightning Bolt - current'),
(485401, 3, 8292, 0, -1, 1, 0, 100, 2, 5000, 20000, 10000, 30000, 'Grimlok - Chain Bolt - current');

UPDATE `creature_template` SET `UnitFlags` = 33554432, `ExtraFlags` = `ExtraFlags`|524288 WHERE `entry` = 7226; -- Sand Storm

