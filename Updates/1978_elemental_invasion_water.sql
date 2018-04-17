-- ----------------------------------------
-- Elemental Invasion: Water
-- ----------------------------------------

-- Spawn positions from YTDB

DELETE FROM game_event WHERE entry=38;
INSERT INTO game_event VALUES
(38, '2006-01-03 00:00:00', '2030-12-31 23:59:00', 4320, 2160, 0, 0, 'Elemental Invasion: Air');

-- ----------------------------------------
-- Elemental Rift from which the NPCs spawn
-- ----------------------------------------

SET @GUID := 54966;

DELETE FROM gameobject WHERE guid BETWEEN @GUID + 1 AND @GUID + 5;
INSERT INTO gameobject VALUES
(@GUID + 1, 179665, 1, 6601.08, -4167.38, 658.598, -1.0472, 0, 0, -0.500001, 0.866025, 300, 300, 0, 1),      -- Water Elemental Rifts
(@GUID + 2, 179665, 1, 6498.69, -4173.11, 658.959, 2.32129, 0, 0, 0.91706, 0.398748, 300, 300, 0, 1),
(@GUID + 3, 179665, 1, 6541.6, -4061.05, 658.296, -3.05433, 0, 0, -0.999048, 0.0436174, 300, 300, 0, 1),
(@GUID + 4, 179665, 1, 6466.32, -4035.07, 658.459, 2.23402, 0, 0, 0.898794, 0.438372, 300, 300, 0, 1),
(@GUID + 5, 179665, 1, 6517.87, -3983.42, 658.337, -0.244346, 0, 0, -0.121869, 0.992546, 300, 300, 0, 1);

DELETE FROM game_event_gameobject WHERE guid BETWEEN @GUID + 1 AND @GUID + 5;
INSERT INTO game_event_gameobject VALUES
(@GUID + 1, 38),
(@GUID + 2, 38),
(@GUID + 3, 38),
(@GUID + 4, 38),
(@GUID + 5, 38);

-- ----------------------------------------
-- Water elemental NPCs
-- ----------------------------------------

-- Stat updates
UPDATE creature_template SET Scale=3, SpeedWalk=1, HealthMultiplier=5, DamageMultiplier=7.5, ArmorMultiplier=1, MinLevelHealth=15260, MaxLevelHealth=15260, MinMeleeDmg=104, MaxMeleeDmg=138, MinRangedDmg=72, MaxRangedDmg=106, MeleeAttackPower=252, RangedAttackPower=26, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=14457;
UPDATE creature_template SET MovementType=1, ArmorMultiplier=1, MinLevelHealth=2699, MaxLevelHealth=2871, MinMeleeDmg=96, MaxMeleeDmg=132, MinRangedDmg=69, MaxRangedDmg=101, MeleeAttackPower=242, RangedAttackPower=25, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=14458;

-- Actual spawns
SET @GUID := 100177;

DELETE FROM game_event_creature WHERE guid BETWEEN @GUID + 1 AND @GUID + 4;
INSERT INTO game_event_creature VALUES
(@GUID + 1, 38),
(@GUID + 2, 38),
(@GUID + 3, 38),
(@GUID + 4, 38);

DELETE FROM creature_linking WHERE master_guid=@GUID + 1;
INSERT INTO creature_linking VALUES
(@GUID + 2, @GUID + 1, 519),
(@GUID + 3, @GUID + 1, 519),
(@GUID + 4, @GUID + 1, 519);

DELETE FROM creature WHERE guid BETWEEN @GUID + 1 AND @GUID + 4;
INSERT INTO creature VALUES
(@GUID + 1, 14457, 1, 0, 0, 6565.35, -4219, 658.379, 2.541548, 60*60*24*1.5, 60*60*24*1.5, 0, 0, 15260, 0, 0, 2),
(@GUID + 2, 14458, 1, 0, 0, 6575.15, -4225.95, 658.283, 2.6083, 60*60*24*1.5, 60*60*24*1.5, 0, 0, 2699, 0, 0, 0),
(@GUID + 3, 14458, 1, 0, 0, 6576.6, -4216.88, 658.285, 2.6083, 60*60*24*1.5, 60*60*24*1.5, 0, 0, 2784, 0, 0, 0),
(@GUID + 4, 14458, 1, 0, 0, 6568.44, -4230.69, 658.285, 2.6083, 60*60*24*1.5, 60*60*24*1.5, 0, 0, 2871, 0, 0, 0);

-- Path for Princess Tempestria (guess work based on NPCs spawn points and data from wowhead and the like)
DELETE FROM creature_movement_template WHERE entry=14457;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,orientation) VALUES
(14457, 1, 6565.350098,-4219.000000,658.379028, 2.541548),
(14457, 2, 6547.813965,-4207.000977,658.671082, 2.541548),
(14457, 3, 6527.006348,-4195.318359,658.458435, 2.579248),
(14457, 4, 6509.206055,-4171.577637,658.711670, 2.088374),
(14457, 5, 6494.264648,-4145.031250,658.623840, 1.904590),
(14457, 6, 6484.336426,-4098.645020,658.368408, 1.758506),
(14457, 7, 6475.364746,-4075.842285,658.553101, 1.977633),
(14457, 8, 6481.050293,-4039.482178,658.700378, 1.424712),
(14457, 9, 6485.882813,-4002.781494,658.292114, 1.460055),
(14457, 10, 6490.167480,-3979.682861,658.629089, 1.092489),
(14457, 11, 6503.439941,-3968.671387,658.788391, 0.415475),
(14457, 12, 6532.541016,-3955.171387,658.294434, 6.254910),
(14457, 13, 6540.777344,-3969.717529,658.471191, 5.227609),
(14457, 14, 6547.805664,-4007.606689,658.645081, 4.936226),
(14457, 15, 6562.754395,-4055.379639,658.293335, 4.900883),
(14457, 16, 6581.524414,-4093.703613,658.376465, 5.228394),
(14457, 17, 6603.666992,-4132.737305,658.429504, 5.030474),
(14457, 18, 6609.816406,-4170.343262,658.492920, 4.589079),
(14457, 19, 6600.821289,-4196.896484,658.450012, 4.183814),
(14457, 20, 6586.102051,-4216.465332,658.293396, 3.705506);

-- Stats clean-up of spawned NPCs
UPDATE creature, creature_template SET creature.curhealth=creature_template.MinLevelHealth, creature.curmana=creature_template.MinLevelMana WHERE creature.id=creature_template.Entry AND RegenerateStats&1;