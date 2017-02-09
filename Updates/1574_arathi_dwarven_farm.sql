-- Fix for #9 "Arathi Dwarven coast farm"
-- Used https://www.youtube.com/watch?v=leXm6STvSKM to help place mobs
-- XYZ: -1852 -4145 11 0
-- 
-- Add the two dwarves

SET @GUID := 590014;

DELETE FROM creature WHERE guid IN (@GUID + 1, @GUID + 2);
INSERT INTO creature VALUES (@GUID + 1,12998,0,12933,12998,-1853.19,-4122.06,11.1314,4.76928,60,0,0,644,0,0,2);
INSERT INTO creature VALUES (@GUID + 2,12998,0,12932,12998,-1853.49,-4091.65,9.81663,4.70644,60,0,0,644,0,0,0);
-- Set sleep state inside house
DELETE FROM creature_addon WHERE guid=@GUID + 2;
INSERT INTO `creature_addon` (`guid`, `bytes1`) VALUES (@GUID + 2, '3');
-- Add the majestic white rams to the stable
DELETE FROM creature WHERE guid IN (@GUID + 3, @GUID + 4);
INSERT INTO creature VALUES (@GUID + 3,2098,0,10000,0,-1813.51,-4155.14,9.89494,1.82635,60,0,0,102,0,0,0);
INSERT INTO creature VALUES (@GUID + 4,2098,0,10000,0,-1818.03,-4142.99,9.89494,4.68913,60,0,0,102,0,0,0);
-- Add waypoints for @GUID + 1
DELETE FROM creature_movement WHERE id=@GUID + 1;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime) VALUES (@GUID + 1,1, -1851.500854,-4161.390625,8.042197, 100,5000);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime) VALUES (@GUID + 1,2, -1849.244385,-4170.826172,6.402881, 100,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime) VALUES (@GUID + 1,3, -1843.774780,-4176.642578,5.193354, 100,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime) VALUES (@GUID + 1,4, -1827.663696,-4188.645508,3.624499, 100,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime) VALUES (@GUID + 1,5, -1821.433350,-4200.034668,3.373229, 100,5000);
-- Begin adding stationary sitting cats
DELETE FROM creature WHERE guid IN (@GUID + 5, @GUID + 6);
INSERT INTO creature VALUES (@GUID + 5,6368,0,5586,0,-1855.72,-4117.62,13.0457,5.23730,60,0,0,64,0,0,0);
INSERT INTO creature VALUES (@GUID + 6,6368,0,0,0,-1839.99,-4245.72,2.13572,1.15007,60,0,0,64,0,0,0);
-- Cats are sitting
DELETE FROM creature_addon WHERE guid IN (@GUID + 5, @GUID + 6);
INSERT INTO `creature_addon` (`guid`, `bytes1`) VALUES (@GUID + 5, '1');
INSERT INTO `creature_addon` (`guid`, `bytes1`) VALUES (@GUID + 6, '1');
-- Add rats
DELETE FROM creature WHERE guid BETWEEN @GUID + 7 AND @GUID + 21;
INSERT INTO creature VALUES (@GUID + 7,4075,0,0,0,-1818.5,-4149.38,9.89524,0.0426621,60,5,0,120,0,0,1);
INSERT INTO creature VALUES (@GUID + 8,4075,0,0,0,-1853.79,-4149.49,9.74445,5.99991,60,5,0,120,0,0,1);
INSERT INTO creature VALUES (@GUID + 9,4075,0,0,0,-1832.93,-4231.47,2.13493,4.15422,60,5,0,120,0,0,1);
INSERT INTO creature VALUES (@GUID + 10,4075,0,0,0,-1765.09,-4228.05,2.06121,3.92646,60,5,0,120,0,0,1);
INSERT INTO creature VALUES (@GUID + 11,4075,0,0,0,-1685.3,-4200.7,1.99848,0.324622,60,5,0,120,0,0,1);
INSERT INTO creature VALUES (@GUID + 12,4075,0,0,0,-1720.4,-4190.35,1.99845,2.78763,60,5,0,120,0,0,1);
INSERT INTO creature VALUES (@GUID + 13,4075,0,0,0,-1953.66,-4080.47,2.03243,1.65973,60,5,0,120,0,0,1);
INSERT INTO creature VALUES (@GUID + 14,4075,0,0,0,-1981,-4082.81,2.06496,2.00923,60,5,0,120,0,0,1);
INSERT INTO creature VALUES (@GUID + 15,4075,0,0,0,-1952.94,-4118.76,2.0329,5.26471,60,5,0,120,0,0,1);
INSERT INTO creature VALUES (@GUID + 16,4075,0,0,0,-1933.78,-4107.02,2.0329,5.249,60,5,0,120,0,0,1);
INSERT INTO creature VALUES (@GUID + 17,4075,0,0,0,-1898.76,-4155.48,2.0329,6.10665,60,5,0,120,0,0,1);
INSERT INTO creature VALUES (@GUID + 18,4075,0,0,0,-1773.96,-4198.48,1.99868,5.41943,60,5,0,120,0,0,1);
INSERT INTO creature VALUES (@GUID + 19,4075,0,0,0,-1748.44,-4205.78,1.99868,5.91973,60,5,0,120,0,0,1);
INSERT INTO creature VALUES (@GUID + 20,4075,0,0,0,-1702.71,-4252.72,1.99827,2.49775,60,5,0,120,0,0,1);
INSERT INTO creature VALUES (@GUID + 21,4075,0,0,0,-1728.17,-4279.38,1.99826,4.70708,60,5,0,120,0,0,1);
