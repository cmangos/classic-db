-- Boulderslide Cavern - Stonetalon Mountains

-- Duplicates
DELETE FROM creature_addon WHERE guid IN (29425,29421,29420,29405,29445,29417);
DELETE FROM creature_movement WHERE id IN (29425,29421,29420,29405,29445,29417);
DELETE FROM game_event_creature WHERE guid IN (29425,29421,29420,29405,29445,29417);
DELETE FROM game_event_creature_data WHERE guid IN (29425,29421,29420,29405,29445,29417);
DELETE FROM creature_battleground WHERE guid IN (29425,29421,29420,29405,29445,29417);
DELETE FROM creature_linking WHERE guid IN (29425,29421,29420,29405,29445,29417)
 OR master_guid IN (29425,29421,29420,29405,29445,29417);
DELETE FROM creature WHERE guid IN (29425,29421,29420,29405,29445,29417);
-- Updates
UPDATE creature SET position_x = -94.131683, position_y = 263.304810, position_z = 96.885506 WHERE guid = 29402;
UPDATE creature SET position_x = -85.058670, position_y = 270.399384, position_z = 92.185143 WHERE guid = 29446;
UPDATE creature SET position_x = -74.131210, position_y = 273.764923, position_z = 89.106224 WHERE guid = 29430;
UPDATE creature SET position_x = -60.423779, position_y = 287.822327, position_z = 87.769623 WHERE guid = 29404;
UPDATE creature SET position_x = -46.042240, position_y = 294.483002, position_z = 89.489014 WHERE guid = 29400;
UPDATE creature SET position_x = -22.569437, position_y = 316.062225, position_z = 94.753128 WHERE guid = 29403;
UPDATE creature SET position_x = -22.257608, position_y = 336.966522, position_z = 97.980850 WHERE guid = 29407;
UPDATE creature SET position_x = -43.842548, position_y = 315.065704, position_z = 90.686691 WHERE guid = 29432;
UPDATE creature SET position_x = -45.743332, position_y = 253.564590, position_z = 85.969559 WHERE guid = 29396;
UPDATE creature SET position_x = -76.486084, position_y = 304.019958, position_z = 84.657425 WHERE guid = 29431;
UPDATE creature SET position_x = -81.312645, position_y = 311.901825, position_z = 85.338379 WHERE guid = 29397;
UPDATE creature SET position_x = -94.364220, position_y = 322.451050, position_z = 87.895744 WHERE guid = 29422;
UPDATE creature SET position_x = -104.30068, position_y = 335.053040, position_z = 92.753479 WHERE guid = 29394;
UPDATE creature SET position_x = -11.972297, position_y = 362.958893, position_z = 104.880768 WHERE guid = 29408;
UPDATE creature SET position_x = 3.608942, position_y = 362.868927, position_z = 108.440163 WHERE guid = 29419;
UPDATE creature SET position_x = -11.944232, position_y = 445.450012, position_z = 104.313026 WHERE guid = 29418;
UPDATE creature SET position_x = -2.307087, position_y = 447.152802, position_z = 104.472221 WHERE guid = 29444;
UPDATE creature SET position_x = 6.068378, position_y = 444.757355, position_z = 104.037727 WHERE guid = 29424;
UPDATE creature SET position_x = -61.795769, position_y = 388.594421, position_z = 107.359573 WHERE guid = 29391;
UPDATE creature SET position_x = -77.384796, position_y = 355.586639, position_z = 111.672615 WHERE guid = 29440;
UPDATE creature SET position_x = -100.027122, position_y = 330.580109, position_z = 118.484528 WHERE guid = 29435;
UPDATE creature SET position_x = -89.206375, position_y = 313.617371, position_z = 121.130417 WHERE guid = 29416;
UPDATE creature SET position_x = -45.500122, position_y = 361.118927, position_z = 120.879944 WHERE guid = 29415;
UPDATE creature SET position_x = -58.164516, position_y = 350.577515, position_z = 121.818123 WHERE guid = 29443;
-- waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (29431);
DELETE FROM creature_movement WHERE id IN (29431);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
(29431,1,-67.1366,294.958,86.6612,100,0,0),
(29431,2,-60.4793,289.107,87.6326,100,0,0),
(29431,3,-56.0317,281.253,88.6393,100,0,0),
(29431,4,-51.8368,270.166,87.8791,100,0,0),
(29431,5,-46.8202,256.289,86.216,100,0,0),
(29431,6,-51.7779,270.249,87.8862,100,0,0),
(29431,7,-55.7771,276.996,88.9969,100,0,0),
(29431,8,-63.9024,288.631,87.6613,100,0,0),
(29431,9,-75.984,302.739,84.8959,100,0,0),
(29431,10,-84.2961,311.183,85.3484,100,0,0),
(29431,11,-89.144,316.232,85.7218,100,0,0),
(29431,12,-98.9022,327.883,90.5986,100,0,0),
(29431,13,-89.5282,316.5,85.7473,100,0,0),
(29431,14,-84.8345,311.559,85.3837,100,0,0),
(29431,15,-77.0645,304.281,84.6716,100,0,0);
-- update for static ones
UPDATE creature SET spawndist = 3, MovementType = 1 WHERE id IN (11915,11917,11918) AND MovementType = 0;
