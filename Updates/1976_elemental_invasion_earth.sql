-- ----------------------------------------
-- Elemental Invasion: Earth
-- ----------------------------------------

-- Spawn positions from YTDB

DELETE FROM game_event WHERE entry=39;
INSERT INTO game_event VALUES
(39, '2006-01-04 00:00:00', '2030-12-31 23:59:00', 4320, 2160, 0, 0, 'Elemental Invasion: Earth');

-- ----------------------------------------
-- Elemental Rift from which the NPCs spawn
-- ----------------------------------------

SET @GUID := 54961;

DELETE FROM gameobject WHERE guid BETWEEN @GUID + 1 AND @GUID + 5;
INSERT INTO gameobject VALUES
(@GUID + 1, 179664, 1, 4609.79, -7151.82, 115.72, -0.523599, 0, 0, -0.258819, 0.965926, 300, 300, 0, 1),     -- Earth Elemental Rifts
(@GUID + 2, 179664, 1, 4531.51, -7096.53, 102.136, -1.81514, 0, 0, -0.78801, 0.615662, 300, 300, 0, 1),
(@GUID + 3, 179664, 1, 4751.65, -7079.59, 92.7444, 2.30383, 0, 0, 0.913544, 0.406739, 300, 300, 0, 1),
(@GUID + 4, 179664, 1, 4515.68, -7416.42, 82.5434, -1.309, 0, 0, -0.608763, 0.793352, 300, 300, 0, 1),
(@GUID + 5, 179664, 1, 4553.76, -7269.88, 112.396, -2.98451, 0, 0, -0.996917, 0.0784606, 300, 300, 0, 1);

DELETE FROM game_event_gameobject WHERE guid BETWEEN @GUID + 1 AND @GUID + 5;
INSERT INTO game_event_gameobject VALUES
(@GUID + 1, 39),
(@GUID + 2, 39),
(@GUID + 3, 39),
(@GUID + 4, 39),
(@GUID + 5, 39);

-- ----------------------------------------
-- Earth elemental NPCs
-- ----------------------------------------

-- Stat updates
UPDATE creature_template SET Scale=3, SpeedWalk=1, HealthMultiplier=5, DamageMultiplier=7.5, ArmorMultiplier=1, MinLevelHealth=14355, MaxLevelHealth=14355, MinMeleeDmg=100, MaxMeleeDmg=132, MinRangedDmg=69, MaxRangedDmg=101, MeleeAttackPower=242, RangedAttackPower=25, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=14464;
UPDATE creature_template SET MovementType=1, ArmorMultiplier=1, MinLevelHealth=2614, MaxLevelHealth=2784, MinMeleeDmg=94, MaxMeleeDmg=130, MinRangedDmg=67, MaxRangedDmg=99, MeleeAttackPower=238, RangedAttackPower=24, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=14462;

-- Actual spawns
SET @GUID := 100181;

DELETE FROM game_event_creature WHERE guid BETWEEN @GUID + 1 AND @GUID + 4;
INSERT INTO game_event_creature VALUES
(@GUID + 1, 39),
(@GUID + 2, 39),
(@GUID + 3, 39),
(@GUID + 4, 39);

DELETE FROM creature_linking WHERE master_guid=@GUID + 1;
INSERT INTO creature_linking VALUES
(@GUID + 2, @GUID + 1, 519),
(@GUID + 3, @GUID + 1, 519),
(@GUID + 4, @GUID + 1, 519);

DELETE FROM creature WHERE guid BETWEEN @GUID + 1 AND @GUID + 4;
INSERT INTO creature VALUES
(@GUID + 1, 14464, 1, 0, 0, 4487.17, -7316, 93.526, 0.763415, 60*60*24*1.5, 60*60*24*1.5, 0, 0, 14881, 0, 0, 2),
(@GUID + 2, 14462, 1, 0, 0, 4475.64, -7327.93, 91.162, 0.790901, 60*60*24*1.5, 60*60*24*1.5, 0, 0, 653, 0, 0, 0),
(@GUID + 3, 14462, 1, 0, 0, 4490.45, -7329.19, 90.8456, 0.790901, 60*60*24*1.5, 60*60*24*1.5, 0, 0, 653, 0, 0, 0),
(@GUID + 4, 14462, 1, 0, 0, 4471.36, -7316.08, 93.7642, 0.790901, 60*60*24*1.5, 60*60*24*1.5, 0, 0, 696, 0, 0, 0);

-- Path for Avalanchion (guess work based on NPCs spawn points and data from wowhead and the like)
DELETE FROM creature_movement_template WHERE entry=14464;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,orientation) VALUES
(14464, 1, 4487.169922,-7316.000000,93.486267, 0.763415),
(14464, 2, 4505.838867,-7297.763184,97.046898, 1.149831),
(14464, 3, 4502.697754,-7273.690430,100.838219, 1.824488),
(14464, 4, 4490.378906,-7226.177246,98.940804, 1.824488),
(14464, 5, 4494.643066,-7182.056641,98.081261, 1.162397),
(14464, 6, 4511.169922,-7156.421875,102.484428, 0.552143),
(14464, 7, 4560.296875,-7138.317871,101.695465, 0.205782),
(14464, 8, 4611.193359,-7132.213379,105.647339, 6.281622),
(14464, 9, 4656.106445,-7110.947266,99.658882, 0.467319),
(14464, 10, 4692.354980,-7099.091309,92.807686, 6.177164),
(14464, 11, 4710.319824,-7109.073730,91.350929, 5.298303),
(14464, 12, 4736.277344,-7146.887207,84.639267, 5.478944),
(14464, 13, 4760.153809,-7177.703125,81.554192, 5.179708),
(14464, 14, 4763.191895,-7199.093262,81.736282, 4.545891),
(14464, 15, 4742.013672,-7255.250977,72.944565, 4.241941),
(14464, 16, 4722.871582,-7303.910645,65.563469, 4.548247),
(14464, 17, 4710.956543,-7369.742676,69.282990, 4.630714),
(14464, 18, 4715.278320,-7415.319336,73.163101, 4.635427),
(14464, 19, 4692.821289,-7433.530273,75.778320, 3.476179),
(14464, 20, 4658.743164,-7440.358398,80.674507, 3.308889),
(14464, 21, 4622.401367,-7441.580566,83.606850, 2.983734),
(14464, 22, 4581.860840,-7428.782715,91.079842, 2.823512),
(14464, 23, 4545.252441,-7415.076660,88.399757, 2.665647),
(14464, 24, 4527.132812,-7399.368164,86.943871, 2.215614),
(14464, 25, 4500.839355,-7364.406250,88.156158, 2.215614),
(14464, 26, 4487.357422,-7341.487793,89.020493, 1.881034);


-- Stats clean-up of spawned NPCs
UPDATE creature, creature_template SET creature.curhealth=creature_template.MinLevelHealth, creature.curmana=creature_template.MinLevelMana WHERE creature.id=creature_template.Entry AND RegenerateStats&1;