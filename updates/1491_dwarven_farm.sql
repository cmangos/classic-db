-- Fix for #9 "Arathi Dwarven coast farm" 
-- Used https://www.youtube.com/watch?v=leXm6STvSKM to help place mobs
-- XYZ: -1852 -4145 11 0
--
-- Add the two dwarves
DELETE FROM creature WHERE guid IN (660089, 660090);
INSERT INTO creature VALUES (660089,12998,0,12933,12998,-1853.19,-4122.06,11.1314,4.76928,60,0,0,644,0,0,2);
INSERT INTO creature VALUES (660090,12998,0,12932,12998,-1853.49,-4091.65,9.81663,4.70644,60,0,0,644,0,0,0);
-- Set sleep state inside house
DELETE FROM creature_addon WHERE guid=660090;
INSERT INTO `creature_addon` (`guid`, `bytes1`) VALUES ('660090', '3');
-- Add the majestic white rams to the stable
DELETE FROM creature WHERE guid IN (660093, 660094);
INSERT INTO creature VALUES (660093,2098,0,10000,0,-1813.51,-4155.14,9.89494,1.82635,60,5,0,102,0,0,0);
INSERT INTO creature VALUES (660094,2098,0,10000,0,-1818.03,-4142.99,9.89494,4.68913,60,5,0,102,0,0,0);
-- Add waypoints for 660089
DELETE FROM creature_movement WHERE id=660089;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime) VALUES (660089,1, -1851.500854,-4161.390625,8.042197, 100,5000);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime) VALUES (660089,2, -1849.244385,-4170.826172,6.402881, 100,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime) VALUES (660089,3, -1843.774780,-4176.642578,5.193354, 100,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime) VALUES (660089,4, -1827.663696,-4188.645508,3.624499, 100,0);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime) VALUES (660089,5, -1821.433350,-4200.034668,3.373229, 100,5000);
-- Begin adding stationary sitting cats
DELETE FROM creature WHERE guid IN (660095, 660099);
INSERT INTO creature VALUES (660095,6368,0,5586,0,-1855.72,-4117.62,13.0457,5.23730,60,5,0,42,0,0,0);
INSERT INTO creature VALUES (660099,6368,0,0,0,-1839.99,-4245.72,2.13572,1.15007,60,5,0,42,0,0,0);
-- Cats are sitting
DELETE FROM creature_addon WHERE guid IN (660095, 660099);
INSERT INTO `creature_addon` (`guid`, `bytes1`) VALUES ('660095', '1');
INSERT INTO `creature_addon` (`guid`, `bytes1`) VALUES ('660099', '1');
-- Add rats
DELETE FROM creature WHERE guid IN (660096, 660097, 660098, 660100, 660101, 660102);
INSERT INTO creature VALUES (660096,4075,0,0,0,-1818.5,-4149.38,9.89524,0.0426621,60,5,0,42,0,0,1);
INSERT INTO creature VALUES (660097,4075,0,0,0,-1853.79,-4149.49,9.74445,5.99991,60,5,0,42,0,0,1);
INSERT INTO creature VALUES (660098,4075,0,0,0,-1832.93,-4231.47,2.13493,4.15422,60,5,0,42,0,0,1);
INSERT INTO creature VALUES (660100,4075,0,0,0,-1765.09,-4228.05,2.06121,3.92646,60,5,0,42,0,0,1);
INSERT INTO creature VALUES (660101,4075,0,0,0,-1685.3,-4200.7,1.99848,0.324622,60,5,0,42,0,0,1);
INSERT INTO creature VALUES (660102,4075,0,0,0,-1720.4,-4190.35,1.99845,2.78763,60,5,0,42,0,0,1);