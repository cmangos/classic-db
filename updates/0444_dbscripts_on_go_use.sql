-- Fixed holiday teleports of Lunar Festival not working. This closes #291

-- Fixed class and spell charge of item 21711 (Lunar Invitation) which was previously a consumable
-- while it is in fact an holiday item that should not disappear when used
UPDATE `item_template` SET `class` = 15, `subclass` = 3, `spellcharges_1` = 0 WHERE `entry` = 21711; 

-- Fixed Lunar Invitation teleport not working (to Moonglade and back to majors cities)
SET @TO_SW := 121699;
SET @TO_IF := 121700;
SET @TO_DA := 121701;
SET @TO_OR := 121702;
SET @TO_UC := 121703;
SET @TO_TB := 121704;
SET @FROM_SW := 121705;
SET @FROM_IF := 121706;
SET @FROM_DA := 121707;
SET @FROM_OR := 121708;
SET @FROM_UC := 121709;
SET @FROM_TB := 121710;

-- Added missing spell focuses GO for spell 26373 (Lunar Invitation)
DELETE FROM `gameobject` WHERE `guid` IN (@FROM_SW, @TO_SW, @FROM_IF, @TO_IF, @FROM_DA, @TO_DA, @FROM_OR, @TO_OR, @FROM_UC, @TO_UC, @FROM_TB, @TO_TB) OR `id` = 300058;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@TO_TB, 300058, 1, -1031.45, -230.867, 160.14, 3.28358, 0, 0, 0.997481, -0.0709363, 25, 100, 1),
(@TO_UC, 300058, 0, 1642.01, 239.002, 62.5918, 3.02316, 0, 0, 0.998247, 0.0591816, 25, 100, 1),
(@TO_OR, 300058, 1, 1982.9, -4255.62, 31.6692, 3.31984, 0, 0, 0.996031, -0.0890062, 25, 100, 1),
(@TO_DA, 300058, 1, 10150.1, 2602, 1330.83, 4.80894, 0, 0, 0.672159, -0.740407, 25, 100, 1),
(@TO_IF, 300058, 0, -4663, -955.663, 500.377, 0.722862, 0, 0, 0.353613, 0.935392, 25, 100, 1),
(@TO_SW, 300058, 0, -8748.48, 1073.61, 90.4898, 5.03789, 0, 0, 0.583186, -0.812338, 25, 100, 1),
(@FROM_TB, 300058, 1, 7603.94, -2211.17, 471.606, 3.78647, 0, 0, 0.948466, -0.316878, 25, 100, 1),
(@FROM_UC, 300058, 1, 7575.26, -2238.68, 469.858, 1.03679, 0, 0, 0.495486, 0.868616, 25, 100, 1),
(@FROM_OR, 300058, 1, 7595.67, -2246.32, 466.965, 1.30382, 0, 0, 0.606707, 0.794925, 25, 100, 1),
(@FROM_DA, 300058, 1, 7610.97, -2228.92, 468.71, 2.96651, 0, 0, 0.996171, 0.0874282, 25, 100, 1),
(@FROM_IF, 300058, 1, 7570.31, -2220.8, 473.445, 0.357419, 0, 0, 0.17776, 0.984074, 25, 100, 1),
(@FROM_SW, 300058, 1, 7585.47, -2205.31, 475.281, 4.91744, 0, 0, 0.631024, -0.775763, 25, 100, 1);

-- Added target position to each teleport spell in Lunar Festival
DELETE FROM `spell_target_position` WHERE `id` IN (26448, 26454, 26452, 26450, 26453, 26456, 26455);
INSERT INTO `spell_target_position` VALUES
(26448, 1, 7571.95, -2202.04, 474.86, 5.4358),  -- To Moonglade
(26454, 0, -8748.48, 1073.61, 90.4898, 5.03789),  -- To Stormwind
(26452, 0, -4663, -955.663, 500.377, 0.722862),  -- To Ironforge
(26450, 1, 10150.1, 2602, 1330.83, 4.80894),  -- To Darnassus
(26453, 1, 1982.9, -4255.62, 31.6692, 3.31984),  -- To Orgrimmar
(26456, 0, 1642.01, 239.002, 62.5918, 3.02316),  -- To Undercity
(26455, 1, -1031.45, -230.867, 160.14, 3.28358);  -- To Thunderbluff

-- Added script to cast teleport spell on players
-- All teleports are handled by the same script triggerd by gameobject 300058 which is target by Lunar Invitation' spell
-- Selection of which teleports will be used is done by the nearby NPC (buddies) which are different for each teleport zone
DELETE FROM `dbscripts_on_go_template_use` WHERE `id` = 300058;
INSERT INTO `dbscripts_on_go_template_use` VALUES
(300058, 0, 15, 26448, 0, 15892, 7, 3, 0, 0, 0, 0, 0, 0, 0, 0, 'Lunar Festival - Teleports Moonglade - Alliance'),
(300058, 0, 15, 26448, 0, 15891, 7, 3, 0, 0, 0, 0, 0, 0, 0, 0, 'Lunar Festival - Teleports Moonglade - Horde'),
(300058, 0, 15, 26454, 0, 15694, 7, 5, 0, 0, 0, 0, 0, 0, 0, 0, 'Lunar Festival - Teleports Storwimnd'),
(300058, 0, 15, 26452, 0, 15906, 7, 5, 0, 0, 0, 0, 0, 0, 0, 0, 'Lunar Festival - Teleports Ironforge'),
(300058, 0, 15, 26450, 0, 15905, 7, 5, 0, 0, 0, 0, 0, 0, 0, 0, 'Lunar Festival - Teleports Darnassus'),
(300058, 0, 15, 26453, 0, 15908, 7, 5, 0, 0, 0, 0, 0, 0, 0, 0, 'Lunar Festival - Teleports Orgrimmar'),
(300058, 0, 15, 26456, 0, 15907, 7, 5, 0, 0, 0, 0, 0, 0, 0, 0, 'Lunar Festival - Teleports Undercity'),
(300058, 0, 15, 26455, 0, 15719, 7, 5, 0, 0, 0, 0, 0, 0, 0, 0, 'Lunar Festival - Teleports Thunderbluff');

-- Added script target for Lunar Invitation spell to trigger teleport script
DELETE FROM `spell_script_target` WHERE `entry` = 26373;
INSERT INTO `spell_script_target` VALUES
(26373, 0, 300058, 0);
