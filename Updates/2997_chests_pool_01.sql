-- @@@@@@@@@@@@@@@@@@@@@@@@
--  OPEN WORLD CHESTS POOLS
-- @@@@@@@@@@@@@@@@@@@@@@@@


-- #######################
--  Blasted Lands
-- #######################

-- Add missing GameObjects
DELETE FROM gameobject WHERE guid=56704;
DELETE FROM game_event_gameobject WHERE guid=56704;
DELETE FROM gameobject_battleground WHERE guid=56704;
DELETE FROM pool_gameobject WHERE guid=56704;
DELETE FROM gameobject_addon WHERE guid=56704;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(56704, 4149, 0, -10954.7, -3695.79, 27.31, 4.96, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=190325;
DELETE FROM game_event_gameobject WHERE guid=190325;
DELETE FROM gameobject_battleground WHERE guid=190325;
DELETE FROM pool_gameobject WHERE guid=190325;
DELETE FROM gameobject_addon WHERE guid=190325;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(190325, 4149, 0, -10963.1, -3677.28, 27.79, -2.16421, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55563;
DELETE FROM game_event_gameobject WHERE guid=55563;
DELETE FROM gameobject_battleground WHERE guid=55563;
DELETE FROM pool_gameobject WHERE guid=55563;
DELETE FROM gameobject_addon WHERE guid=55563;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55563, 153451, 0, -11227.9, -3480.42, 8.41118, -0.890117, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55567;
DELETE FROM game_event_gameobject WHERE guid=55567;
DELETE FROM gameobject_battleground WHERE guid=55567;
DELETE FROM pool_gameobject WHERE guid=55567;
DELETE FROM gameobject_addon WHERE guid=55567;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55567, 153451, 0, -11331.9, -3332.5, 8.61777, 2.54818, 0.0, 0.0, 0.0, 0.0, 7200, 7200);


-- Create pools for GameObjects
INSERT INTO pool_gameobject VALUES
(13978, 39947, 0, 'Blasted Lands - Solid Chest (4149)'),
(56704, 39947, 0, 'Blasted Lands - Solid Chest (4149)'),
(190325, 39947, 0, 'Blasted Lands - Solid Chest (4149)'),
(32134, 39948, 0, 'Blasted Lands (Serpent\'s Coil) - Solid Chest (153451)'),
(55563, 39948, 0, 'Blasted Lands (Serpent\'s Coil) - Solid Chest (153451)'),
(55567, 39948, 0, 'Blasted Lands (Serpent\'s Coil) - Solid Chest (153451)'),
(42439, 39949, 0, 'Blasted Lands (Dreadmaul Hold) - Solid Chest (153451)');


-- Create pool templates
INSERT INTO pool_template VALUES
(39947, 1, 'Blasted Lands - Chest Pool'),
(39948, 1, 'Blasted Lands (Serpent\'s Coil) - Chest Pool'),
(39949, 1, 'Blasted Lands (Dreadmaul Hold) - Chest Pool');
UPDATE pool_template SET max_limit=3 WHERE entry=39930;


-- Create pools of pools
INSERT INTO pool_pool VALUES
(39947, 39930, 0, 'Blasted Lands - Chest Pool'),
(39948, 39930, 0, 'Blasted Lands (Serpent\'s Coil) - Chest Pool'),
(39949, 39930, 0, 'Blasted Lands (Dreadmaul Hold) - Chest Pool');


-- #######################
--  Swamp of Sorrows
-- #######################

-- Add missing GameObjects
DELETE FROM gameobject WHERE guid=55508;
DELETE FROM game_event_gameobject WHERE guid=55508;
DELETE FROM gameobject_battleground WHERE guid=55508;
DELETE FROM pool_gameobject WHERE guid=55508;
DELETE FROM gameobject_addon WHERE guid=55508;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55508, 2857, 0, -9901.63, -3731.32, 22.1619, 2.42601, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55509;
DELETE FROM game_event_gameobject WHERE guid=55509;
DELETE FROM gameobject_battleground WHERE guid=55509;
DELETE FROM pool_gameobject WHERE guid=55509;
DELETE FROM gameobject_addon WHERE guid=55509;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55509, 2857, 0, -9985.92, -3625.97, 22.379, -1.90241, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55762;
DELETE FROM game_event_gameobject WHERE guid=55762;
DELETE FROM gameobject_battleground WHERE guid=55762;
DELETE FROM pool_gameobject WHERE guid=55762;
DELETE FROM gameobject_addon WHERE guid=55762;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55762, 2857, 0, -9942.67, -3645.36, 23.6189, 1.51844, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55763;
DELETE FROM game_event_gameobject WHERE guid=55763;
DELETE FROM gameobject_battleground WHERE guid=55763;
DELETE FROM pool_gameobject WHERE guid=55763;
DELETE FROM gameobject_addon WHERE guid=55763;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55763, 2857, 0, -10105.2, -2333.81, 29.0137, -1.62316, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=190326;
DELETE FROM game_event_gameobject WHERE guid=190326;
DELETE FROM gameobject_battleground WHERE guid=190326;
DELETE FROM pool_gameobject WHERE guid=190326;
DELETE FROM gameobject_addon WHERE guid=190326;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(190326, 4149, 0, -10550.7, -4400.34, 0.416397, -2.61799, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=190327;
DELETE FROM game_event_gameobject WHERE guid=190327;
DELETE FROM gameobject_battleground WHERE guid=190327;
DELETE FROM pool_gameobject WHERE guid=190327;
DELETE FROM gameobject_addon WHERE guid=190327;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(190327, 4149, 0, -10037.5, -4313.46, 0.254656, -1.79769, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=190328;
DELETE FROM game_event_gameobject WHERE guid=190328;
DELETE FROM gameobject_battleground WHERE guid=190328;
DELETE FROM pool_gameobject WHERE guid=190328;
DELETE FROM gameobject_addon WHERE guid=190328;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(190328, 4149, 0, -10819.5, -4266.54, -4.39961, 2.05949, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55767;
DELETE FROM game_event_gameobject WHERE guid=55767;
DELETE FROM gameobject_battleground WHERE guid=55767;
DELETE FROM pool_gameobject WHERE guid=55767;
DELETE FROM gameobject_addon WHERE guid=55767;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55767, 4149, 0, -10906.6, -4208.03, 1.01048, 0.802851, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55770;
DELETE FROM game_event_gameobject WHERE guid=55770;
DELETE FROM gameobject_battleground WHERE guid=55770;
DELETE FROM pool_gameobject WHERE guid=55770;
DELETE FROM gameobject_addon WHERE guid=55770;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55770, 4149, 0, -10314.1, -4401.57, 0.398094, 1.3439, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55771;
DELETE FROM game_event_gameobject WHERE guid=55771;
DELETE FROM gameobject_battleground WHERE guid=55771;
DELETE FROM pool_gameobject WHERE guid=55771;
DELETE FROM gameobject_addon WHERE guid=55771;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55771, 4149, 0, -10426.7, -4390.78, 5.12247, 0.890117, 0.0, 0.0, 0.0, 0.0, 7200, 7200);


-- Create pools for GameObjects
INSERT INTO pool_gameobject VALUES
(30992, 39950, 0, 'Swamp of Sorrows (Fallow Sanctuary) - Solid Chest (2857)'),
(31014, 39950, 0, 'Swamp of Sorrows (Fallow Sanctuary) - Solid Chest (2857)'),
(55509, 39950, 0, 'Swamp of Sorrows (Fallow Sanctuary) - Solid Chest (2857)'),
(55762, 39950, 0, 'Swamp of Sorrows (Fallow Sanctuary) - Solid Chest (2857)'),
(31016, 39951, 0, 'Swamp of Sorrows (Itharius\'s Cave) - Solid Chest (2857)'),
(13979, 39952, 0, 'Swamp of Sorrows - Solid Chest (4149)'),
(55508, 39952, 0, 'Swamp of Sorrows - Solid Chest (2857)'),
(31044, 39953, 0, 'Swamp of Sorrows (Misty Reed Strand) - Solid Chest (4149)'),
(31045, 39953, 0, 'Swamp of Sorrows (Misty Reed Strand) - Solid Chest (4149)'),
(190326, 39953, 0, 'Swamp of Sorrows (Misty Reed Strand) - Solid Chest (4149)'),
(190327, 39953, 0, 'Swamp of Sorrows (Misty Reed Strand) - Solid Chest (4149)'),
(190328, 39953, 0, 'Swamp of Sorrows (Misty Reed Strand) - Solid Chest (4149)'),
(55767, 39953, 0, 'Swamp of Sorrows (Misty Reed Strand) - Solid Chest (4149)'),
(55770, 39953, 0, 'Swamp of Sorrows (Misty Reed Strand) - Solid Chest (4149)'),
(55771, 39953, 0, 'Swamp of Sorrows (Misty Reed Strand) - Solid Chest (4149)'),
(55763, 39954, 0, 'Swamp of Sorrows (Misty Valley) - Solid Chest (2857)');


-- Create pool templates
INSERT INTO pool_template VALUES
(39950, 1, 'Swamp of Sorrows (Fallow Sanctuary) - Chest Pool'),
(39951, 1, 'Swamp of Sorrows (Itharius\'s Cave) - Chest Pool'),
(39952, 1, 'Swamp of Sorrows - Chest Pool'),
(39953, 1, 'Swamp of Sorrows (Misty Reed Strand) - Chest Pool'),
(39954, 1, 'Swamp of Sorrows (Misty Valley) - Chest Pool');
UPDATE pool_template SET max_limit=3 WHERE entry=39924;


-- Create pools of pools
INSERT INTO pool_pool VALUES
(39950, 39924, 0, 'Swamp of Sorrows (Fallow Sanctuary) - Chest Pool'),
(39951, 39924, 0, 'Swamp of Sorrows (Itharius\'s Cave) - Chest Pool'),
(39952, 39924, 0, 'Swamp of Sorrows - Chest Pool'),
(39953, 39924, 0, 'Swamp of Sorrows (Misty Reed Strand) - Chest Pool'),
(39954, 39924, 0, 'Swamp of Sorrows (Misty Valley) - Chest Pool');


-- #######################
--  Duskwood
-- #######################

-- Add missing GameObjects
DELETE FROM gameobject WHERE guid=55475;
DELETE FROM game_event_gameobject WHERE guid=55475;
DELETE FROM gameobject_battleground WHERE guid=55475;
DELETE FROM pool_gameobject WHERE guid=55475;
DELETE FROM gameobject_addon WHERE guid=55475;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55475, 2850, 0, -10784.6, -586.092, 37.9249, -1.85005, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55483;
DELETE FROM game_event_gameobject WHERE guid=55483;
DELETE FROM gameobject_battleground WHERE guid=55483;
DELETE FROM pool_gameobject WHERE guid=55483;
DELETE FROM gameobject_addon WHERE guid=55483;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55483, 2850, 0, -10222.7, -49.3107, 31.8578, -0.767944, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55756;
DELETE FROM game_event_gameobject WHERE guid=55756;
DELETE FROM gameobject_battleground WHERE guid=55756;
DELETE FROM pool_gameobject WHERE guid=55756;
DELETE FROM gameobject_addon WHERE guid=55756;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55756, 2850, 0, -11014.0, 179.983, 28.7909, 1.16937, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55487;
DELETE FROM game_event_gameobject WHERE guid=55487;
DELETE FROM gameobject_battleground WHERE guid=55487;
DELETE FROM pool_gameobject WHERE guid=55487;
DELETE FROM gameobject_addon WHERE guid=55487;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55487, 2852, 0, -10358.1, -1243.02, 35.4821, -0.104719, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55488;
DELETE FROM game_event_gameobject WHERE guid=55488;
DELETE FROM gameobject_battleground WHERE guid=55488;
DELETE FROM pool_gameobject WHERE guid=55488;
DELETE FROM gameobject_addon WHERE guid=55488;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55488, 2852, 0, -11220.2, -153.509, 7.28759, -2.40855, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55489;
DELETE FROM game_event_gameobject WHERE guid=55489;
DELETE FROM gameobject_battleground WHERE guid=55489;
DELETE FROM pool_gameobject WHERE guid=55489;
DELETE FROM gameobject_addon WHERE guid=55489;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55489, 2852, 0, -11012.3, -1101.52, 41.8718, 0.122173, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55491;
DELETE FROM game_event_gameobject WHERE guid=55491;
DELETE FROM gameobject_battleground WHERE guid=55491;
DELETE FROM pool_gameobject WHERE guid=55491;
DELETE FROM gameobject_addon WHERE guid=55491;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55491, 2852, 0, -10270.2, -727.604, 46.2897, 0.401425, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55492;
DELETE FROM game_event_gameobject WHERE guid=55492;
DELETE FROM gameobject_battleground WHERE guid=55492;
DELETE FROM pool_gameobject WHERE guid=55492;
DELETE FROM gameobject_addon WHERE guid=55492;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55492, 2852, 0, -11116.9, -172.415, 16.4073, -2.89724, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55493;
DELETE FROM game_event_gameobject WHERE guid=55493;
DELETE FROM gameobject_battleground WHERE guid=55493;
DELETE FROM pool_gameobject WHERE guid=55493;
DELETE FROM gameobject_addon WHERE guid=55493;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55493, 2852, 0, -11082.7, -97.2737, 16.9502, -0.436332, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55494;
DELETE FROM game_event_gameobject WHERE guid=55494;
DELETE FROM gameobject_battleground WHERE guid=55494;
DELETE FROM pool_gameobject WHERE guid=55494;
DELETE FROM gameobject_addon WHERE guid=55494;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55494, 2852, 0, -11013.9, -1141.27, 39.8619, -2.28638, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55495;
DELETE FROM game_event_gameobject WHERE guid=55495;
DELETE FROM gameobject_battleground WHERE guid=55495;
DELETE FROM pool_gameobject WHERE guid=55495;
DELETE FROM gameobject_addon WHERE guid=55495;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55495, 2852, 0, -10373.4, 130.12, 1.71372, 0.139624, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55496;
DELETE FROM game_event_gameobject WHERE guid=55496;
DELETE FROM gameobject_battleground WHERE guid=55496;
DELETE FROM pool_gameobject WHERE guid=55496;
DELETE FROM gameobject_addon WHERE guid=55496;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55496, 2852, 0, -11089.2, -951.572, 65.3283, -2.53072, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55498;
DELETE FROM game_event_gameobject WHERE guid=55498;
DELETE FROM gameobject_battleground WHERE guid=55498;
DELETE FROM pool_gameobject WHERE guid=55498;
DELETE FROM gameobject_addon WHERE guid=55498;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55498, 2852, 0, -11030.6, -901.201, 63.9518, -2.23402, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55777;
DELETE FROM game_event_gameobject WHERE guid=55777;
DELETE FROM gameobject_battleground WHERE guid=55777;
DELETE FROM pool_gameobject WHERE guid=55777;
DELETE FROM gameobject_addon WHERE guid=55777;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55777, 2852, 0, -11159.8, -193.828, 13.3673, -0.575957, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55781;
DELETE FROM game_event_gameobject WHERE guid=55781;
DELETE FROM gameobject_battleground WHERE guid=55781;
DELETE FROM pool_gameobject WHERE guid=55781;
DELETE FROM gameobject_addon WHERE guid=55781;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55781, 2852, 0, -11178.0, -110.116, 7.67782, -3.12412, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55782;
DELETE FROM game_event_gameobject WHERE guid=55782;
DELETE FROM gameobject_battleground WHERE guid=55782;
DELETE FROM pool_gameobject WHERE guid=55782;
DELETE FROM gameobject_addon WHERE guid=55782;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55782, 2852, 0, -11165.6, -163.196, 9.35385, 1.41372, 0.0, 0.0, 0.0, 0.0, 7200, 7200);


-- Create pools for GameObjects
INSERT INTO pool_gameobject VALUES
(16983, 39955, 0, 'Duskwood (Addle\'s Stead) - Solid Chest (2850)'),
(55756, 39955, 0, 'Duskwood (Addle\'s Stead) - Solid Chest (2850)'),
(17033, 39956, 0, 'Duskwood - Solid Chest (2850)'),
(18565, 39956, 0, 'Duskwood - Solid Chest (2850)'),
(18572, 39956, 0, 'Duskwood - Solid Chest (2850)'),
(33475, 39956, 0, 'Duskwood - Solid Chest (2850)'),
(17134, 39956, 0, 'Duskwood - Solid Chest (2852)'),
(55475, 39956, 0, 'Duskwood - Solid Chest (2850)'),
(55488, 39956, 0, 'Duskwood - Solid Chest (2852)'),
(55489, 39956, 0, 'Duskwood - Solid Chest (2852)'),
(55494, 39956, 0, 'Duskwood - Solid Chest (2852)'),
(55781, 39956, 0, 'Duskwood - Solid Chest (2852)'),
(18577, 39957, 0, 'Duskwood (Brightwood Grove) - Solid Chest (2850)'),
(33431, 39957, 0, 'Duskwood (Brightwood Grove) - Solid Chest (2852)'),
(55491, 39957, 0, 'Duskwood (Brightwood Grove) - Solid Chest (2852)'),
(15672, 39958, 0, 'Duskwood (Forlorn Rowe) - Solid Chest (2852)'),
(16763, 39959, 0, 'Duskwood (The Yorgen Farmstead) - Solid Chest (2852)'),
(16989, 39960, 0, 'Duskwood (The Rotting Orchard) - Solid Chest (2852)'),
(55496, 39960, 0, 'Duskwood (The Rotting Orchard) - Solid Chest (2852)'),
(55498, 39960, 0, 'Duskwood (The Rotting Orchard) - Solid Chest (2852)'),
(18547, 39961, 0, 'Duskwood (Vul\'Gol Ogre Mound) - Solid Chest (2852)'),
(18562, 39961, 0, 'Duskwood (Vul\'Gol Ogre Mound) - Solid Chest (2852)'),
(55492, 39961, 0, 'Duskwood (Vul\'Gol Ogre Mound) - Solid Chest (2852)'),
(55493, 39961, 0, 'Duskwood (Vul\'Gol Ogre Mound) - Solid Chest (2852)'),
(55777, 39961, 0, 'Duskwood (Vul\'Gol Ogre Mound) - Solid Chest (2852)'),
(55782, 39961, 0, 'Duskwood (Vul\'Gol Ogre Mound) - Solid Chest (2852)'),
(33434, 39962, 0, 'Duskwood (Tranquil Gardens Cemetery) - Solid Chest (2852)'),
(55483, 39963, 0, 'Duskwood (The Darkened Bank) - Solid Chest (2850)'),
(55487, 39964, 0, 'Duskwood (Manor Mistmantle) - Solid Chest (2852)'),
(55495, 39965, 0, 'Duskwood (Raven Hill Cemetery) - Solid Chest (2852)');


-- Create pool templates
INSERT INTO pool_template VALUES
(39955, 1, 'Duskwood (Addle\'s Stead) - Chest Pool'),
(39956, 1, 'Duskwood - Chest Pool'),
(39957, 1, 'Duskwood (Brightwood Grove) - Chest Pool'),
(39958, 1, 'Duskwood (Forlorn Rowe) - Chest Pool'),
(39959, 1, 'Duskwood (The Yorgen Farmstead) - Chest Pool'),
(39960, 1, 'Duskwood (The Rotting Orchard) - Chest Pool'),
(39961, 1, 'Duskwood (Vul\'Gol Ogre Mound) - Chest Pool'),
(39962, 1, 'Duskwood (Tranquil Gardens Cemetery) - Chest Pool'),
(39963, 1, 'Duskwood (The Darkened Bank) - Chest Pool'),
(39964, 1, 'Duskwood (Manor Mistmantle) - Chest Pool'),
(39965, 1, 'Duskwood (Raven Hill Cemetery) - Chest Pool');
UPDATE pool_template SET max_limit=4 WHERE entry=39914;


-- Create pools of pools
INSERT INTO pool_pool VALUES
(39955, 39914, 0, 'Duskwood (Addle\'s Stead) - Chest Pool'),
(39956, 39914, 0, 'Duskwood - Chest Pool'),
(39957, 39914, 0, 'Duskwood (Brightwood Grove) - Chest Pool'),
(39958, 39914, 0, 'Duskwood (Forlorn Rowe) - Chest Pool'),
(39959, 39914, 0, 'Duskwood (The Yorgen Farmstead) - Chest Pool'),
(39960, 39914, 0, 'Duskwood (The Rotting Orchard) - Chest Pool'),
(39961, 39914, 0, 'Duskwood (Vul\'Gol Ogre Mound) - Chest Pool'),
(39962, 39914, 0, 'Duskwood (Tranquil Gardens Cemetery) - Chest Pool'),
(39963, 39914, 0, 'Duskwood (The Darkened Bank) - Chest Pool'),
(39964, 39914, 0, 'Duskwood (Manor Mistmantle) - Chest Pool'),
(39965, 39914, 0, 'Duskwood (Raven Hill Cemetery) - Chest Pool');


-- #######################
--  Wetlands
-- #######################

-- Add missing GameObjects
DELETE FROM gameobject WHERE guid=56705;
DELETE FROM game_event_gameobject WHERE guid=56705;
DELETE FROM gameobject_battleground WHERE guid=56705;
DELETE FROM pool_gameobject WHERE guid=56705;
DELETE FROM gameobject_addon WHERE guid=56705;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(56705, 2850, 0, -2995.48, -2525.18, 11.3921, 0.541051, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55478;
DELETE FROM game_event_gameobject WHERE guid=55478;
DELETE FROM gameobject_battleground WHERE guid=55478;
DELETE FROM pool_gameobject WHERE guid=55478;
DELETE FROM gameobject_addon WHERE guid=55478;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55478, 2850, 0, -2991.62, -1058.62, 8.82124, -2.23402, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55479;
DELETE FROM game_event_gameobject WHERE guid=55479;
DELETE FROM gameobject_battleground WHERE guid=55479;
DELETE FROM pool_gameobject WHERE guid=55479;
DELETE FROM gameobject_addon WHERE guid=55479;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55479, 2850, 0, -3199.67, -950.395, 8.9407, -1.98967, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55480;
DELETE FROM game_event_gameobject WHERE guid=55480;
DELETE FROM gameobject_battleground WHERE guid=55480;
DELETE FROM pool_gameobject WHERE guid=55480;
DELETE FROM gameobject_addon WHERE guid=55480;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55480, 2850, 0, -2898.26, -2577.74, 33.8699, -2.9845, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55481;
DELETE FROM game_event_gameobject WHERE guid=55481;
DELETE FROM gameobject_battleground WHERE guid=55481;
DELETE FROM pool_gameobject WHERE guid=55481;
DELETE FROM gameobject_addon WHERE guid=55481;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55481, 2850, 0, -3030.09, -2259.15, 9.47054, -0.191985, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55482;
DELETE FROM game_event_gameobject WHERE guid=55482;
DELETE FROM gameobject_battleground WHERE guid=55482;
DELETE FROM pool_gameobject WHERE guid=55482;
DELETE FROM gameobject_addon WHERE guid=55482;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55482, 2850, 0, -2970.03, -1697.64, 9.53065, -2.32129, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55486;
DELETE FROM game_event_gameobject WHERE guid=55486;
DELETE FROM gameobject_battleground WHERE guid=55486;
DELETE FROM pool_gameobject WHERE guid=55486;
DELETE FROM gameobject_addon WHERE guid=55486;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55486, 2850, 0, -4307.18, -2399.89, 209.588, 2.72271, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55490;
DELETE FROM game_event_gameobject WHERE guid=55490;
DELETE FROM gameobject_battleground WHERE guid=55490;
DELETE FROM pool_gameobject WHERE guid=55490;
DELETE FROM gameobject_addon WHERE guid=55490;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55490, 2852, 0, -2586.38, -2383.61, 79.8838, -1.65806, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55497;
DELETE FROM game_event_gameobject WHERE guid=55497;
DELETE FROM gameobject_battleground WHERE guid=55497;
DELETE FROM pool_gameobject WHERE guid=55497;
DELETE FROM gameobject_addon WHERE guid=55497;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55497, 2852, 0, -3413.19, -1982.01, 115.444, -2.9845, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55499;
DELETE FROM game_event_gameobject WHERE guid=55499;
DELETE FROM gameobject_battleground WHERE guid=55499;
DELETE FROM pool_gameobject WHERE guid=55499;
DELETE FROM gameobject_addon WHERE guid=55499;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55499, 2852, 0, -2636.96, -2397.31, 89.1529, 3.00195, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55757;
DELETE FROM game_event_gameobject WHERE guid=55757;
DELETE FROM gameobject_battleground WHERE guid=55757;
DELETE FROM pool_gameobject WHERE guid=55757;
DELETE FROM gameobject_addon WHERE guid=55757;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55757, 2852, 0, -3339.37, -2209.3, 46.7444, -2.53072, 0.0, 0.0, 0.0, 0.0, 7200, 7200);


-- Create pools for GameObjects
INSERT INTO pool_gameobject VALUES
(15050, 39966, 0, 'Wetlands - Solid Chest (2850)'),
(15084, 39966, 0, 'Wetlands - Solid Chest (2850)'),
(15142, 39966, 0, 'Wetlands - Solid Chest (2850)'),
(15146, 39966, 0, 'Wetlands - Solid Chest (2850)'),
(15212, 39966, 0, 'Wetlands - Solid Chest (2850)'),
(14660, 39966, 0, 'Wetlands - Solid Chest (2852)'),
(55480, 39966, 0, 'Wetlands - Solid Chest (2850)'),
(55481, 39966, 0, 'Wetlands - Solid Chest (2850)'),
(15147, 39967, 0, 'Wetlands (The Lost Fleet) - Solid Chest (2850)'),
(15149, 39968, 0, 'Wetlands (Mosshide Fen) - Solid Chest (2850)'),
(15207, 39969, 0, 'Wetlands (Bluegill Marsh) - Solid Chest (2850)'),
(55478, 39969, 0, 'Wetlands (Bluegill Marsh) - Solid Chest (2850)'),
(55479, 39969, 0, 'Wetlands (Bluegill Marsh) - Solid Chest (2850)'),
(15213, 39970, 0, 'Wetlands (Dun Algaz) - Solid Chest (2850)'),
(55486, 39970, 0, 'Wetlands (Dun Algaz) - Solid Chest (2850)'),
(14653, 39971, 0, 'Wetlands (Angerfang Encampment) - Solid Chest (2852)'),
(15153, 39971, 0, 'Wetlands (Angerfang Encampment) - Solid Chest (2852)'),
(55497, 39971, 0, 'Wetlands (Angerfang Encampment) - Solid Chest (2852)'),
(55757, 39971, 0, 'Wetlands (Angerfang Encampment) - Solid Chest (2852)'),
(14861, 39972, 0, 'Wetlands (Direforge Hill) - Solid Chest (2852)'),
(15098, 39973, 0, 'Wetlands (Dun Modr) - Solid Chest (2852)'),
(55490, 39973, 0, 'Wetlands (Dun Modr) - Solid Chest (2852)'),
(55499, 39973, 0, 'Wetlands (Dun Modr) - Solid Chest (2852)'),
(56705, 39974, 0, 'Wetlands (The Green Belt) - Solid Chest (2850)'),
(55482, 39975, 0, 'Wetlands (Sundown Marsh) - Solid Chest (2850)');


-- Create pool templates
INSERT INTO pool_template VALUES
(39966, 1, 'Wetlands - Chest Pool'),
(39967, 1, 'Wetlands (The Lost Fleet) - Chest Pool'),
(39968, 1, 'Wetlands (Mosshide Fen) - Chest Pool'),
(39969, 1, 'Wetlands (Bluegill Marsh) - Chest Pool'),
(39970, 1, 'Wetlands (Dun Algaz) - Chest Pool'),
(39971, 1, 'Wetlands (Angerfang Encampment) - Chest Pool'),
(39972, 1, 'Wetlands (Direforge Hill) - Chest Pool'),
(39973, 1, 'Wetlands (Dun Modr) - Chest Pool'),
(39974, 1, 'Wetlands (The Green Belt) - Chest Pool'),
(39975, 1, 'Wetlands (Sundown Marsh) - Chest Pool');
UPDATE pool_template SET max_limit=3 WHERE entry=39916;


-- Create pools of pools
INSERT INTO pool_pool VALUES
(39966, 39916, 0, 'Wetlands - Chest Pool'),
(39967, 39916, 0, 'Wetlands (The Lost Fleet) - Chest Pool'),
(39968, 39916, 0, 'Wetlands (Mosshide Fen) - Chest Pool'),
(39969, 39916, 0, 'Wetlands (Bluegill Marsh) - Chest Pool'),
(39970, 39916, 0, 'Wetlands (Dun Algaz) - Chest Pool'),
(39971, 39916, 0, 'Wetlands (Angerfang Encampment) - Chest Pool'),
(39972, 39916, 0, 'Wetlands (Direforge Hill) - Chest Pool'),
(39973, 39916, 0, 'Wetlands (Dun Modr) - Chest Pool'),
(39974, 39916, 0, 'Wetlands (The Green Belt) - Chest Pool'),
(39975, 39916, 0, 'Wetlands (Sundown Marsh) - Chest Pool');


-- #######################
--  Dustwallow Marsh
-- #######################

-- Add missing GameObjects
DELETE FROM gameobject WHERE guid=55948;
DELETE FROM game_event_gameobject WHERE guid=55948;
DELETE FROM gameobject_battleground WHERE guid=55948;
DELETE FROM pool_gameobject WHERE guid=55948;
DELETE FROM gameobject_addon WHERE guid=55948;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55948, 2857, 1, -2609.92, -4002.35, 4.1186, 0.052359, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=190329;
DELETE FROM game_event_gameobject WHERE guid=190329;
DELETE FROM gameobject_battleground WHERE guid=190329;
DELETE FROM pool_gameobject WHERE guid=190329;
DELETE FROM gameobject_addon WHERE guid=190329;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(190329, 4149, 1, -4583.68, -3553.67, 30.1046, 0.837757, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=190330;
DELETE FROM game_event_gameobject WHERE guid=190330;
DELETE FROM gameobject_battleground WHERE guid=190330;
DELETE FROM pool_gameobject WHERE guid=190330;
DELETE FROM gameobject_addon WHERE guid=190330;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(190330, 4149, 1, -4333.27, -3228.58, 34.5973, -1.0472, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=190331;
DELETE FROM game_event_gameobject WHERE guid=190331;
DELETE FROM gameobject_battleground WHERE guid=190331;
DELETE FROM pool_gameobject WHERE guid=190331;
DELETE FROM gameobject_addon WHERE guid=190331;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(190331, 4149, 1, -4246.86, -3914.45, -10.1359, -1.3439, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=190332;
DELETE FROM game_event_gameobject WHERE guid=190332;
DELETE FROM gameobject_battleground WHERE guid=190332;
DELETE FROM pool_gameobject WHERE guid=190332;
DELETE FROM gameobject_addon WHERE guid=190332;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(190332, 4149, 1, -4232.95, -3921.11, -15.8423, -0.366518, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=190333;
DELETE FROM game_event_gameobject WHERE guid=190333;
DELETE FROM gameobject_battleground WHERE guid=190333;
DELETE FROM pool_gameobject WHERE guid=190333;
DELETE FROM gameobject_addon WHERE guid=190333;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(190333, 4149, 1, -4374.53, -3330.37, 34.8726, 0.139624, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=190334;
DELETE FROM game_event_gameobject WHERE guid=190334;
DELETE FROM gameobject_battleground WHERE guid=190334;
DELETE FROM pool_gameobject WHERE guid=190334;
DELETE FROM gameobject_addon WHERE guid=190334;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(190334, 4149, 1, -3633.96, -4060.18, -5.87566, 2.02458, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55951;
DELETE FROM game_event_gameobject WHERE guid=55951;
DELETE FROM gameobject_battleground WHERE guid=55951;
DELETE FROM pool_gameobject WHERE guid=55951;
DELETE FROM gameobject_addon WHERE guid=55951;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55951, 4149, 1, -4294.95, -3006.75, 34.6152, 1.29154, 0.0, 0.0, 0.0, 0.0, 7200, 7200);


-- Create pools for GameObjects
INSERT INTO pool_gameobject VALUES
(9096, 39976, 0, 'Dustwallow Marsh (Dreadmurk Shore) - Solid Chest (2857)'),
(11755, 39976, 0, 'Dustwallow Marsh (Dreadmurk Shore) - Solid Chest (2857)'),
(13632, 39976, 0, 'Dustwallow Marsh (Dreadmurk Shore) - Solid Chest (2857)'),
(55948, 39976, 0, 'Dustwallow Marsh (Dreadmurk Shore) - Solid Chest (2857)'),
(14619, 39977, 0, 'Dustwallow Marsh (Tidefury Cove) - Solid Chest (4149)'),
(14931, 39977, 0, 'Dustwallow Marsh (Tidefury Cove) - Solid Chest (4149)'),
(190331, 39977, 0, 'Dustwallow Marsh (Tidefury Cove) - Solid Chest (4149)'),
(190332, 39977, 0, 'Dustwallow Marsh (Tidefury Cove) - Solid Chest (4149)'),
(40758, 39978, 0, 'Dustwallow Marsh - Solid Chest (4149)'),
(40772, 39979, 0, 'Dustwallow Marsh (Stonemaul Ruins) - Solid Chest (4149)'),
(190330, 39979, 0, 'Dustwallow Marsh (Stonemaul Ruins) - Solid Chest (4149)'),
(190333, 39979, 0, 'Dustwallow Marsh (Stonemaul Ruins) - Solid Chest (4149)'),
(40796, 39980, 0, 'Dustwallow Marsh (The Dragonmurk) - Solid Chest (4149)'),
(190329, 39980, 0, 'Dustwallow Marsh (The Dragonmurk) - Solid Chest (4149)'),
(190334, 39981, 0, 'Dustwallow Marsh (Dustwallow Bay) - Solid Chest (4149)'),
(55951, 39982, 0, 'Dustwallow Marsh (The Den of Flame) - Solid Chest (4149)');


-- Create pool templates
INSERT INTO pool_template VALUES
(39976, 1, 'Dustwallow Marsh (Dreadmurk Shore) - Chest Pool'),
(39977, 1, 'Dustwallow Marsh (Tidefury Cove) - Chest Pool'),
(39978, 1, 'Dustwallow Marsh - Chest Pool'),
(39979, 1, 'Dustwallow Marsh (Stonemaul Ruins) - Chest Pool'),
(39980, 1, 'Dustwallow Marsh (The Dragonmurk) - Chest Pool'),
(39981, 1, 'Dustwallow Marsh (Dustwallow Bay) - Chest Pool'),
(39982, 1, 'Dustwallow Marsh (The Den of Flame) - Chest Pool');
UPDATE pool_template SET max_limit=3 WHERE entry=39922;


-- Create pools of pools
INSERT INTO pool_pool VALUES
(39976, 39922, 0, 'Dustwallow Marsh (Dreadmurk Shore) - Chest Pool'),
(39977, 39922, 0, 'Dustwallow Marsh (Tidefury Cove) - Chest Pool'),
(39978, 39922, 0, 'Dustwallow Marsh - Chest Pool'),
(39979, 39922, 0, 'Dustwallow Marsh (Stonemaul Ruins) - Chest Pool'),
(39980, 39922, 0, 'Dustwallow Marsh (The Dragonmurk) - Chest Pool'),
(39981, 39922, 0, 'Dustwallow Marsh (Dustwallow Bay) - Chest Pool'),
(39982, 39922, 0, 'Dustwallow Marsh (The Den of Flame) - Chest Pool');


-- #######################
--  Azshara
-- #######################

-- Add missing GameObjects
DELETE FROM gameobject WHERE guid=190335;
DELETE FROM game_event_gameobject WHERE guid=190335;
DELETE FROM gameobject_battleground WHERE guid=190335;
DELETE FROM pool_gameobject WHERE guid=190335;
DELETE FROM gameobject_addon WHERE guid=190335;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(190335, 153451, 1, 3231.76, -4316.57, 131.014, 2.54818, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55954;
DELETE FROM game_event_gameobject WHERE guid=55954;
DELETE FROM gameobject_battleground WHERE guid=55954;
DELETE FROM pool_gameobject WHERE guid=55954;
DELETE FROM gameobject_addon WHERE guid=55954;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55954, 153451, 1, 3549.59, -4760.24, 110.663, 0.698132, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55955;
DELETE FROM game_event_gameobject WHERE guid=55955;
DELETE FROM gameobject_battleground WHERE guid=55955;
DELETE FROM pool_gameobject WHERE guid=55955;
DELETE FROM gameobject_addon WHERE guid=55955;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55955, 153451, 1, 3570.11, -5089.52, 84.794, -2.46091, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55956;
DELETE FROM game_event_gameobject WHERE guid=55956;
DELETE FROM gameobject_battleground WHERE guid=55956;
DELETE FROM pool_gameobject WHERE guid=55956;
DELETE FROM gameobject_addon WHERE guid=55956;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55956, 153451, 1, 3653.14, -5367.08, 111.546, 2.47837, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=45497;
DELETE FROM game_event_gameobject WHERE guid=45497;
DELETE FROM gameobject_battleground WHERE guid=45497;
DELETE FROM pool_gameobject WHERE guid=45497;
DELETE FROM gameobject_addon WHERE guid=45497;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(45497, 153453, 1, 2574.59, -5485.85, 122.168, -1.41372, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55957;
DELETE FROM game_event_gameobject WHERE guid=55957;
DELETE FROM gameobject_battleground WHERE guid=55957;
DELETE FROM pool_gameobject WHERE guid=55957;
DELETE FROM gameobject_addon WHERE guid=55957;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55957, 153453, 1, 4703.36, -5873.57, 110.646, 2.74016, 0.0, 0.0, 0.979924, 0.19937, 7200, 7200);


-- Create pools for GameObjects
INSERT INTO pool_gameobject VALUES
(48362, 39983, 0, 'Azshara - Solid Chest (153451)'),
(170074, 39983, 0, 'Azshara - Solid Chest (153451)'),
(48366, 39983, 0, 'Azshara - Solid Chest (153453)'),
(55954, 39983, 0, 'Azshara - Solid Chest (153451)'),
(48363, 39984, 0, 'Azshara (Ruins of Eldarath) - Solid Chest (153451)'),
(48365, 39984, 0, 'Azshara (Ruins of Eldarath) - Solid Chest (153451)'),
(55955, 39984, 0, 'Azshara (Ruins of Eldarath) - Solid Chest (153451)'),
(48364, 39985, 0, 'Azshara (Bear\'s Head) - Solid Chest (153451)'),
(48367, 39986, 0, 'Azshara (Temple of Arkkoran) - Solid Chest (153453)'),
(48368, 39987, 0, 'Azshara (Lake Mennar) - Solid Chest (153453)'),
(45497, 39987, 0, 'Azshara (Lake Mennar) - Solid Chest (153453)'),
(48369, 39988, 0, 'Azshara (Rethress Sanctum) - Solid Chest (153453)'),
(48370, 39989, 0, 'Azshara (Ursolan) - Solid Chest (153453)'),
(48371, 39990, 0, 'Azshara (Legash Encampment) - Solid Chest (153453)'),
(55957, 39990, 0, 'Azshara (Legash Encampment) - Solid Chest (153453)'),
(190335, 39991, 0, 'Azshara (Haldarr Encampment) - Solid Chest (153451)'),
(55956, 39992, 0, 'Azshara (Temple of Zin-Malor) - Solid Chest (153451)');


-- Create pool templates
INSERT INTO pool_template VALUES
(39983, 1, 'Azshara - Chest Pool'),
(39984, 1, 'Azshara (Ruins of Eldarath) - Chest Pool'),
(39985, 1, 'Azshara (Bear\'s Head) - Chest Pool'),
(39986, 1, 'Azshara (Temple of Arkkoran) - Chest Pool'),
(39987, 1, 'Azshara (Lake Mennar) - Chest Pool'),
(39988, 1, 'Azshara (Rethress Sanctum) - Chest Pool'),
(39989, 1, 'Azshara (Ursolan) - Chest Pool'),
(39990, 1, 'Azshara (Legash Encampment) - Chest Pool'),
(39991, 1, 'Azshara (Haldarr Encampment) - Chest Pool'),
(39992, 1, 'Azshara (Temple of Zin-Malor) - Chest Pool');
UPDATE pool_template SET max_limit=4 WHERE entry=39929;


-- Create pools of pools
INSERT INTO pool_pool VALUES
(39983, 39929, 0, 'Azshara - Chest Pool'),
(39984, 39929, 0, 'Azshara (Ruins of Eldarath) - Chest Pool'),
(39985, 39929, 0, 'Azshara (Bear\'s Head) - Chest Pool'),
(39986, 39929, 0, 'Azshara (Temple of Arkkoran) - Chest Pool'),
(39987, 39929, 0, 'Azshara (Lake Mennar) - Chest Pool'),
(39988, 39929, 0, 'Azshara (Rethress Sanctum) - Chest Pool'),
(39989, 39929, 0, 'Azshara (Ursolan) - Chest Pool'),
(39990, 39929, 0, 'Azshara (Legash Encampment) - Chest Pool'),
(39991, 39929, 0, 'Azshara (Haldarr Encampment) - Chest Pool'),
(39992, 39929, 0, 'Azshara (Temple of Zin-Malor) - Chest Pool');


-- #######################
--  Stranglethorn Vale
-- #######################

-- Add missing GameObjects
DELETE FROM gameobject WHERE guid=55502;
DELETE FROM game_event_gameobject WHERE guid=55502;
DELETE FROM gameobject_battleground WHERE guid=55502;
DELETE FROM pool_gameobject WHERE guid=55502;
DELETE FROM gameobject_addon WHERE guid=55502;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55502, 2855, 0, -11993.8, -521.213, 11.9682, -2.11185, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55504;
DELETE FROM game_event_gameobject WHERE guid=55504;
DELETE FROM gameobject_battleground WHERE guid=55504;
DELETE FROM pool_gameobject WHERE guid=55504;
DELETE FROM gameobject_addon WHERE guid=55504;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55504, 2855, 0, -11567.4, -574.548, 28.9122, 2.42601, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55506;
DELETE FROM game_event_gameobject WHERE guid=55506;
DELETE FROM gameobject_battleground WHERE guid=55506;
DELETE FROM pool_gameobject WHERE guid=55506;
DELETE FROM gameobject_addon WHERE guid=55506;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55506, 2855, 0, -11596.3, -614.14, 28.3598, -0.785397, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55507;
DELETE FROM game_event_gameobject WHERE guid=55507;
DELETE FROM gameobject_battleground WHERE guid=55507;
DELETE FROM pool_gameobject WHERE guid=55507;
DELETE FROM gameobject_addon WHERE guid=55507;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55507, 2855, 0, -12432.5, 613.969, -100.412, -2.3911, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55758;
DELETE FROM game_event_gameobject WHERE guid=55758;
DELETE FROM gameobject_battleground WHERE guid=55758;
DELETE FROM pool_gameobject WHERE guid=55758;
DELETE FROM gameobject_addon WHERE guid=55758;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55758, 2855, 0, -12148.2, 626.385, -70.0408, 2.86233, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55510;
DELETE FROM game_event_gameobject WHERE guid=55510;
DELETE FROM gameobject_battleground WHERE guid=55510;
DELETE FROM pool_gameobject WHERE guid=55510;
DELETE FROM gameobject_addon WHERE guid=55510;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55510, 2857, 0, -11508.4, 737.012, 61.4116, -2.51327, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55511;
DELETE FROM game_event_gameobject WHERE guid=55511;
DELETE FROM gameobject_battleground WHERE guid=55511;
DELETE FROM pool_gameobject WHERE guid=55511;
DELETE FROM gameobject_addon WHERE guid=55511;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55511, 2857, 0, -12500.7, -138.633, 14.2271, -1.91986, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55513;
DELETE FROM game_event_gameobject WHERE guid=55513;
DELETE FROM gameobject_battleground WHERE guid=55513;
DELETE FROM pool_gameobject WHERE guid=55513;
DELETE FROM gameobject_addon WHERE guid=55513;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55513, 2857, 0, -11469.1, -875.912, 36.3852, 2.1293, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55516;
DELETE FROM game_event_gameobject WHERE guid=55516;
DELETE FROM gameobject_battleground WHERE guid=55516;
DELETE FROM pool_gameobject WHERE guid=55516;
DELETE FROM gameobject_addon WHERE guid=55516;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55516, 2857, 0, -11504.7, -945.71, 29.2273, 1.13446, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55517;
DELETE FROM game_event_gameobject WHERE guid=55517;
DELETE FROM gameobject_battleground WHERE guid=55517;
DELETE FROM pool_gameobject WHERE guid=55517;
DELETE FROM gameobject_addon WHERE guid=55517;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55517, 2857, 0, -12682.9, -446.287, 32.5956, -2.3911, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=190336;
DELETE FROM game_event_gameobject WHERE guid=190336;
DELETE FROM gameobject_battleground WHERE guid=190336;
DELETE FROM pool_gameobject WHERE guid=190336;
DELETE FROM gameobject_addon WHERE guid=190336;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(190336, 4149, 0, -13085.6, -608.238, 54.7299, 0.122173, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=190337;
DELETE FROM game_event_gameobject WHERE guid=190337;
DELETE FROM gameobject_battleground WHERE guid=190337;
DELETE FROM pool_gameobject WHERE guid=190337;
DELETE FROM gameobject_addon WHERE guid=190337;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(190337, 4149, 0, -12938.7, -636.273, 53.2873, 2.68781, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55531;
DELETE FROM game_event_gameobject WHERE guid=55531;
DELETE FROM gameobject_battleground WHERE guid=55531;
DELETE FROM pool_gameobject WHERE guid=55531;
DELETE FROM gameobject_addon WHERE guid=55531;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55531, 4149, 0, -14610.4, -363.52, 7.1323, 0.052359, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55532;
DELETE FROM game_event_gameobject WHERE guid=55532;
DELETE FROM gameobject_battleground WHERE guid=55532;
DELETE FROM pool_gameobject WHERE guid=55532;
DELETE FROM gameobject_addon WHERE guid=55532;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55532, 4149, 0, -14607.9, 335.261, 2.35503, -1.01229, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55533;
DELETE FROM game_event_gameobject WHERE guid=55533;
DELETE FROM gameobject_battleground WHERE guid=55533;
DELETE FROM pool_gameobject WHERE guid=55533;
DELETE FROM gameobject_addon WHERE guid=55533;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55533, 4149, 0, -13141.3, -471.359, 53.0697, 0.733038, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55534;
DELETE FROM game_event_gameobject WHERE guid=55534;
DELETE FROM gameobject_battleground WHERE guid=55534;
DELETE FROM pool_gameobject WHERE guid=55534;
DELETE FROM gameobject_addon WHERE guid=55534;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55534, 4149, 0, -12386.2, -1068.35, 3.54067, 0.610864, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55540;
DELETE FROM game_event_gameobject WHERE guid=55540;
DELETE FROM gameobject_battleground WHERE guid=55540;
DELETE FROM pool_gameobject WHERE guid=55540;
DELETE FROM gameobject_addon WHERE guid=55540;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55540, 4149, 0, -14874.5, 304.62, 0.425162, 0.174532, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55764;
DELETE FROM game_event_gameobject WHERE guid=55764;
DELETE FROM gameobject_battleground WHERE guid=55764;
DELETE FROM pool_gameobject WHERE guid=55764;
DELETE FROM gameobject_addon WHERE guid=55764;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55764, 4149, 0, -14812.9, -373.351, 6.51484, 1.13446, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55765;
DELETE FROM game_event_gameobject WHERE guid=55765;
DELETE FROM gameobject_battleground WHERE guid=55765;
DELETE FROM pool_gameobject WHERE guid=55765;
DELETE FROM gameobject_addon WHERE guid=55765;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55765, 4149, 0, -14920.7, 68.7844, 0.245401, 1.5708, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55766;
DELETE FROM game_event_gameobject WHERE guid=55766;
DELETE FROM gameobject_battleground WHERE guid=55766;
DELETE FROM pool_gameobject WHERE guid=55766;
DELETE FROM gameobject_addon WHERE guid=55766;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55766, 4149, 0, -13214.4, -485.175, 4.63056, -1.65806, 0.0, 0.0, 0.0, 0.0, 7200, 7200);


-- Create pools for GameObjects
INSERT INTO pool_gameobject VALUES
(11970, 39993, 0, 'Stranglethorn Vale (Venture Co. Base Camp) - Solid Chest (2855)'),
(55502, 39993, 0, 'Stranglethorn Vale (Venture Co. Base Camp) - Solid Chest (2855)'),
(12048, 39994, 0, 'Stranglethorn Vale (Kurzen\'s Compound) - Solid Chest (2855)'),
(12049, 39994, 0, 'Stranglethorn Vale (Kurzen\'s Compound) - Solid Chest (2857)'),
(55504, 39994, 0, 'Stranglethorn Vale (Kurzen\'s Compound) - Solid Chest (2855)'),
(55506, 39994, 0, 'Stranglethorn Vale (Kurzen\'s Compound) - Solid Chest (2855)'),
(55513, 39994, 0, 'Stranglethorn Vale (Kurzen\'s Compound) - Solid Chest (2857)'),
(12054, 39995, 0, 'Stranglethorn Vale (Ruins of Zul\'Kunda) - Solid Chest (2855)'),
(11691, 39995, 0, 'Stranglethorn Vale (Ruins of Zul\'Kunda) - Solid Chest (2857)'),
(55510, 39995, 0, 'Stranglethorn Vale (Ruins of Zul\'Kunda) - Solid Chest (2857)'),
(12119, 39996, 0, 'Stranglethorn Vale (Kal\'ai Ruins) - Solid Chest (2857)'),
(12169, 39997, 0, 'Stranglethorn Vale (Ruins of Zul\'Mamwe) - Solid Chest (2857)'),
(11704, 39997, 0, 'Stranglethorn Vale (Ruins of Zul\'Mamwe) - Solid Chest (4149)'),
(190336, 39997, 0, 'Stranglethorn Vale (Ruins of Zul\'Mamwe) - Solid Chest (4149)'),
(190337, 39997, 0, 'Stranglethorn Vale (Ruins of Zul\'Mamwe) - Solid Chest (4149)'),
(11651, 39998, 0, 'Stranglethorn Vale (Wild Shore) - Solid Chest (4149)'),
(12157, 39998, 0, 'Stranglethorn Vale (Wild Shore) - Solid Chest (4149)'),
(55532, 39998, 0, 'Stranglethorn Vale (Wild Shore) - Solid Chest (4149)'),
(55540, 39998, 0, 'Stranglethorn Vale (Wild Shore) - Solid Chest (4149)'),
(55765, 39998, 0, 'Stranglethorn Vale (Wild Shore) - Solid Chest (4149)'),
(11676, 39999, 0, 'Stranglethorn Vale (Jaguero Isle) - Solid Chest (4149)'),
(55531, 39999, 0, 'Stranglethorn Vale (Jaguero Isle) - Solid Chest (4149)'),
(55764, 39999, 0, 'Stranglethorn Vale (Jaguero Isle) - Solid Chest (4149)'),
(11693, 40000, 0, 'Stranglethorn Vale (Mosh\'Ogg Ogre Mound) - Solid Chest (4149)'),
(55534, 40000, 0, 'Stranglethorn Vale (Mosh\'Ogg Ogre Mound) - Solid Chest (4149)'),
(11695, 40001, 0, 'Stranglethorn Vale - Solid Chest (4149)'),
(55516, 40001, 0, 'Stranglethorn Vale - Solid Chest (2857)'),
(11806, 40002, 0, 'Stranglethorn Vale (Ruins of Jubuwal) - Solid Chest (4149)'),
(12185, 40003, 0, 'Stranglethorn Vale (Nek\'mani Wellspring) - Solid Chest (4149)'),
(29256, 40004, 0, 'Stranglethorn Vale (Crystalvein Mine) - Solid Chest (4149)'),
(55766, 40004, 0, 'Stranglethorn Vale (Crystalvein Mine) - Solid Chest (4149)'),
(55507, 40005, 0, 'Stranglethorn Vale (The Vile Reef) - Solid Chest (2855)'),
(55758, 40005, 0, 'Stranglethorn Vale (The Vile Reef) - Solid Chest (2855)'),
(55511, 40006, 0, 'Stranglethorn Vale (Mizjah Ruins) - Solid Chest (2857)'),
(55517, 40007, 0, 'Stranglethorn Vale (Ziata\'jai Ruins) - Solid Chest (2857)'),
(55533, 40008, 0, 'Stranglethorn Vale (The Cape of Stranglethorn) - Solid Chest (4149)');


-- Create pool templates
INSERT INTO pool_template VALUES
(39993, 1, 'Stranglethorn Vale (Venture Co. Base Camp) - Chest Pool'),
(39994, 1, 'Stranglethorn Vale (Kurzen\'s Compound) - Chest Pool'),
(39995, 1, 'Stranglethorn Vale (Ruins of Zul\'Kunda) - Chest Pool'),
(39996, 1, 'Stranglethorn Vale (Kal\'ai Ruins) - Chest Pool'),
(39997, 1, 'Stranglethorn Vale (Ruins of Zul\'Mamwe) - Chest Pool'),
(39998, 1, 'Stranglethorn Vale (Wild Shore) - Chest Pool'),
(39999, 1, 'Stranglethorn Vale (Jaguero Isle) - Chest Pool'),
(40000, 1, 'Stranglethorn Vale (Mosh\'Ogg Ogre Mound) - Chest Pool'),
(40001, 1, 'Stranglethorn Vale - Chest Pool'),
(40002, 1, 'Stranglethorn Vale (Ruins of Jubuwal) - Chest Pool'),
(40003, 1, 'Stranglethorn Vale (Nek\'mani Wellspring) - Chest Pool'),
(40004, 1, 'Stranglethorn Vale (Crystalvein Mine) - Chest Pool'),
(40005, 1, 'Stranglethorn Vale (The Vile Reef) - Chest Pool'),
(40006, 1, 'Stranglethorn Vale (Mizjah Ruins) - Chest Pool'),
(40007, 1, 'Stranglethorn Vale (Ziata\'jai Ruins) - Chest Pool'),
(40008, 1, 'Stranglethorn Vale (The Cape of Stranglethorn) - Chest Pool');
UPDATE pool_template SET max_limit=5 WHERE entry=39921;


-- Create pools of pools
INSERT INTO pool_pool VALUES
(39993, 39921, 0, 'Stranglethorn Vale (Venture Co. Base Camp) - Chest Pool'),
(39994, 39921, 0, 'Stranglethorn Vale (Kurzen\'s Compound) - Chest Pool'),
(39995, 39921, 0, 'Stranglethorn Vale (Ruins of Zul\'Kunda) - Chest Pool'),
(39996, 39921, 0, 'Stranglethorn Vale (Kal\'ai Ruins) - Chest Pool'),
(39997, 39921, 0, 'Stranglethorn Vale (Ruins of Zul\'Mamwe) - Chest Pool'),
(39998, 39921, 0, 'Stranglethorn Vale (Wild Shore) - Chest Pool'),
(39999, 39921, 0, 'Stranglethorn Vale (Jaguero Isle) - Chest Pool'),
(40000, 39921, 0, 'Stranglethorn Vale (Mosh\'Ogg Ogre Mound) - Chest Pool'),
(40001, 39921, 0, 'Stranglethorn Vale - Chest Pool'),
(40002, 39921, 0, 'Stranglethorn Vale (Ruins of Jubuwal) - Chest Pool'),
(40003, 39921, 0, 'Stranglethorn Vale (Nek\'mani Wellspring) - Chest Pool'),
(40004, 39921, 0, 'Stranglethorn Vale (Crystalvein Mine) - Chest Pool'),
(40005, 39921, 0, 'Stranglethorn Vale (The Vile Reef) - Chest Pool'),
(40006, 39921, 0, 'Stranglethorn Vale (Mizjah Ruins) - Chest Pool'),
(40007, 39921, 0, 'Stranglethorn Vale (Ziata\'jai Ruins) - Chest Pool'),
(40008, 39921, 0, 'Stranglethorn Vale (The Cape of Stranglethorn) - Chest Pool');


-- #######################
--  Alterac Mountains
-- #######################

-- Add missing GameObjects
DELETE FROM gameobject WHERE guid=55500;
DELETE FROM game_event_gameobject WHERE guid=55500;
DELETE FROM gameobject_battleground WHERE guid=55500;
DELETE FROM pool_gameobject WHERE guid=55500;
DELETE FROM gameobject_addon WHERE guid=55500;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55500, 2855, 0, 677.372, -926.412, 171.805, -0.733038, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55501;
DELETE FROM game_event_gameobject WHERE guid=55501;
DELETE FROM gameobject_battleground WHERE guid=55501;
DELETE FROM pool_gameobject WHERE guid=55501;
DELETE FROM gameobject_addon WHERE guid=55501;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55501, 2855, 0, 752.184, -377.159, 141.791, 1.79769, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55505;
DELETE FROM game_event_gameobject WHERE guid=55505;
DELETE FROM gameobject_battleground WHERE guid=55505;
DELETE FROM pool_gameobject WHERE guid=55505;
DELETE FROM gameobject_addon WHERE guid=55505;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55505, 2855, 0, -191.322, -330.404, 53.1275, -0.349065, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55759;
DELETE FROM game_event_gameobject WHERE guid=55759;
DELETE FROM gameobject_battleground WHERE guid=55759;
DELETE FROM pool_gameobject WHERE guid=55759;
DELETE FROM gameobject_addon WHERE guid=55759;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55759, 2855, 0, 697.147, -930.974, 171.805, -1.81514, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55512;
DELETE FROM game_event_gameobject WHERE guid=55512;
DELETE FROM gameobject_battleground WHERE guid=55512;
DELETE FROM pool_gameobject WHERE guid=55512;
DELETE FROM gameobject_addon WHERE guid=55512;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55512, 2857, 0, 472.865, -227.961, 176.602, -2.61799, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55761;
DELETE FROM game_event_gameobject WHERE guid=55761;
DELETE FROM gameobject_battleground WHERE guid=55761;
DELETE FROM pool_gameobject WHERE guid=55761;
DELETE FROM gameobject_addon WHERE guid=55761;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55761, 2857, 0, 1218.23, -266.605, 34.6575, -1.13446, 0.0, 0.0, 0.0, 0.0, 7200, 7200);


-- Create pools for GameObjects
INSERT INTO pool_gameobject VALUES
(30033, 40009, 0, 'Alterac Mountains (The Headland) - Solid Chest (2855)'),
(55505, 40009, 0, 'Alterac Mountains (The Headland) - Solid Chest (2855)'),
(33206, 40010, 0, 'Alterac Mountains (Strahnbrad) - Solid Chest (2855)'),
(33207, 40010, 0, 'Alterac Mountains (Strahnbrad) - Solid Chest (2855)'),
(55500, 40010, 0, 'Alterac Mountains (Strahnbrad) - Solid Chest (2855)'),
(55759, 40010, 0, 'Alterac Mountains (Strahnbrad) - Solid Chest (2855)'),
(33304, 40011, 0, 'Alterac Mountains (Ruins of Alterac) - Solid Chest (2855)'),
(33200, 40011, 0, 'Alterac Mountains (Ruins of Alterac) - Solid Chest (2857)'),
(55501, 40011, 0, 'Alterac Mountains (Ruins of Alterac) - Solid Chest (2855)'),
(55512, 40011, 0, 'Alterac Mountains (Ruins of Alterac) - Solid Chest (2857)'),
(33193, 40012, 0, 'Alterac Mountains (The Uplands) - Solid Chest (2857)'),
(33208, 40013, 0, 'Alterac Mountains (Dandred\'s Fold) - Solid Chest (2857)'),
(55761, 40013, 0, 'Alterac Mountains (Dandred\'s Fold) - Solid Chest (2857)');


-- Create pool templates
INSERT INTO pool_template VALUES
(40009, 1, 'Alterac Mountains (The Headland) - Chest Pool'),
(40010, 1, 'Alterac Mountains (Strahnbrad) - Chest Pool'),
(40011, 1, 'Alterac Mountains (Ruins of Alterac) - Chest Pool'),
(40012, 1, 'Alterac Mountains (The Uplands) - Chest Pool'),
(40013, 1, 'Alterac Mountains (Dandred\'s Fold) - Chest Pool');
UPDATE pool_template SET max_limit=3 WHERE entry=39918;


-- Create pools of pools
INSERT INTO pool_pool VALUES
(40009, 39918, 0, 'Alterac Mountains (The Headland) - Chest Pool'),
(40010, 39918, 0, 'Alterac Mountains (Strahnbrad) - Chest Pool'),
(40011, 39918, 0, 'Alterac Mountains (Ruins of Alterac) - Chest Pool'),
(40012, 39918, 0, 'Alterac Mountains (The Uplands) - Chest Pool'),
(40013, 39918, 0, 'Alterac Mountains (Dandred\'s Fold) - Chest Pool');


-- #######################
--  Westfall
-- #######################

-- Add missing GameObjects
DELETE FROM gameobject WHERE guid=55462;
DELETE FROM game_event_gameobject WHERE guid=55462;
DELETE FROM gameobject_battleground WHERE guid=55462;
DELETE FROM pool_gameobject WHERE guid=55462;
DELETE FROM gameobject_addon WHERE guid=55462;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55462, 2849, 0, -11281.2, 1515.82, 37.9021, 1.309, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55464;
DELETE FROM game_event_gameobject WHERE guid=55464;
DELETE FROM gameobject_battleground WHERE guid=55464;
DELETE FROM pool_gameobject WHERE guid=55464;
DELETE FROM gameobject_addon WHERE guid=55464;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55464, 2849, 0, -11325.4, 1566.37, 26.491, -3.08918, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55466;
DELETE FROM game_event_gameobject WHERE guid=55466;
DELETE FROM gameobject_battleground WHERE guid=55466;
DELETE FROM pool_gameobject WHERE guid=55466;
DELETE FROM gameobject_addon WHERE guid=55466;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55466, 2849, 0, -11138.8, 1047.61, 34.5638, -1.98967, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55545;
DELETE FROM game_event_gameobject WHERE guid=55545;
DELETE FROM gameobject_battleground WHERE guid=55545;
DELETE FROM pool_gameobject WHERE guid=55545;
DELETE FROM gameobject_addon WHERE guid=55545;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55545, 106319, 0, -10720.5, 1851.11, 34.3774, 1.18682, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55546;
DELETE FROM game_event_gameobject WHERE guid=55546;
DELETE FROM gameobject_battleground WHERE guid=55546;
DELETE FROM pool_gameobject WHERE guid=55546;
DELETE FROM gameobject_addon WHERE guid=55546;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55546, 106319, 0, -10355.7, 1563.4, 41.7598, 1.09956, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55548;
DELETE FROM game_event_gameobject WHERE guid=55548;
DELETE FROM gameobject_battleground WHERE guid=55548;
DELETE FROM pool_gameobject WHERE guid=55548;
DELETE FROM gameobject_addon WHERE guid=55548;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55548, 106319, 0, -9579.93, 1445.71, 0.427918, -1.62316, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55549;
DELETE FROM game_event_gameobject WHERE guid=55549;
DELETE FROM gameobject_battleground WHERE guid=55549;
DELETE FROM pool_gameobject WHERE guid=55549;
DELETE FROM gameobject_addon WHERE guid=55549;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55549, 106319, 0, -10557.7, 1990.01, -14.0808, -3.03684, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55550;
DELETE FROM game_event_gameobject WHERE guid=55550;
DELETE FROM gameobject_battleground WHERE guid=55550;
DELETE FROM pool_gameobject WHERE guid=55550;
DELETE FROM gameobject_addon WHERE guid=55550;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55550, 106319, 0, -9845.5, 1040.19, 34.0109, -2.33874, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55551;
DELETE FROM game_event_gameobject WHERE guid=55551;
DELETE FROM gameobject_battleground WHERE guid=55551;
DELETE FROM pool_gameobject WHERE guid=55551;
DELETE FROM gameobject_addon WHERE guid=55551;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55551, 106319, 0, -9847.33, 1409.7, 38.8322, -0.366518, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55552;
DELETE FROM game_event_gameobject WHERE guid=55552;
DELETE FROM gameobject_battleground WHERE guid=55552;
DELETE FROM pool_gameobject WHERE guid=55552;
DELETE FROM gameobject_addon WHERE guid=55552;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55552, 106319, 0, -9711.97, 1043.76, 35.4919, -0.506145, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55553;
DELETE FROM game_event_gameobject WHERE guid=55553;
DELETE FROM gameobject_battleground WHERE guid=55553;
DELETE FROM pool_gameobject WHERE guid=55553;
DELETE FROM gameobject_addon WHERE guid=55553;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55553, 106319, 0, -10820.5, 1320.3, 34.2893, 2.94959, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55554;
DELETE FROM game_event_gameobject WHERE guid=55554;
DELETE FROM gameobject_battleground WHERE guid=55554;
DELETE FROM pool_gameobject WHERE guid=55554;
DELETE FROM gameobject_addon WHERE guid=55554;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55554, 106319, 0, -11043.9, 1426.59, 44.3597, -0.052359, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55555;
DELETE FROM game_event_gameobject WHERE guid=55555;
DELETE FROM gameobject_battleground WHERE guid=55555;
DELETE FROM pool_gameobject WHERE guid=55555;
DELETE FROM gameobject_addon WHERE guid=55555;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55555, 106319, 0, -10537.5, 1995.89, -8.45719, 1.72787, 0.0, 0.0, 0.0, 0.0, 7200, 7200);


-- Create pools for GameObjects
INSERT INTO pool_gameobject VALUES
(42684, 40014, 0, 'Westfall (The Dagger Hills) - Battered Chest (2849)'),
(55462, 40014, 0, 'Westfall (The Dagger Hills) - Battered Chest (2849)'),
(55464, 40014, 0, 'Westfall (The Dagger Hills) - Battered Chest (2849)'),
(42734, 40015, 0, 'Westfall (The Dust Plains) - Battered Chest (2849)'),
(55466, 40015, 0, 'Westfall (The Dust Plains) - Battered Chest (2849)'),
(42748, 40016, 0, 'Westfall (Moonbrook) - Battered Chest (2849)'),
(42681, 40016, 0, 'Westfall (Moonbrook) - Battered Chest (106319)'),
(42738, 40016, 0, 'Westfall (Moonbrook) - Battered Chest (106319)'),
(55554, 40016, 0, 'Westfall (Moonbrook) - Battered Chest (106319)'),
(42680, 40017, 0, 'Westfall (Gold Coast Quarry) - Battered Chest (106319)'),
(42718, 40018, 0, 'Westfall (Jangolode Mine) - Battered Chest (106319)'),
(42739, 40018, 0, 'Westfall (Jangolode Mine) - Battered Chest (106319)'),
(55551, 40018, 0, 'Westfall (Jangolode Mine) - Battered Chest (106319)'),
(42719, 40019, 0, 'Westfall - Battered Chest (106319)'),
(42788, 40019, 0, 'Westfall - Battered Chest (106319)'),
(55546, 40019, 0, 'Westfall - Battered Chest (106319)'),
(42736, 40020, 0, 'Westfall (The Dead Acre) - Battered Chest (106319)'),
(42749, 40021, 0, 'Westfall (Longshore) - Battered Chest (106319)'),
(55548, 40021, 0, 'Westfall (Longshore) - Battered Chest (106319)'),
(55545, 40022, 0, 'Westfall (Alexston Farmstead) - Battered Chest (106319)'),
(55549, 40022, 0, 'Westfall (Alexston Farmstead) - Battered Chest (106319)'),
(55555, 40022, 0, 'Westfall (Alexston Farmstead) - Battered Chest (106319)'),
(55550, 40023, 0, 'Westfall (The Jansen Stead) - Battered Chest (106319)'),
(55552, 40023, 0, 'Westfall (The Jansen Stead) - Battered Chest (106319)'),
(55553, 40024, 0, 'Westfall (Stendel\'s Pond) - Battered Chest (106319)');


-- Create pool templates
INSERT INTO pool_template VALUES
(40014, 1, 'Westfall (The Dagger Hills) - Chest Pool'),
(40015, 1, 'Westfall (The Dust Plains) - Chest Pool'),
(40016, 1, 'Westfall (Moonbrook) - Chest Pool'),
(40017, 1, 'Westfall (Gold Coast Quarry) - Chest Pool'),
(40018, 1, 'Westfall (Jangolode Mine) - Chest Pool'),
(40019, 1, 'Westfall - Chest Pool'),
(40020, 1, 'Westfall (The Dead Acre) - Chest Pool'),
(40021, 1, 'Westfall (Longshore) - Chest Pool'),
(40022, 1, 'Westfall (Alexston Farmstead) - Chest Pool'),
(40023, 1, 'Westfall (The Jansen Stead) - Chest Pool'),
(40024, 1, 'Westfall (Stendel\'s Pond) - Chest Pool');
UPDATE pool_template SET max_limit=3 WHERE entry=39909;


-- Create pools of pools
INSERT INTO pool_pool VALUES
(40014, 39909, 0, 'Westfall (The Dagger Hills) - Chest Pool'),
(40015, 39909, 0, 'Westfall (The Dust Plains) - Chest Pool'),
(40016, 39909, 0, 'Westfall (Moonbrook) - Chest Pool'),
(40017, 39909, 0, 'Westfall (Gold Coast Quarry) - Chest Pool'),
(40018, 39909, 0, 'Westfall (Jangolode Mine) - Chest Pool'),
(40019, 39909, 0, 'Westfall - Chest Pool'),
(40020, 39909, 0, 'Westfall (The Dead Acre) - Chest Pool'),
(40021, 39909, 0, 'Westfall (Longshore) - Chest Pool'),
(40022, 39909, 0, 'Westfall (Alexston Farmstead) - Chest Pool'),
(40023, 39909, 0, 'Westfall (The Jansen Stead) - Chest Pool'),
(40024, 39909, 0, 'Westfall (Stendel\'s Pond) - Chest Pool');


-- #######################
--  Arathi Highlands
-- #######################

-- Add missing GameObjects
DELETE FROM gameobject WHERE guid=55503;
DELETE FROM game_event_gameobject WHERE guid=55503;
DELETE FROM gameobject_battleground WHERE guid=55503;
DELETE FROM pool_gameobject WHERE guid=55503;
DELETE FROM gameobject_addon WHERE guid=55503;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55503, 2855, 0, -1699.2, -3514.54, 60.47, 1.16, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55514;
DELETE FROM game_event_gameobject WHERE guid=55514;
DELETE FROM gameobject_battleground WHERE guid=55514;
DELETE FROM pool_gameobject WHERE guid=55514;
DELETE FROM gameobject_addon WHERE guid=55514;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55514, 2857, 0, -934.741, -3846.92, 147.729, -0.349065, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55515;
DELETE FROM game_event_gameobject WHERE guid=55515;
DELETE FROM gameobject_battleground WHERE guid=55515;
DELETE FROM pool_gameobject WHERE guid=55515;
DELETE FROM gameobject_addon WHERE guid=55515;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55515, 2857, 0, -1950.47, -2803.63, 80.7643, -2.44346, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55518;
DELETE FROM game_event_gameobject WHERE guid=55518;
DELETE FROM gameobject_battleground WHERE guid=55518;
DELETE FROM pool_gameobject WHERE guid=55518;
DELETE FROM gameobject_addon WHERE guid=55518;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55518, 2857, 0, -1712.67, -1793.71, 101.708, -2.426, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55519;
DELETE FROM game_event_gameobject WHERE guid=55519;
DELETE FROM gameobject_battleground WHERE guid=55519;
DELETE FROM pool_gameobject WHERE guid=55519;
DELETE FROM gameobject_addon WHERE guid=55519;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55519, 2857, 0, -1732.96, -1522.51, 55.1346, -1.95477, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55520;
DELETE FROM game_event_gameobject WHERE guid=55520;
DELETE FROM gameobject_battleground WHERE guid=55520;
DELETE FROM pool_gameobject WHERE guid=55520;
DELETE FROM gameobject_addon WHERE guid=55520;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55520, 2857, 0, -1986.08, -2782.04, 81.5256, 0.925024, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55521;
DELETE FROM game_event_gameobject WHERE guid=55521;
DELETE FROM gameobject_battleground WHERE guid=55521;
DELETE FROM pool_gameobject WHERE guid=55521;
DELETE FROM gameobject_addon WHERE guid=55521;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55521, 2857, 0, -862.458, -3948.8, 152.344, -0.017452, 0.0, 0.0, 0.0, 0.0, 7200, 7200);


-- Create pools for GameObjects
INSERT INTO pool_gameobject VALUES
(16648, 40025, 0, 'Arathi Highlands (Witherbark Village) - Solid Chest (2855)'),
(16950, 40025, 0, 'Arathi Highlands (Witherbark Village) - Solid Chest (2855)'),
(55503, 40025, 0, 'Arathi Highlands (Witherbark Village) - Solid Chest (2855)'),
(16946, 40026, 0, 'Arathi Highlands (Northfold Manor) - Solid Chest (2855)'),
(16789, 40027, 0, 'Arathi Highlands (Stromgarde Keep) - Solid Chest (2857)'),
(16978, 40027, 0, 'Arathi Highlands (Stromgarde Keep) - Solid Chest (2857)'),
(55518, 40027, 0, 'Arathi Highlands (Stromgarde Keep) - Solid Chest (2857)'),
(55519, 40027, 0, 'Arathi Highlands (Stromgarde Keep) - Solid Chest (2857)'),
(16794, 40028, 0, 'Arathi Highlands (The Drowned Reef) - Solid Chest (2857)'),
(10460, 40028, 0, 'Arathi Highlands (The Drowned Reef) - Solid Chest (2857)'),
(16949, 40029, 0, 'Arathi Highlands (Boulderfist Hall) - Solid Chest (2857)'),
(55515, 40029, 0, 'Arathi Highlands (Boulderfist Hall) - Solid Chest (2857)'),
(55520, 40029, 0, 'Arathi Highlands (Boulderfist Hall) - Solid Chest (2857)'),
(16977, 40030, 0, 'Arathi Highlands - Solid Chest (2857)'),
(55521, 40030, 0, 'Arathi Highlands - Solid Chest (2857)'),
(55514, 40031, 0, 'Arathi Highlands (Drywhisker Gorge) - Solid Chest (2857)');


-- Create pool templates
INSERT INTO pool_template VALUES
(40025, 1, 'Arathi Highlands (Witherbark Village) - Chest Pool'),
(40026, 1, 'Arathi Highlands (Northfold Manor) - Chest Pool'),
(40027, 1, 'Arathi Highlands (Stromgarde Keep) - Chest Pool'),
(40028, 1, 'Arathi Highlands (The Drowned Reef) - Chest Pool'),
(40029, 1, 'Arathi Highlands (Boulderfist Hall) - Chest Pool'),
(40030, 1, 'Arathi Highlands - Chest Pool'),
(40031, 1, 'Arathi Highlands (Drywhisker Gorge) - Chest Pool');
UPDATE pool_template SET max_limit=4 WHERE entry=39919;


-- Create pools of pools
INSERT INTO pool_pool VALUES
(40025, 39919, 0, 'Arathi Highlands (Witherbark Village) - Chest Pool'),
(40026, 39919, 0, 'Arathi Highlands (Northfold Manor) - Chest Pool'),
(40027, 39919, 0, 'Arathi Highlands (Stromgarde Keep) - Chest Pool'),
(40028, 39919, 0, 'Arathi Highlands (The Drowned Reef) - Chest Pool'),
(40029, 39919, 0, 'Arathi Highlands (Boulderfist Hall) - Chest Pool'),
(40030, 39919, 0, 'Arathi Highlands - Chest Pool'),
(40031, 39919, 0, 'Arathi Highlands (Drywhisker Gorge) - Chest Pool');


-- #######################
--  The Hinterlands
-- #######################

-- Add missing GameObjects
DELETE FROM gameobject WHERE guid=190338;
DELETE FROM game_event_gameobject WHERE guid=190338;
DELETE FROM gameobject_battleground WHERE guid=190338;
DELETE FROM pool_gameobject WHERE guid=190338;
DELETE FROM gameobject_addon WHERE guid=190338;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(190338, 4149, 0, -477.565, -2814.38, 110.539, -2.84488, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55535;
DELETE FROM game_event_gameobject WHERE guid=55535;
DELETE FROM gameobject_battleground WHERE guid=55535;
DELETE FROM pool_gameobject WHERE guid=55535;
DELETE FROM gameobject_addon WHERE guid=55535;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55535, 4149, 0, -382.985, -3008.53, 109.563, 1.09956, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55561;
DELETE FROM game_event_gameobject WHERE guid=55561;
DELETE FROM gameobject_battleground WHERE guid=55561;
DELETE FROM pool_gameobject WHERE guid=55561;
DELETE FROM gameobject_addon WHERE guid=55561;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55561, 153451, 0, -245.525, -4179.18, 121.946, -0.069812, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55562;
DELETE FROM game_event_gameobject WHERE guid=55562;
DELETE FROM gameobject_battleground WHERE guid=55562;
DELETE FROM pool_gameobject WHERE guid=55562;
DELETE FROM gameobject_addon WHERE guid=55562;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55562, 153451, 0, -256.567, -3821.27, 238.351, -0.802851, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55564;
DELETE FROM game_event_gameobject WHERE guid=55564;
DELETE FROM gameobject_battleground WHERE guid=55564;
DELETE FROM pool_gameobject WHERE guid=55564;
DELETE FROM gameobject_addon WHERE guid=55564;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55564, 153451, 0, 445.376, -3321.57, 120.824, 1.01229, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55565;
DELETE FROM game_event_gameobject WHERE guid=55565;
DELETE FROM gameobject_battleground WHERE guid=55565;
DELETE FROM pool_gameobject WHERE guid=55565;
DELETE FROM gameobject_addon WHERE guid=55565;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55565, 153451, 0, 213.652, -4312.45, 117.838, -1.37881, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55566;
DELETE FROM game_event_gameobject WHERE guid=55566;
DELETE FROM gameobject_battleground WHERE guid=55566;
DELETE FROM pool_gameobject WHERE guid=55566;
DELETE FROM gameobject_addon WHERE guid=55566;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55566, 153451, 0, -678.642, -4035.07, 238.373, -1.71042, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55569;
DELETE FROM game_event_gameobject WHERE guid=55569;
DELETE FROM gameobject_battleground WHERE guid=55569;
DELETE FROM pool_gameobject WHERE guid=55569;
DELETE FROM gameobject_addon WHERE guid=55569;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55569, 153451, 0, -204.854, -3964.76, 195.571, -0.890117, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55570;
DELETE FROM game_event_gameobject WHERE guid=55570;
DELETE FROM gameobject_battleground WHERE guid=55570;
DELETE FROM pool_gameobject WHERE guid=55570;
DELETE FROM gameobject_addon WHERE guid=55570;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55570, 153451, 0, -281.373, -3918.6, 215.861, -1.74533, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55571;
DELETE FROM game_event_gameobject WHERE guid=55571;
DELETE FROM gameobject_battleground WHERE guid=55571;
DELETE FROM pool_gameobject WHERE guid=55571;
DELETE FROM gameobject_addon WHERE guid=55571;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55571, 153451, 0, -402.939, -3824.5, 238.351, 2.56563, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55572;
DELETE FROM game_event_gameobject WHERE guid=55572;
DELETE FROM gameobject_battleground WHERE guid=55572;
DELETE FROM pool_gameobject WHERE guid=55572;
DELETE FROM gameobject_addon WHERE guid=55572;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55572, 153451, 0, 98.6047, -3510.1, 108.363, 3.03684, 0.0, 0.0, 0.0, 0.0, 7200, 7200);


-- Create pools for GameObjects
INSERT INTO pool_gameobject VALUES
(46268, 40032, 0, 'The Hinterlands (Shadra\'Alor) - Solid Chest (4149)'),
(190338, 40032, 0, 'The Hinterlands (Shadra\'Alor) - Solid Chest (4149)'),
(55535, 40032, 0, 'The Hinterlands (Shadra\'Alor) - Solid Chest (4149)'),
(46316, 40033, 0, 'The Hinterlands (Bogen\'s Ledge) - Solid Chest (4149)'),
(46387, 40034, 0, 'The Hinterlands (The Altar of Zul) - Solid Chest (4149)'),
(46292, 40035, 0, 'The Hinterlands (Jintha\'Alor) - Solid Chest (153451)'),
(46346, 40035, 0, 'The Hinterlands (Jintha\'Alor) - Solid Chest (153451)'),
(46370, 40035, 0, 'The Hinterlands (Jintha\'Alor) - Solid Chest (153451)'),
(55561, 40035, 0, 'The Hinterlands (Jintha\'Alor) - Solid Chest (153451)'),
(55562, 40035, 0, 'The Hinterlands (Jintha\'Alor) - Solid Chest (153451)'),
(55566, 40035, 0, 'The Hinterlands (Jintha\'Alor) - Solid Chest (153451)'),
(55569, 40035, 0, 'The Hinterlands (Jintha\'Alor) - Solid Chest (153451)'),
(55570, 40035, 0, 'The Hinterlands (Jintha\'Alor) - Solid Chest (153451)'),
(55571, 40035, 0, 'The Hinterlands (Jintha\'Alor) - Solid Chest (153451)'),
(46345, 40036, 0, 'The Hinterlands (Skulk Rock) - Solid Chest (153451)'),
(46430, 40037, 0, 'The Hinterlands - Solid Chest (153451)'),
(55565, 40037, 0, 'The Hinterlands - Solid Chest (153451)'),
(55564, 40038, 0, 'The Hinterlands (Agol\'watha) - Solid Chest (153451)'),
(55572, 40039, 0, 'The Hinterlands (The Creeping Ruin) - Solid Chest (153451)');


-- Create pool templates
INSERT INTO pool_template VALUES
(40032, 1, 'The Hinterlands (Shadra\'Alor) - Chest Pool'),
(40033, 1, 'The Hinterlands (Bogen\'s Ledge) - Chest Pool'),
(40034, 1, 'The Hinterlands (The Altar of Zul) - Chest Pool'),
(40035, 1, 'The Hinterlands (Jintha\'Alor) - Chest Pool'),
(40036, 1, 'The Hinterlands (Skulk Rock) - Chest Pool'),
(40037, 1, 'The Hinterlands - Chest Pool'),
(40038, 1, 'The Hinterlands (Agol\'watha) - Chest Pool'),
(40039, 1, 'The Hinterlands (The Creeping Ruin) - Chest Pool');
UPDATE pool_template SET max_limit=3, description='The Hinterlands (40-50) - Master Chest Pool' WHERE entry=39926;


-- Create pools of pools
INSERT INTO pool_pool VALUES
(40032, 39926, 0, 'The Hinterlands (Shadra\'Alor) - Chest Pool'),
(40033, 39926, 0, 'The Hinterlands (Bogen\'s Ledge) - Chest Pool'),
(40034, 39926, 0, 'The Hinterlands (The Altar of Zul) - Chest Pool'),
(40035, 39926, 0, 'The Hinterlands (Jintha\'Alor) - Chest Pool'),
(40036, 39926, 0, 'The Hinterlands (Skulk Rock) - Chest Pool'),
(40037, 39926, 0, 'The Hinterlands - Chest Pool'),
(40038, 39926, 0, 'The Hinterlands (Agol\'watha) - Chest Pool'),
(40039, 39926, 0, 'The Hinterlands (The Creeping Ruin) - Chest Pool');


-- #######################
--  Searing Gorge
-- #######################

-- Add missing GameObjects
DELETE FROM gameobject WHERE guid=55536;
DELETE FROM game_event_gameobject WHERE guid=55536;
DELETE FROM gameobject_battleground WHERE guid=55536;
DELETE FROM pool_gameobject WHERE guid=55536;
DELETE FROM gameobject_addon WHERE guid=55536;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55536, 4149, 0, -6602.92, -1312.25, 208.743, -0.855211, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55537;
DELETE FROM game_event_gameobject WHERE guid=55537;
DELETE FROM gameobject_battleground WHERE guid=55537;
DELETE FROM pool_gameobject WHERE guid=55537;
DELETE FROM gameobject_addon WHERE guid=55537;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55537, 4149, 0, -6679.84, -1169.02, 240.224, 2.87979, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55538;
DELETE FROM game_event_gameobject WHERE guid=55538;
DELETE FROM gameobject_battleground WHERE guid=55538;
DELETE FROM pool_gameobject WHERE guid=55538;
DELETE FROM gameobject_addon WHERE guid=55538;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55538, 4149, 0, -6414.12, -1253.51, 180.939, 1.43117, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55539;
DELETE FROM game_event_gameobject WHERE guid=55539;
DELETE FROM gameobject_battleground WHERE guid=55539;
DELETE FROM pool_gameobject WHERE guid=55539;
DELETE FROM gameobject_addon WHERE guid=55539;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55539, 4149, 0, -6831.52, -1161.4, 241.089, 2.65289, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55768;
DELETE FROM game_event_gameobject WHERE guid=55768;
DELETE FROM gameobject_battleground WHERE guid=55768;
DELETE FROM pool_gameobject WHERE guid=55768;
DELETE FROM gameobject_addon WHERE guid=55768;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55768, 4149, 0, -6469.97, -1368.05, 212.107, -0.034906, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55769;
DELETE FROM game_event_gameobject WHERE guid=55769;
DELETE FROM gameobject_battleground WHERE guid=55769;
DELETE FROM pool_gameobject WHERE guid=55769;
DELETE FROM gameobject_addon WHERE guid=55769;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55769, 4149, 0, -6918.89, -1412.95, 256.107, -2.74016, 0.0, 0.0, 0.0, 0.0, 7200, 7200);


-- Create pools for GameObjects
INSERT INTO pool_gameobject VALUES
(10031, 40040, 0, 'Searing Gorge - Solid Chest (4149)'),
(10157, 40040, 0, 'Searing Gorge - Solid Chest (4149)'),
(55536, 40040, 0, 'Searing Gorge - Solid Chest (4149)'),
(55537, 40040, 0, 'Searing Gorge - Solid Chest (4149)'),
(55538, 40040, 0, 'Searing Gorge - Solid Chest (4149)'),
(55768, 40040, 0, 'Searing Gorge - Solid Chest (4149)'),
(10093, 40041, 0, 'Searing Gorge (The Cauldron) - Solid Chest (4149)'),
(55539, 40041, 0, 'Searing Gorge (The Cauldron) - Solid Chest (4149)'),
(55769, 40041, 0, 'Searing Gorge (The Cauldron) - Solid Chest (4149)'),
(10163, 40042, 0, 'Searing Gorge (The Sea of Cinders) - Solid Chest (4149)'),
(10204, 40043, 0, 'Searing Gorge (Firewatch Ridge) - Solid Chest (4149)'),
(170042, 40043, 0, 'Searing Gorge (Firewatch Ridge) - Solid Chest (4149)');


-- Create pool templates
INSERT INTO pool_template VALUES
(40040, 1, 'Searing Gorge - Chest Pool'),
(40041, 1, 'Searing Gorge (The Cauldron) - Chest Pool'),
(40042, 1, 'Searing Gorge (The Sea of Cinders) - Chest Pool'),
(40043, 1, 'Searing Gorge (Firewatch Ridge) - Chest Pool');
UPDATE pool_template SET max_limit=3 WHERE entry=39928;


-- Create pools of pools
INSERT INTO pool_pool VALUES
(40040, 39928, 0, 'Searing Gorge - Chest Pool'),
(40041, 39928, 0, 'Searing Gorge (The Cauldron) - Chest Pool'),
(40042, 39928, 0, 'Searing Gorge (The Sea of Cinders) - Chest Pool'),
(40043, 39928, 0, 'Searing Gorge (Firewatch Ridge) - Chest Pool');


-- #######################
--  Eastern Plaguelands
-- #######################

-- Add missing GameObjects
DELETE FROM gameobject WHERE guid=45496;
DELETE FROM game_event_gameobject WHERE guid=45496;
DELETE FROM gameobject_battleground WHERE guid=45496;
DELETE FROM pool_gameobject WHERE guid=45496;
DELETE FROM gameobject_addon WHERE guid=45496;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(45496, 153453, 0, 1418.05, -3662.0, 77.246, -0.279253, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=85795;
DELETE FROM game_event_gameobject WHERE guid=85795;
DELETE FROM gameobject_battleground WHERE guid=85795;
DELETE FROM pool_gameobject WHERE guid=85795;
DELETE FROM gameobject_addon WHERE guid=85795;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(85795, 153453, 0, 1964.44, -4475.61, 74.2907, -2.14675, 0.0, 0.0, -0.878817, 0.47716, 7200, 7200);
DELETE FROM gameobject WHERE guid=85793;
DELETE FROM game_event_gameobject WHERE guid=85793;
DELETE FROM gameobject_battleground WHERE guid=85793;
DELETE FROM pool_gameobject WHERE guid=85793;
DELETE FROM gameobject_addon WHERE guid=85793;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(85793, 153453, 0, 1602.33, -3233.98, 67.0181, -2.35619, 0.0, 0.0, -0.923879, 0.382686, 7200, 7200);
DELETE FROM gameobject WHERE guid=85792;
DELETE FROM game_event_gameobject WHERE guid=85792;
DELETE FROM gameobject_battleground WHERE guid=85792;
DELETE FROM pool_gameobject WHERE guid=85792;
DELETE FROM gameobject_addon WHERE guid=85792;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(85792, 153453, 0, 2068.44, -4474.16, 75.8982, 0.506145, 0.0, 0.0, 0.25038, 0.968148, 7200, 7200);
DELETE FROM gameobject WHERE guid=85791;
DELETE FROM game_event_gameobject WHERE guid=85791;
DELETE FROM gameobject_battleground WHERE guid=85791;
DELETE FROM pool_gameobject WHERE guid=85791;
DELETE FROM gameobject_addon WHERE guid=85791;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(85791, 153453, 0, 3027.25, -3230.02, 146.529, 0.209439, 0.0, 0.0, 0.104528, 0.994522, 7200, 7200);
DELETE FROM gameobject WHERE guid=190339;
DELETE FROM game_event_gameobject WHERE guid=190339;
DELETE FROM gameobject_battleground WHERE guid=190339;
DELETE FROM pool_gameobject WHERE guid=190339;
DELETE FROM gameobject_addon WHERE guid=190339;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(190339, 153454, 0, 3003.65, -4886.26, 108.384, 0.506145, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=190340;
DELETE FROM game_event_gameobject WHERE guid=190340;
DELETE FROM gameobject_battleground WHERE guid=190340;
DELETE FROM pool_gameobject WHERE guid=190340;
DELETE FROM gameobject_addon WHERE guid=190340;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(190340, 153454, 0, 1753.27, -5410.37, 113.525, -0.366519, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55578;
DELETE FROM game_event_gameobject WHERE guid=55578;
DELETE FROM gameobject_battleground WHERE guid=55578;
DELETE FROM pool_gameobject WHERE guid=55578;
DELETE FROM gameobject_addon WHERE guid=55578;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55578, 153454, 0, 3021.77, -4980.58, 106.656, 1.83259, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55579;
DELETE FROM game_event_gameobject WHERE guid=55579;
DELETE FROM gameobject_battleground WHERE guid=55579;
DELETE FROM pool_gameobject WHERE guid=55579;
DELETE FROM gameobject_addon WHERE guid=55579;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55579, 153454, 0, 3459.3, -4918.52, 170.455, -1.69297, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=89670;
DELETE FROM game_event_gameobject WHERE guid=89670;
DELETE FROM gameobject_battleground WHERE guid=89670;
DELETE FROM pool_gameobject WHERE guid=89670;
DELETE FROM gameobject_addon WHERE guid=89670;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(89670, 153454, 0, 1558.68, -5417.94, 75.197, 0.0523599, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=89669;
DELETE FROM game_event_gameobject WHERE guid=89669;
DELETE FROM gameobject_battleground WHERE guid=89669;
DELETE FROM pool_gameobject WHERE guid=89669;
DELETE FROM gameobject_addon WHERE guid=89669;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(89669, 153454, 0, 1599.41, -5315.48, 91.1041, 2.23402, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=89668;
DELETE FROM game_event_gameobject WHERE guid=89668;
DELETE FROM gameobject_battleground WHERE guid=89668;
DELETE FROM pool_gameobject WHERE guid=89668;
DELETE FROM gameobject_addon WHERE guid=89668;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(89668, 153454, 0, 2506.89, -3804.47, 177.654, 1.62316, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=89667;
DELETE FROM game_event_gameobject WHERE guid=89667;
DELETE FROM gameobject_battleground WHERE guid=89667;
DELETE FROM pool_gameobject WHERE guid=89667;
DELETE FROM gameobject_addon WHERE guid=89667;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(89667, 153454, 0, 2560.83, -4806.04, 114.984, 0.261798, 0.0, 0.0, 0.130526, 0.991445, 7200, 7200);
DELETE FROM gameobject WHERE guid=89666;
DELETE FROM game_event_gameobject WHERE guid=89666;
DELETE FROM gameobject_battleground WHERE guid=89666;
DELETE FROM pool_gameobject WHERE guid=89666;
DELETE FROM gameobject_addon WHERE guid=89666;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(89666, 153454, 0, 2780.84, -5550.98, 160.7, 0.698132, 0.0, 0.0, 0.0, 0.0, 7200, 7200);


-- Create pools for GameObjects
INSERT INTO pool_gameobject VALUES
(45735, 40044, 0, 'Eastern Plaguelands (Plaguewood) - Solid Chest (153453)'),
(85791, 40044, 0, 'Eastern Plaguelands (Plaguewood) - Solid Chest (153453)'),
(45949, 40045, 0, 'Eastern Plaguelands (Crown Guard Tower) - Solid Chest (153453)'),
(45950, 40046, 0, 'Eastern Plaguelands (Corin\'s Crossing) - Solid Chest (153453)'),
(85795, 40046, 0, 'Eastern Plaguelands (Corin\'s Crossing) - Solid Chest (153453)'),
(85792, 40046, 0, 'Eastern Plaguelands (Corin\'s Crossing) - Solid Chest (153453)'),
(45910, 40047, 0, 'Eastern Plaguelands (Zul\'Mashar) - Solid Chest (153454)'),
(55579, 40047, 0, 'Eastern Plaguelands (Zul\'Mashar) - Solid Chest (153454)'),
(45915, 40048, 0, 'Eastern Plaguelands (The Fungal Vale) - Solid Chest (153454)'),
(89668, 40048, 0, 'Eastern Plaguelands (The Fungal Vale) - Solid Chest (153454)'),
(45931, 40049, 0, 'Eastern Plaguelands (The Noxious Glade) - Solid Chest (153454)'),
(89666, 40049, 0, 'Eastern Plaguelands (The Noxious Glade) - Solid Chest (153454)'),
(45938, 40050, 0, 'Eastern Plaguelands (Tyr\'s Hand) - Solid Chest (153454)'),
(45933, 40050, 0, 'Eastern Plaguelands (Tyr\'s Hand) - Solid Chest (153454)'),
(190340, 40050, 0, 'Eastern Plaguelands (Tyr\'s Hand) - Solid Chest (153454)'),
(89670, 40050, 0, 'Eastern Plaguelands (Tyr\'s Hand) - Solid Chest (153454)'),
(89669, 40050, 0, 'Eastern Plaguelands (Tyr\'s Hand) - Solid Chest (153454)'),
(45734, 40051, 0, 'Eastern Plaguelands (Northdale) - Solid Chest (153454)'),
(190339, 40051, 0, 'Eastern Plaguelands (Northdale) - Solid Chest (153454)'),
(55578, 40051, 0, 'Eastern Plaguelands (Northdale) - Solid Chest (153454)'),
(45496, 40052, 0, 'Eastern Plaguelands (Darrowshire) - Solid Chest (153453)'),
(85793, 40053, 0, 'Eastern Plaguelands (The Undercroft) - Solid Chest (153453)'),
(89667, 40054, 0, 'Eastern Plaguelands (Eastwall Tower) - Solid Chest (153454)');


-- Create pool templates
INSERT INTO pool_template VALUES
(40044, 1, 'Eastern Plaguelands (Plaguewood) - Chest Pool'),
(40045, 1, 'Eastern Plaguelands (Crown Guard Tower) - Chest Pool'),
(40046, 1, 'Eastern Plaguelands (Corin\'s Crossing) - Chest Pool'),
(40047, 1, 'Eastern Plaguelands (Zul\'Mashar) - Chest Pool'),
(40048, 1, 'Eastern Plaguelands (The Fungal Vale) - Chest Pool'),
(40049, 1, 'Eastern Plaguelands (The Noxious Glade) - Chest Pool'),
(40050, 1, 'Eastern Plaguelands (Tyr\'s Hand) - Chest Pool'),
(40051, 1, 'Eastern Plaguelands (Northdale) - Chest Pool'),
(40052, 1, 'Eastern Plaguelands (Darrowshire) - Chest Pool'),
(40053, 1, 'Eastern Plaguelands (The Undercroft) - Chest Pool'),
(40054, 1, 'Eastern Plaguelands (Eastwall Tower) - Chest Pool');
UPDATE pool_template SET max_limit=4 WHERE entry=39936;


-- Create pools of pools
INSERT INTO pool_pool VALUES
(40044, 39936, 0, 'Eastern Plaguelands (Plaguewood) - Chest Pool'),
(40045, 39936, 0, 'Eastern Plaguelands (Crown Guard Tower) - Chest Pool'),
(40046, 39936, 0, 'Eastern Plaguelands (Corin\'s Crossing) - Chest Pool'),
(40047, 39936, 0, 'Eastern Plaguelands (Zul\'Mashar) - Chest Pool'),
(40048, 39936, 0, 'Eastern Plaguelands (The Fungal Vale) - Chest Pool'),
(40049, 39936, 0, 'Eastern Plaguelands (The Noxious Glade) - Chest Pool'),
(40050, 39936, 0, 'Eastern Plaguelands (Tyr\'s Hand) - Chest Pool'),
(40051, 39936, 0, 'Eastern Plaguelands (Northdale) - Chest Pool'),
(40052, 39936, 0, 'Eastern Plaguelands (Darrowshire) - Chest Pool'),
(40053, 39936, 0, 'Eastern Plaguelands (The Undercroft) - Chest Pool'),
(40054, 39936, 0, 'Eastern Plaguelands (Eastwall Tower) - Chest Pool');


-- #######################
--  Hillsbrad Foothills
-- #######################

-- Add missing GameObjects
DELETE FROM gameobject WHERE guid=55760;
DELETE FROM game_event_gameobject WHERE guid=55760;
DELETE FROM gameobject_battleground WHERE guid=55760;
DELETE FROM pool_gameobject WHERE guid=55760;
DELETE FROM gameobject_addon WHERE guid=55760;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55760, 2855, 0, -1036.14, -370.85, 2.56879, -1.15192, 0.0, 0.0, 0.0, 0.0, 7200, 7200);


-- Create pools for GameObjects
INSERT INTO pool_gameobject VALUES
(30018, 40055, 0, 'Hillsbrad Foothills (Durnholde Keep) - Solid Chest (2850)'),
(29292, 40056, 0, 'Hillsbrad Foothills (Western Strand) - Solid Chest (2852)'),
(29653, 40056, 0, 'Hillsbrad Foothills (Western Strand) - Solid Chest (2855)'),
(55760, 40056, 0, 'Hillsbrad Foothills (Western Strand) - Solid Chest (2855)'),
(29647, 40057, 0, 'Hillsbrad Foothills (Nethander Stead) - Solid Chest (2852)');


-- Create pool templates
INSERT INTO pool_template VALUES
(40055, 1, 'Hillsbrad Foothills (Durnholde Keep) - Chest Pool'),
(40056, 1, 'Hillsbrad Foothills (Western Strand) - Chest Pool'),
(40057, 1, 'Hillsbrad Foothills (Nethander Stead) - Chest Pool');
UPDATE pool_template SET max_limit=2 WHERE entry=39915;


-- Create pools of pools
INSERT INTO pool_pool VALUES
(40055, 39915, 0, 'Hillsbrad Foothills (Durnholde Keep) - Chest Pool'),
(40056, 39915, 0, 'Hillsbrad Foothills (Western Strand) - Chest Pool'),
(40057, 39915, 0, 'Hillsbrad Foothills (Nethander Stead) - Chest Pool');


-- #######################
--  Thousand Needles
-- #######################

-- Add missing GameObjects
DELETE FROM gameobject WHERE guid=190341;
DELETE FROM game_event_gameobject WHERE guid=190341;
DELETE FROM gameobject_battleground WHERE guid=190341;
DELETE FROM pool_gameobject WHERE guid=190341;
DELETE FROM gameobject_addon WHERE guid=190341;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(190341, 2852, 1, -4591.11, -1218.49, -54.842, -2.79252, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55947;
DELETE FROM game_event_gameobject WHERE guid=55947;
DELETE FROM gameobject_battleground WHERE guid=55947;
DELETE FROM pool_gameobject WHERE guid=55947;
DELETE FROM gameobject_addon WHERE guid=55947;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55947, 2852, 1, -4942.82, -2345.03, -44.8815, -0.296705, 0.0, 0.0, 0.0, 0.0, 7200, 7200);


-- Create pools for GameObjects
INSERT INTO pool_gameobject VALUES
(16715, 40058, 0, 'Thousand Needles - Solid Chest (2852)'),
(55947, 40058, 0, 'Thousand Needles - Solid Chest (2852)'),
(16718, 40059, 0, 'Thousand Needles (Camp E\'thok) - Solid Chest (2852)'),
(170117, 40059, 0, 'Thousand Needles (Camp E\'thok) - Solid Chest (2852)'),
(190341, 40059, 0, 'Thousand Needles (Camp E\'thok) - Solid Chest (2852)'),
(16719, 40060, 0, 'Thousand Needles (Highperch) - Solid Chest (2852)'),
(16721, 40061, 0, 'Thousand Needles (Splithoof Crag) - Solid Chest (2852)'),
(16722, 40062, 0, 'Thousand Needles (The Rustmaul Dig Site) - Solid Chest (2855)');


-- Create pool templates
INSERT INTO pool_template VALUES
(40058, 1, 'Thousand Needles - Chest Pool'),
(40059, 1, 'Thousand Needles (Camp E\'thok) - Chest Pool'),
(40060, 1, 'Thousand Needles (Highperch) - Chest Pool'),
(40061, 1, 'Thousand Needles (Splithoof Crag) - Chest Pool'),
(40062, 1, 'Thousand Needles (The Rustmaul Dig Site) - Chest Pool');
UPDATE pool_template SET max_limit=3 WHERE entry=39917;


-- Create pools of pools
INSERT INTO pool_pool VALUES
(40058, 39917, 0, 'Thousand Needles - Chest Pool'),
(40059, 39917, 0, 'Thousand Needles (Camp E\'thok) - Chest Pool'),
(40060, 39917, 0, 'Thousand Needles (Highperch) - Chest Pool'),
(40061, 39917, 0, 'Thousand Needles (Splithoof Crag) - Chest Pool'),
(40062, 39917, 0, 'Thousand Needles (The Rustmaul Dig Site) - Chest Pool');


-- #######################
--  Desolace
-- #######################

-- Add missing GameObjects
DELETE FROM gameobject WHERE guid=56702;
DELETE FROM game_event_gameobject WHERE guid=56702;
DELETE FROM gameobject_battleground WHERE guid=56702;
DELETE FROM pool_gameobject WHERE guid=56702;
DELETE FROM gameobject_addon WHERE guid=56702;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(56702, 2855, 1, -403.13, 1876.43, 128.41, -1.44862, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=56703;
DELETE FROM game_event_gameobject WHERE guid=56703;
DELETE FROM gameobject_battleground WHERE guid=56703;
DELETE FROM pool_gameobject WHERE guid=56703;
DELETE FROM gameobject_addon WHERE guid=56703;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(56703, 2855, 1, -794.729, 930.161, 90.7574, 2.16421, 0.0, 0.0, 0.0, 0.0, 7200, 7200);


-- Create pools for GameObjects
INSERT INTO pool_gameobject VALUES
(30169, 40063, 0, 'Desolace (Kolkar Village) - Solid Chest (2855)'),
(56703, 40063, 0, 'Desolace (Kolkar Village) - Solid Chest (2855)'),
(30170, 40064, 0, 'Desolace (Thunder Axe Fortress) - Solid Chest (2855)'),
(56702, 40064, 0, 'Desolace (Thunder Axe Fortress) - Solid Chest (2855)'),
(30171, 40065, 0, 'Desolace (Sargeron) - Solid Chest (2855)'),
(30178, 40066, 0, 'Desolace - Solid Chest (2857)'),
(30182, 40067, 0, 'Desolace (Valley of Spears) - Solid Chest (2857)'),
(30184, 40067, 0, 'Desolace (Valley of Spears) - Solid Chest (2857)'),
(30183, 40068, 0, 'Desolace (Magram Village) - Solid Chest (2857)');


-- Create pool templates
INSERT INTO pool_template VALUES
(40063, 1, 'Desolace (Kolkar Village) - Chest Pool'),
(40064, 1, 'Desolace (Thunder Axe Fortress) - Chest Pool'),
(40065, 1, 'Desolace (Sargeron) - Chest Pool'),
(40066, 1, 'Desolace - Chest Pool'),
(40067, 1, 'Desolace (Valley of Spears) - Chest Pool'),
(40068, 1, 'Desolace (Magram Village) - Chest Pool');
UPDATE pool_template SET max_limit=3 WHERE entry=39920;


-- Create pools of pools
INSERT INTO pool_pool VALUES
(40063, 39920, 0, 'Desolace (Kolkar Village) - Chest Pool'),
(40064, 39920, 0, 'Desolace (Thunder Axe Fortress) - Chest Pool'),
(40065, 39920, 0, 'Desolace (Sargeron) - Chest Pool'),
(40066, 39920, 0, 'Desolace - Chest Pool'),
(40067, 39920, 0, 'Desolace (Valley of Spears) - Chest Pool'),
(40068, 39920, 0, 'Desolace (Magram Village) - Chest Pool');


-- #######################
--  Tanaris
-- #######################

-- Add missing GameObjects
DELETE FROM gameobject WHERE guid=190342;
DELETE FROM game_event_gameobject WHERE guid=190342;
DELETE FROM gameobject_battleground WHERE guid=190342;
DELETE FROM pool_gameobject WHERE guid=190342;
DELETE FROM gameobject_addon WHERE guid=190342;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(190342, 4149, 1, -7706.76, -4706.06, 8.87676, -1.6057, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55949;
DELETE FROM game_event_gameobject WHERE guid=55949;
DELETE FROM gameobject_battleground WHERE guid=55949;
DELETE FROM pool_gameobject WHERE guid=55949;
DELETE FROM gameobject_addon WHERE guid=55949;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55949, 4149, 1, -7414.26, -4583.68, 8.77651, -1.0821, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=55950;
DELETE FROM game_event_gameobject WHERE guid=55950;
DELETE FROM gameobject_battleground WHERE guid=55950;
DELETE FROM pool_gameobject WHERE guid=55950;
DELETE FROM gameobject_addon WHERE guid=55950;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(55950, 4149, 1, -7549.1, -4266.47, 8.87937, 2.1293, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=190343;
DELETE FROM game_event_gameobject WHERE guid=190343;
DELETE FROM gameobject_battleground WHERE guid=190343;
DELETE FROM pool_gameobject WHERE guid=190343;
DELETE FROM gameobject_addon WHERE guid=190343;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(190343, 153451, 1, -8320.32, -3131.56, 8.64368, -0.890117, 0.0, 0.0, 0.0, 0.0, 7200, 7200);


-- Create pools for GameObjects
INSERT INTO pool_gameobject VALUES
(17298, 40069, 0, 'Tanaris (Waterspring Field) - Solid Chest (4149)'),
(17299, 40069, 0, 'Tanaris (Waterspring Field) - Solid Chest (4149)'),
(17300, 40069, 0, 'Tanaris (Waterspring Field) - Solid Chest (4149)'),
(190342, 40069, 0, 'Tanaris (Waterspring Field) - Solid Chest (4149)'),
(55949, 40069, 0, 'Tanaris (Waterspring Field) - Solid Chest (4149)'),
(55950, 40069, 0, 'Tanaris (Waterspring Field) - Solid Chest (4149)'),
(17329, 40070, 0, 'Tanaris (Lost Rigger Cove) - Solid Chest (153451)'),
(17330, 40070, 0, 'Tanaris (Lost Rigger Cove) - Solid Chest (153451)'),
(17331, 40071, 0, 'Tanaris (Dunemaul Compound) - Solid Chest (153451)'),
(190343, 40071, 0, 'Tanaris (Dunemaul Compound) - Solid Chest (153451)');


-- Create pool templates
INSERT INTO pool_template VALUES
(40069, 1, 'Tanaris (Waterspring Field) - Chest Pool'),
(40070, 1, 'Tanaris (Lost Rigger Cove) - Chest Pool'),
(40071, 1, 'Tanaris (Dunemaul Compound) - Chest Pool');
UPDATE pool_template SET max_limit=3 WHERE entry=39927;


-- Create pools of pools
INSERT INTO pool_pool VALUES
(40069, 39927, 0, 'Tanaris (Waterspring Field) - Chest Pool'),
(40070, 39927, 0, 'Tanaris (Lost Rigger Cove) - Chest Pool'),
(40071, 39927, 0, 'Tanaris (Dunemaul Compound) - Chest Pool');


-- #######################
--  Winterspring
-- #######################

-- Add missing GameObjects
DELETE FROM gameobject WHERE guid=190344;
DELETE FROM game_event_gameobject WHERE guid=190344;
DELETE FROM gameobject_battleground WHERE guid=190344;
DELETE FROM pool_gameobject WHERE guid=190344;
DELETE FROM gameobject_addon WHERE guid=190344;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(190344, 153454, 1, 6796.38, -5150.06, 732.103, -2.07694, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=89677;
DELETE FROM game_event_gameobject WHERE guid=89677;
DELETE FROM gameobject_battleground WHERE guid=89677;
DELETE FROM pool_gameobject WHERE guid=89677;
DELETE FROM gameobject_addon WHERE guid=89677;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(89677, 153454, 1, 6313.62, -2395.12, 556.702, -2.75761, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=89676;
DELETE FROM game_event_gameobject WHERE guid=89676;
DELETE FROM gameobject_battleground WHERE guid=89676;
DELETE FROM pool_gameobject WHERE guid=89676;
DELETE FROM gameobject_addon WHERE guid=89676;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(89676, 153454, 1, 6491.73, -3132.61, 570.651, -1.16937, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=89675;
DELETE FROM game_event_gameobject WHERE guid=89675;
DELETE FROM gameobject_battleground WHERE guid=89675;
DELETE FROM pool_gameobject WHERE guid=89675;
DELETE FROM gameobject_addon WHERE guid=89675;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(89675, 153454, 1, 6617.37, -4081.4, 662.525, 1.50098, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=89674;
DELETE FROM game_event_gameobject WHERE guid=89674;
DELETE FROM gameobject_battleground WHERE guid=89674;
DELETE FROM pool_gameobject WHERE guid=89674;
DELETE FROM gameobject_addon WHERE guid=89674;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(89674, 153454, 1, 6830.53, -3584.34, 718.537, 0.959931, 0.0, 0.0, 0.461748, 0.887011, 7200, 7200);
DELETE FROM gameobject WHERE guid=89673;
DELETE FROM game_event_gameobject WHERE guid=89673;
DELETE FROM gameobject_battleground WHERE guid=89673;
DELETE FROM pool_gameobject WHERE guid=89673;
DELETE FROM gameobject_addon WHERE guid=89673;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(89673, 153454, 1, 6843.17, -2482.17, 561.01, -1.98967, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=89672;
DELETE FROM game_event_gameobject WHERE guid=89672;
DELETE FROM gameobject_battleground WHERE guid=89672;
DELETE FROM pool_gameobject WHERE guid=89672;
DELETE FROM gameobject_addon WHERE guid=89672;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(89672, 153454, 1, 6834.71, -5028.52, 691.339, -1.67552, 0.0, 0.0, 0.0, 0.0, 7200, 7200);
DELETE FROM gameobject WHERE guid=89671;
DELETE FROM game_event_gameobject WHERE guid=89671;
DELETE FROM gameobject_battleground WHERE guid=89671;
DELETE FROM pool_gameobject WHERE guid=89671;
DELETE FROM gameobject_addon WHERE guid=89671;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(89671, 153454, 1, 6863.55, -5118.35, 695.735, -2.33874, 0.0, 0.0, 0.0, 0.0, 7200, 7200);


-- Create pools for GameObjects
INSERT INTO pool_gameobject VALUES
(49088, 40072, 0, 'Winterspring (The Ruins of Kel\'Theril) - Solid Chest (153454)'),
(49089, 40073, 0, 'Winterspring (Timbermaw Post) - Solid Chest (153454)'),
(89676, 40073, 0, 'Winterspring (Timbermaw Post) - Solid Chest (153454)'),
(49090, 40074, 0, 'Winterspring (Frostfire Hot Springs) - Solid Chest (153454)'),
(89673, 40074, 0, 'Winterspring (Frostfire Hot Springs) - Solid Chest (153454)'),
(49091, 40075, 0, 'Winterspring (Winterfall Village) - Solid Chest (153454)'),
(190344, 40075, 0, 'Winterspring (Winterfall Village) - Solid Chest (153454)'),
(89672, 40075, 0, 'Winterspring (Winterfall Village) - Solid Chest (153454)'),
(89671, 40075, 0, 'Winterspring (Winterfall Village) - Solid Chest (153454)'),
(89677, 40076, 0, 'Winterspring - Solid Chest (153454)'),
(89674, 40076, 0, 'Winterspring - Solid Chest (153454)'),
(89675, 40077, 0, 'Winterspring (Lake Kel\'Theril) - Solid Chest (153454)');


-- Create pool templates
INSERT INTO pool_template VALUES
(40072, 1, 'Winterspring (The Ruins of Kel\'Theril) - Chest Pool'),
(40073, 1, 'Winterspring (Timbermaw Post) - Chest Pool'),
(40074, 1, 'Winterspring (Frostfire Hot Springs) - Chest Pool'),
(40075, 1, 'Winterspring (Winterfall Village) - Chest Pool'),
(40076, 1, 'Winterspring - Chest Pool'),
(40077, 1, 'Winterspring (Lake Kel\'Theril) - Chest Pool');
UPDATE pool_template SET max_limit=3 WHERE entry=39937;


-- Create pools of pools
INSERT INTO pool_pool VALUES
(40072, 39937, 0, 'Winterspring (The Ruins of Kel\'Theril) - Chest Pool'),
(40073, 39937, 0, 'Winterspring (Timbermaw Post) - Chest Pool'),
(40074, 39937, 0, 'Winterspring (Frostfire Hot Springs) - Chest Pool'),
(40075, 39937, 0, 'Winterspring (Winterfall Village) - Chest Pool'),
(40076, 39937, 0, 'Winterspring - Chest Pool'),
(40077, 39937, 0, 'Winterspring (Lake Kel\'Theril) - Chest Pool');
