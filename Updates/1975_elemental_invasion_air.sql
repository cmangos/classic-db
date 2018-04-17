-- ----------------------------------------
-- Elemental Invasion: Air
-- ----------------------------------------

-- Spawn positions from YTDB

DELETE FROM game_event WHERE entry=11;
INSERT INTO game_event VALUES
(11, '2006-01-02 00:00:00', '2030-12-31 23:59:00', 4320, 2160, 0, 0, 'Elemental Invasion: Air');

-- ----------------------------------------
-- Elemental Rift from which the NPCs spawn
-- ----------------------------------------

SET @GUID := 54955;

DELETE FROM gameobject WHERE guid BETWEEN @GUID + 1 AND @GUID + 6;
INSERT INTO gameobject VALUES
(@GUID + 1, 179667, 1, -6566.5, 1800.88, 3.25358, -1.98968, 0, 0, -0.838672, 0.544637, 300, 300, 0, 1),     -- Air Elemental Rifts
(@GUID + 2, 179667, 1, -6566.51, 1933.53, 6.48758, -1.16937, 0, 0, -0.551937, 0.833886, 300, 300, 0, 1),
(@GUID + 3, 179667, 1, -6465.79, 1866.83, 3.8172, 3.14159, 0, 0, 0, 0.00000126759, 300, 300, 0, 1),
(@GUID + 4, 179667, 1, -6368.79, 1433.82, 4.54176, -0.558505, 0, 0, -0.275637, 0.961262, 300, 300, 0, 1),
(@GUID + 5, 179667, 1, -6449.7, 1451.1, -1.33023, -0.523599, 0, 0, -0.258819, 0.965926, 300, 300, 0, 1),
(@GUID + 6, 179667, 1, -6567.16, 1500.09, 3.49323, -0.226893, 0, 0, -0.113203, 0.993572, 300, 300, 0, 1);

DELETE FROM game_event_gameobject WHERE guid BETWEEN @GUID + 1 AND @GUID + 6;
INSERT INTO game_event_gameobject VALUES
(@GUID + 1, 11),
(@GUID + 2, 11),
(@GUID + 3, 11),
(@GUID + 4, 11),
(@GUID + 5, 11),
(@GUID + 6, 11);

-- ----------------------------------------
-- Air elemental NPCs
-- ----------------------------------------

-- Stat updates
UPDATE creature_template SET Scale=3, SpeedWalk=1, HealthMultiplier=5, DamageMultiplier=7.5, ArmorMultiplier=1, MinLevelHealth=15260, MaxLevelHealth=15260, MinMeleeDmg=104, MaxMeleeDmg=138, MinRangedDmg=72, MaxRangedDmg=106, MeleeAttackPower=252, RangedAttackPower=26, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=14454;
UPDATE creature_template SET MovementType=1, ArmorMultiplier=1, MinLevelHealth=2784, MaxLevelHealth=2871, MinMeleeDmg=98, MaxMeleeDmg=132, MinRangedDmg=69, MaxRangedDmg=101, MeleeAttackPower=242, RangedAttackPower=25, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=14455;

-- Actual spawns
SET @GUID := 100173;

DELETE FROM game_event_creature WHERE guid BETWEEN @GUID + 1 AND @GUID + 4;
INSERT INTO game_event_creature VALUES
(@GUID + 1, 11),
(@GUID + 2, 11),
(@GUID + 3, 11),
(@GUID + 4, 11);

DELETE FROM creature_linking WHERE master_guid=@GUID + 1;
INSERT INTO creature_linking VALUES
(@GUID + 2, @GUID + 1, 519),
(@GUID + 3, @GUID + 1, 519),
(@GUID + 4, @GUID + 1, 519);

