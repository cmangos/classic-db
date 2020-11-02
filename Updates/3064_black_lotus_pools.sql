-- Various internal changes for Black Lotus:
-- Rename pool templates to more coherent naming
-- Fix pool naming: Winterspring was Eastern Plaguelands and vice versa
-- Add and disable under map node

UPDATE pool_template SET description='Master Black Lotus (176589) Pool - Dire Maul - The Maul' WHERE entry=943;
UPDATE pool_template SET description='Master Black Lotus (176589) Pool - Winterspring' WHERE entry=944;
UPDATE pool_template SET description='Master Black Lotus (176589) Pool - Silithus' WHERE entry=945;
UPDATE pool_template SET description='Master Black Lotus (176589) Pool - Eastern Plaguelands' WHERE entry=946;

UPDATE pool_gameobject SET description='Dire Maul - The Maul - Black Lotus' WHERE pool_entry=943;
UPDATE pool_gameobject SET description='Winterspring - Black Lotus' WHERE pool_entry=944;
UPDATE pool_gameobject SET description='Silithus - Black Lotus' WHERE pool_entry=945;
UPDATE pool_gameobject SET description='Eastern Plaguelands - Black Lotus' WHERE pool_entry=946;

-- Use non assignged pool entry 947 as a temporary buffer 
UPDATE pool_gameobject SET pool_entry=947 WHERE pool_entry=944;
UPDATE pool_gameobject SET pool_entry=944 WHERE pool_entry=946;
UPDATE pool_gameobject SET pool_entry=946 WHERE pool_entry=947;

-- Assign latest node addition to correct pools
UPDATE pool_gameobject SET pool_entry=944 WHERE guid IN (132230, 131396);
UPDATE pool_gameobject SET pool_entry=946 WHERE guid IN (138613, 131395);

-- Add Black Lotus spawn under map in Eastern Plaguelands which is probably a left over of the zone redesign in patch 1.10
-- We don't add it to the pool to prevent the Black Lotus spawns from being stuck in the Eastern Plaguelands and we disable
-- the node through custom code
DELETE FROM gameobject WHERE guid=86503;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(86503, 176589, 0, 3151.6, -3727.88, -61.2898, 0.541051, 0, 0, 0.267238, 0.963631, 2700, 4500, 100, 1);
