-- Updated some rare NPCs in the Western and Eastern Plaguelands: stats, waypoints and/or spawn points
UPDATE creature_template SET SpeedWalk=1.1, MeleeAttackPower=110, RangedAttackPower=25, MinMeleeDmg=72, MaxMeleeDmg=100, DamageMultiplier=1.2, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000, UnitFlags=32768 WHERE Entry=10823; -- Zul'Brin Warpbranch
UPDATE creature_template SET SpeedRun=2, MeleeAttackPower=124, RangedAttackPower=12, MinMeleeDmg=51, MaxMeleeDmg=68, DamageMultiplier=1, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE Entry=2258; -- Stone Fury
UPDATE creature_template SET SpeedWalk=1.1, MeleeAttackPower=228, RangedAttackPower=23, MinMeleeDmg=94, MaxMeleeDmg=125, DamageMultiplier=1.25, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE Entry=10817; -- Duggan Wildhammer
UPDATE creature_template SET SpeedWalk=1.1, MeleeAttackPower=242, RangedAttackPower=25, MinMeleeDmg=100, MaxMeleeDmg=132, DamageMultiplier=1.2, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE Entry=1844; -- Foreman Marcrid
UPDATE creature_template SET MeleeAttackPower=258, RangedAttackPower=28, MinMeleeDmg=106, MaxMeleeDmg=140, DamageMultiplier=5.5, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE Entry=11896; -- Borelgore
UPDATE creature_template SET FactionAlliance=16, FactionHorde=16, SpeedWalk=1.1,MeleeAttackPower=252, RangedAttackPower=26, MinMeleeDmg=104, MaxMeleeDmg=138, DamageMultiplier=5, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE Entry=11897; -- Duskwing
UPDATE creature_template SET MeleeAttackPower=238, RangedAttackPower=24, MinMeleeDmg=98, MaxMeleeDmg=130, DamageMultiplier=1.25, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE Entry=10821; -- Hed'mush the Rotting


-- Waypoint movement to Stone Fury (source: PSMDB)
DELETE FROM `creature_movement_template` WHERE `entry` = 2258;
INSERT INTO `creature_movement_template` VALUES
(2258, 1, 664.315, -1027.59, 160.39, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.55749, 0, 0),
(2258, 2, 654.02, -1032.34, 163.127, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.56752, 0, 0),
(2258, 3, 634.638, -1041.36, 163.816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.42055, 0, 0),
(2258, 4, 622.304, -1055.48, 163.186, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.61123, 0, 0),
(2258, 5, 620.168, -1114.91, 160.186, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.09796, 0, 0),
(2258, 6, 627.218, -1131.61, 159.535, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.01767, 0, 0),
(2258, 7, 631.939, -1149.35, 155.421, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.67646, 0, 0),
(2258, 8, 629.934, -1192.34, 145.181, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.80191, 0, 0),
(2258, 9, 633.981, -1229.12, 136.877, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.82198, 0, 0),
(2258, 10, 634.73, -1271.43, 121.429, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.58112, 0, 0),
(2258, 11, 627.306, -1321.81, 106.197, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.56607, 0, 0),
(2258, 12, 629.422, -1375.57, 93.9589, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.12304, 0, 0),
(2258, 13, 643.925, -1408.88, 87.1831, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.42411, 0, 0),
(2258, 14, 668.443, -1437.6, 81.8552, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.85564, 0, 0),
(2258, 15, 708.689, -1455.94, 81.4619, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.1818, 0, 0),
(2258, 16, 745.689, -1459.7, 80.3421, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.1818, 0, 0),
(2258, 17, 708.769, -1455.86, 81.4599, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.67848, 0, 0),
(2258, 18, 667.903, -1437.37, 81.9153, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.28709, 0, 0),
(2258, 19, 643.733, -1408.63, 87.2146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.0362, 0, 0),
(2258, 20, 629.19, -1375.19, 94.0446, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.64982, 0, 0),
(2258, 21, 627.374, -1321.59, 106.257, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.49929, 0, 0),
(2258, 22, 634.783, -1271.27, 121.478, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.53943, 0, 0),
(2258, 23, 633.98, -1228.57, 137.007, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.58961, 0, 0),
(2258, 24, 629.947, -1191.76, 145.328, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.57957, 0, 0),
(2258, 25, 631.939, -1148.87, 155.504, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.84552, 0, 0),
(2258, 26, 627.116, -1131.07, 159.662, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.96595, 0, 0),
(2258, 27, 620.092, -1114.7, 160.189, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.53441, 0, 0),
(2258, 28, 622.218, -1054.98, 163.22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.857007, 0, 0),
(2258, 29, 634.789, -1041.15, 163.826, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.495724, 0, 0),
(2258, 30, 653.802, -1032.34, 163.225, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.420457, 0, 0);
UPDATE `creature` SET `position_x` = 664.315, `position_y` = -1027.59, `position_z` = 160.39, `MovementType` = 2 WHERE `id` = 2258;
UPDATE `creature_template` SET `MovementType` = 2 WHERE `Entry` = 2258;

-- More possible spawns for Duggan Wildhammer (source TBC-DB)
-- DELETE FROM `creature` WHERE `guid` 
INSERT INTO `creature` VALUES
(98712, 10817, 0, 0, 0, 2189.54, -3599.32, 173.598, 3.03903, 28800, 5, 0, 3398, 0, 0, 1),
(98713, 10817, 0, 0, 0, 2176.73, -3655.03, 173.374, 2.67697, 28800, 5, 0, 3398, 0, 0, 1),
(98714, 10817, 0, 0, 0, 2208.08, -2801.23, 86.7184, 3.35556, 28800, 5, 0, 3398, 0, 0, 1),
(98715, 10817, 0, 0, 0, 1931.66, -2674.2, 61.8024, 2.96914, 28800, 5, 0, 3398, 0, 0, 1),
(98716, 10817, 0, 0, 0, 1727.15, -3039.13, 76.1341, 5.21066, 28800, 5, 0, 3398, 0, 0, 1),
(98717, 10817, 0, 0, 0, 1827.76, -3271.44, 125.274, 3.4066, 28800, 5, 0, 3398, 0, 0, 1);

SET @POOL := 1216;
DELETE FROM `pool_creature_template` WHERE `id` = 10817;
INSERT INTO `pool_creature_template` VALUES
(10817, @POOL, 0, 'Duggan Wildhammer (10817)');
DELETE FROM `pool_template` WHERE `entry` = @POOL;
INSERT INTO `pool_template` VALUES (@POOL, 1, 'Duggan Wildhammer (10817)');