DELETE FROM creature WHERE guid BETWEEN @GUID + 1 AND @GUID + 4;
INSERT INTO creature VALUES
(@GUID + 1, 14454, 1, 0, 0, -6582, 1539.14, 2.156, 4.863974, 60*60*24*1.5, 60*60*24*1.5, 25, 0, 15772, 0, 0, 2),
(@GUID + 2, 14455, 1, 0, 0, -6582.85, 1548.14, 1.25125, 4.82942, 60*60*24*1.5, 60*60*24*1.5, 0, 0, 2871, 0, 0, 0),
(@GUID + 3, 14455, 1, 0, 0, -6590.99, 1545.18, 3.15098, 4.68177, 60*60*24*1.5, 60*60*24*1.5, 0, 0, 2784, 0, 0, 0),
(@GUID + 4, 14455, 1, 0, 0, -6573.75, 1544.65, -0.824519, 4.68177, 60*60*24*1.5, 60*60*24*1.5, 0, 0, 2871, 0, 0, 0);

-- Path for the Windreaver (guess work based on NPCs spawn points and data from wowhead and the like)
DELETE FROM creature_movement_template WHERE entry=14454;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,orientation) VALUES
(14454, 1, -6582.000000,1539.140015,2.156000, 4.863974),
(14454, 2, -6578.166504,1497.156250,2.596157, 4.839627),
(14454, 3, -6572.623535,1448.463257,2.155059, 4.933873),
(14454, 4, -6550.939453,1405.295288,1.666271, 5.339139),
(14454, 5, -6520.513184,1392.699097,0.908437, 0.036131),
(14454, 6, -6480.721680,1395.414307,1.543170, 0.182215),
(14454, 7, -6447.951660,1421.173584,0.457233, 0.685655),
(14454, 8, -6414.501465,1434.034790,-1.352370, 5.922689),
(14454, 9, -6396.378418,1408.672729,2.220033, 5.724769),
(14454, 10, -6344.778809,1377.015625,3.195111, 5.687070),
(14454, 11, -6267.112793,1352.111328,14.872219, 1.156894),
(14454, 12, -6276.986816,1387.044678,9.682770, 1.816629),
(14454, 13, -6294.281738,1462.260132,7.302214, 1.896742),
(14454, 14, -6308.727539,1485.651611,4.465050, 2.598889),
(14454, 15, -6363.699219,1500.273804,6.330966, 3.147882),
(14454, 16, -6483.155273,1506.292603,6.231073, 3.037141),
(14454, 17, -6531.304199,1509.021118,1.616624, 3.037141),
(14454, 18, -6582.020508,1538.964111,2.258336, 1.687041),
(14454, 19, -6586.162109,1624.377075,6.547758, 1.782859),
(14454, 20, -6594.405762,1686.145386,3.530135, 1.674474),
(14454, 21, -6559.020020,1775.493652,3.315219, 0.929917),
(14454, 22, -6495.738770,1816.273560,3.381564, 0.451609),
(14454, 23, -6451.041504,1844.062988,5.967098, 1.505614),
(14454, 24, -6486.679688,1902.856689,4.194040, 2.535271),
(14454, 25, -6530.594727,1927.856323,6.388438, 2.535271),
(14454, 26, -6572.633789,1947.556274,7.787728, 3.232705),
(14454, 27, -6594.371582,1932.892090,6.533057, 3.967838),
(14454, 28, -6626.835449,1903.460083,3.856533, 4.040880),
(14454, 29, -6629.744141,1866.270142,3.808090, 4.666057),
(14454, 30, -6651.972168,1809.468018,2.869080, 4.474420),
(14454, 31, -6626.517090,1757.609131,2.687378, 4.474420),
(14454, 32, -6604.960449,1709.130371,4.688780, 4.977076),
(14454, 33, -6605.003418,1662.145264,3.532203, 4.903248),
(14454, 34, -6580.591797,1583.734985,3.186197, 4.812136);

-- Stats clean-up of spawned NPCs
UPDATE creature, creature_template SET creature.curhealth=creature_template.MinLevelHealth, creature.curmana=creature_template.MinLevelMana WHERE creature.id=creature_template.Entry AND RegenerateStats&1;