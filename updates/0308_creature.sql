-- Added missing critters in Blackrock Spire
-- Thanks to Schmoozerd and UDB team for providing the data

-- Fixed some stats value (data from UDB):
UPDATE `creature_template` SET `minhealth`= 1, `maxhealth` = 1, `armor` = 7 WHERE `entry` = 2110;
UPDATE `creature_template` SET `minhealth`= 8, `maxhealth` = 8, `armor` = 7 WHERE `entry` = 4076;

-- Starting value for adding guid
SET @GUID := 160015;

-- Added missing creature 2110 (Black rat) in Blackrock Spire
DELETE FROM `creature` WHERE (`id` = 2110 AND `map` = 229) OR (`guid` BETWEEN @GUID AND @GUID + 9); 
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@GUID + 1, 2110, 229, 57.87804, -423.529, 44.18297, 2.716429, 120, 5, 1),
(@GUID + 2, 2110, 229, 94.90471, -368.9881, 117.5154, 0.482208, 120, 5, 1),
(@GUID + 3, 2110, 229, 149.3026, -262.1802, 110.9015, 1.944676, 120, 5, 1),
(@GUID + 4, 2110, 229, 37.08282, -394.0792, 48.6343, 3.631807, 120, 5, 1),
(@GUID + 5, 2110, 229, 34.07501, -374.5409, 48.65482, 0.2464215, 120, 5, 1),
(@GUID + 6, 2110, 229, -31.47034, -373.2695, 49.60873, 0.3181981, 120, 5, 1),
(@GUID + 7, 2110, 229, -55.02018, -326.9198, 70.94196, 1.630944, 120, 5, 1),
(@GUID + 8, 2110, 229, 4.956253, -296.3802, 110.945, 5.842446, 120, 5, 1),
(@GUID + 9, 2110, 229, -13.49756, -342.7099, 110.941, 2.831304, 120, 5, 1);

-- Added missing creature 4076 (Roach) from Blackrock Spire
DELETE FROM `creature` WHERE (`id` = 4076 AND `map` = 229) OR (`guid` BETWEEN @GUID +10 AND @GUID + 21);
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`, `curhealth`) VALUES
(@GUID + 10, 4076, 229, 139.9541, -340.7367, 110.9609, 0.8688918, 120, 5, 1, 8),
(@GUID + 11, 4076, 229, 17.79027, -326.4926, 110.9429, 3.700024, 120, 5, 1, 8),
(@GUID + 12, 4076, 229, 168.071, -424.0941, 110.4723, 3.03863, 120, 5, 1, 8),
(@GUID + 13, 4076, 229, 72.36562, -408.3839, 64.43105, 5.585053, 120, 5, 1, 8),
(@GUID + 14, 4076, 229, 148.7463, -321.8607, 110.9402, 1.586552, 120, 5, 1, 8),
(@GUID + 15, 4076, 229, 155.7934, -301.3404, 110.6554, 0.1693714, 120, 5, 1, 8),
(@GUID + 16, 4076, 229, 81.04874, -363.0222, 116.8424, 2.214636, 120, 5, 1, 8),
(@GUID + 17, 4076, 229, 8.892742, -264.8804, 110.9434, 3.528604, 120, 5, 1, 8),
(@GUID + 18, 4076, 229, 28.61547, -291.0789, 110.943, 2.378498, 120, 5, 1, 8),
(@GUID + 19, 4076, 229, -0.1538349, -260.8282, 110.9434, 3.360135, 120, 5, 1, 8),
(@GUID + 20, 4076, 229, 135.8507, -414.1771, 110.4723, 6.221058, 120, 5, 1, 8),
(@GUID + 21, 4076, 229, -16.09308, -392.4038, 48.51566, 1.319288, 120, 5, 1, 8);
