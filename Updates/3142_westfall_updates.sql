-- Westfall - updates

-- Objects

-- Sign outside Moonbrook
-- Old Coast Road 84
UPDATE gameobject SET position_x = -10912.04, position_y = 1420.346, position_z = 42.52587, orientation = -0.1310418, rotation0 = -0.05685568, rotation1 = 0.0006389618, rotation2 = -0.06554317, rotation3 = 0.9962285 WHERE guid = 32339;
-- Duskwood 85
UPDATE gameobject SET position_x = -10910.86, position_y = 1420.136, position_z = 43.48199, orientation = 3.0175, rotation0 = -0.01899099, rotation1 = 0.09044456, rotation2 = 0.9936657, rotation3 = 0.06393455 WHERE guid = 11019;

-- Sign on crossroads 58/65
-- Duskwood 121
UPDATE gameobject SET position_x = -10924.16, position_y = 995.3672, position_z = 34.95429, orientation = 3.138812, rotation0 = 0.004355907, rotation1 = 0.05669117, rotation2 = 0.9983816, rotation3 = 0.001145121 WHERE guid = 32328;
-- Sentinell Hill 122
UPDATE gameobject SET position_x = -10924.99, position_y = 996.3398, position_z = 34.50686, orientation = -1.570796, rotation0 = 0, rotation1 = 0, rotation2 = -0.7071066, rotation3 = 0.7071069 WHERE guid = 32337;
-- Elwynn Forest 123
UPDATE gameobject SET position_x = -10924.77, position_y = 996.4549, position_z = 35.67675, orientation = -1.483528, rotation0 = 0.0351038, rotation1 = -0.02625465, rotation2 = -0.6750803, rotation3 = 0.7364408 WHERE guid = 31067;
-- Moonbrook 124
UPDATE gameobject SET position_x = -10925, position_y = 994.95, position_z = 36.3558, orientation = 0.08331253, rotation0 = -0.09091187, rotation1 = -0.01661682, rotation2 = 0.04028893, rotation3 = 0.9949049 WHERE guid = 31068;


-- Creatures

-- Some Westfall duplicates
DELETE FROM creature WHERE guid IN (90271,90014,90375,90216,89906,90434,90341);
DELETE FROM creature_addon WHERE guid IN (90271,90014,90375,90216,89906,90434,90341);
DELETE FROM creature_movement WHERE id IN (90271,90014,90375,90216,89906,90434,90341);
DELETE FROM game_event_creature WHERE guid IN (90271,90014,90375,90216,89906,90434,90341);
DELETE FROM game_event_creature_data WHERE guid IN (90271,90014,90375,90216,89906,90434,90341);
DELETE FROM creature_battleground WHERE guid IN (90271,90014,90375,90216,89906,90434,90341);
DELETE FROM creature_linking WHERE guid IN (90271,90014,90375,90216,89906,90434,90341)
 OR master_guid IN (90271,90014,90375,90216,89906,90434,90341);

-- updates
UPDATE creature SET position_x = -10829.554688, position_y = 733.747437, position_z = 34.381603, orientation = 3.798669 WHERE guid = 90362;
