-- Venture Co. Camp - Stranglethorn Vale

-- Venture Co. Strip Miner 674 / Venture Co. Surveyor 676 / Venture Co. Tinkerer 677
-- Venture Co. Foreman 675
-- missing added
DELETE FROM creature_addon WHERE guid IN (4564);
DELETE FROM creature_movement WHERE id IN (4564);
DELETE FROM game_event_creature WHERE guid IN (4564);
DELETE FROM game_event_creature_data WHERE guid IN (4564);
DELETE FROM creature_battleground WHERE guid IN (4564);
DELETE FROM creature_linking WHERE guid IN (4564);
DELETE FROM creature where guid IN (4564);
INSERT INTO creature (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(4564,675,0,1,-13071.7,-458.424,44.7547,5.87227,300,300,0,4); -- linear
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid IN (1202);
UPDATE creature SET spawndist = 3, MovementType = 1 WHERE guid IN (1200,1207,1212);
UPDATE creature SET position_x = -13134, position_y = -465.053, position_z = 49.759, orientation = 2.998, spawndist = 0, MovementType = 4 WHERE guid = 1208; -- linear
UPDATE creature SET position_x = -12981.3, position_y = -451.062, position_z = 53.5733, orientation = 5.545, spawndist = 0, MovementType = 4 WHERE guid = 2331; -- linear
-- waypoints
DELETE FROM creature_movement WHERE Id IN (1208,4564,2331);
INSERT INTO creature_movement (id, point, positionx, positiony, positionz, orientation, waittime, scriptid) VALUES
-- 1208
(1208,1,-13134,-465.053,49.759,100,30000,67601),
(1208,2,-13121.4,-466.663,50.1178,100,0,0),
(1208,3,-13108,-467.456,50.6599,100,0,0),
(1208,4,-13095,-466.128,50.7126,100,0,0),
(1208,5,-13082.8,-463.538,45.149,100,0,0),
(1208,6,-13072.6,-464.648,44.7534,100,20000,0),
-- 4564
(4564,1 ,-13071.7,-458.424,44.7547,100,30000,0),
(4564,2 ,-13076.2,-456.813,44.847,100,0,0),
(4564,3 ,-13067.3,-446.035,45.2627,100,0,0),
(4564,4 ,-13060.8,-435.847,46.201,100,0,0),
(4564,5 ,-13057,-425.32,48.5186,100,0,0),
(4564,6 ,-13053.8,-419.626,48.4597,100,0,0),
(4564,7 ,-13048,-414.02,47.6039,100,0,0),
(4564,8 ,-13040.7,-410.885,45.465,100,0,0),
(4564,9 ,-13033.4,-405.821,41.8009,100,0,0),
(4564,10,-13026.2,-402.08,37.8745,100,0,0),
(4564,11,-13019.7,-406.35,37.8718,100,0,0),
(4564,12,-13012.9,-414.658,40.2298,100,0,0),
(4564,13,-12999.6,-418.94,42.2694,100,0,0),
(4564,14,-12985.8,-421.95,42.5237,100,0,0),
(4564,15,-12972,-426.026,42.585,100,0,0),
(4564,16,-12961.6,-429.025,42.5679,100,0,0),
(4564,17,-12954.9,-431.834,42.2954,100,0,0),
(4564,18,-12951.9,-441.014,39.9795,100,0,0),
(4564,19,-12946.6,-445.323,38.3811,100,0,0),
(4564,20,-12937.2,-454.117,38.2616,100,30000,0),
-- 2331
(2331,1,-12981.3,-451.062,53.5733,5.545,15000,0),
(2331,2,-12987.7,-447.067,50.7584,100,0,0),
(2331,3,-12981.6,-440.622,44.189,100,0,0),
(2331,4,-12980.6,-431.113,42.5626,100,0,0),
(2331,5,-12986.8,-422.452,42.5665,100,6000,21); -- will do randommovement for 30secs..
DELETE FROM dbscripts_on_creature_movement WHERE id IN (67601);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(67601,100,0,0,0,0,0,0,0x04,306,0,0,0,0,0,0,0,'Say');
-- share same spawn points
DELETE FROM creature_spawn_entry WHERE guid IN (1207,1212,1208);
INSERT INTO creature_spawn_entry (guid,entry) VALUES
-- Venture Co. Strip Miner 674 / Venture Co. Surveyor 676 / Venture Co. Tinkerer 677
(1207,674),(1207,676),(1207,677),
(1212,674),(1212,676),(1212,677),
(1208,676),(1208,677); -- except 674
UPDATE creature SET id = 0 WHERE guid IN (1207,1212,1208);

-- creature_addon related fixes
DELETE FROM creature_addon WHERE guid IN (SELECT `guid` FROM `creature` WHERE `id` IN (674,675,676,677)); -- all unique ids removed
DELETE FROM creature_addon WHERE guid IN (1207,1208,1200,1207,1212,2241,2316); -- no longer needed, only 3 miners do not dig
INSERT INTO creature_addon (guid,sheath_state,emote) VALUES (1200, 1, 0),(1207, 1, 0),(1212, 1, 0); -- randomized no longer only Miner, with spawndist, other a miner that does not dig.
DELETE FROM `creature_template_addon` WHERE `entry` IN (674,675,676,677); -- classicmangos has the best default solution for the smallest amount of lines
INSERT INTO `creature_template_addon` (`entry`, `mount`, `stand_state`, `sheath_state`, `emote`, `moveflags`, `auras`) VALUES
(674, 0, 0, 1, 233, 0, NULL),(675, 0, 0, 1, 0, 0, NULL),(676, 0, 0, 1, 0, 0, NULL),(677, 0, 0, 1, 0, 0, '12544');
