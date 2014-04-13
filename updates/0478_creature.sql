-- Anubisath Sentinel
SET @ANUB11 := 87568;
SET @ANUB12 := 87569;
SET @ANUB13 := 87570;
SET @ANUB14 := 87571;

SET @ANUB21 := 87564;
SET @ANUB22 := 87565;
SET @ANUB23 := 87566;
SET @ANUB24 := 87567;

SET @PROPHSK := 88075;

DELETE FROM `creature` WHERE `guid` IN (@ANUB11, @ANUB12, @ANUB13, @ANUB14, @ANUB21, @ANUB22, @ANUB23, @ANUB24);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
-- First pack
(@ANUB11, 15264, 531, 0, 423, -8156.13, 2119.94, 129.124, 3.6323, 1800, 0, 0, 108360, 0, 0, 0),
(@ANUB12, 15264, 531, 0, 423, -8159.63, 2144.6, 129.514, 4.15853, 1800, 0, 0, 108360, 0, 0, 0),
(@ANUB13, 15264, 531, 0, 423, -8183.32, 2165.59, 129.416, 4.62974, 1800, 0, 0, 108360, 0, 0, 0),
(@ANUB14, 15264, 531, 0, 423, -8206.04, 2164.37, 129.378, 4.97138, 1800, 0, 0, 108360, 0, 0, 0),
-- Second pack
(@ANUB21, 15264, 531, 0, 423, -8321.17, 2141.29, 118.251, 0.526919, 1800, 0, 0, 108360, 0, 0, 0),
(@ANUB22, 15264, 531, 0, 423, -8313.81, 2118.12, 118.176, 0.552331, 1800, 0, 0, 108360, 0, 0, 0),
(@ANUB23, 15264, 531, 0, 423, -8297.51, 2075.43, 118.191, 0.50381, 1800, 0, 0, 108360, 0, 0, 0),
(@ANUB24, 15264, 531, 0, 423, -8288.83, 2054.48, 118.215, 0.51424, 1800, 0, 0, 108360, 0, 0, 0);
