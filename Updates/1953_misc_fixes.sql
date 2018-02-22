-- ----------
-- 02/09/2018
-- ----------

-- these items from vendors should be sold in limited supply

-- Ulthir <Alchemy Supplies>
-- Recipe: Free Action Potion, Recipe: Great Rage Potion, Recipe: Superior Mana Potion
UPDATE npc_vendor SET incrtime=3600, maxcount=1 WHERE entry=4226 AND item IN (5642,5643,13477);

-- Soolie Berryfizz <Alchemy Supplies>
UPDATE npc_vendor SET incrtime=3600, maxcount=1 WHERE entry=5178 AND item IN (5642); -- Recipe: Free Action Potion
UPDATE npc_vendor SET incrtime=7200, maxcount=1 WHERE entry=5178 AND item IN (13478); -- Recipe: Elixir of Superior Defense

-- Kor'geld <Alchemy Supplies>
UPDATE npc_vendor SET incrtime=3600, maxcount=1 WHERE entry=3348 AND item IN (5642); -- Recipe: Free Action Potion

-- ----------
-- 02/14/2018
-- ----------

-- Pathing for Heartrazor (5934)
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-5183.809,`position_y`=-1170.219,`position_z`=45.11078 WHERE `id`=5934;
UPDATE `creature_template` SET `MovementType`=2 WHERE `entry`=5934;
DELETE FROM `creature_movement_template` WHERE `entry`=5934;
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`orientation`) VALUES
(5934,0,1,-5183.809,-1170.219,45.11078,0,100),
(5934,0,2,-5181.056,-1184.849,45.97993,0,100),
(5934,0,3,-5169.914,-1200.506,47.15270,0,100),
(5934,0,4,-5159.998,-1216.499,48.38121,0,100),
(5934,0,5,-5173.076,-1229.047,49.04836,0,100),
(5934,0,6,-5194.938,-1230.641,48.47133,0,100),
(5934,0,7,-5207.135,-1229.340,47.92607,0,100),
(5934,0,8,-5215.482,-1216.020,46.70019,0,100),
(5934,0,9,-5207.343,-1200.787,46.16835,0,100),
(5934,0,10,-5184.156,-1170.526,45.12170,0,100),
(5934,0,11,-5183.285,-1153.094,44.87883,0,100),
(5934,0,12,-5183.285,-1153.094,44.87883,0,100),
(5934,0,13,-5177.142,-1130.755,43.77563,0,100),
(5934,0,14,-5164.937,-1121.575,43.77023,0,100),
(5934,0,15,-5145.432,-1115.095,43.74949,0,100),
(5934,0,16,-5138.181,-1109.642,44.04351,0,100),
(5934,0,17,-5154.783,-1119.312,43.67305,0,100),
(5934,0,18,-5176.401,-1127.441,43.71729,0,100),
(5934,0,19,-5183.811,-1149.325,44.34430,0,100);