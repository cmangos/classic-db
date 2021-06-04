-- Tethis 730
-- missing spawns added
DELETE FROM creature_addon WHERE guid IN (2588,2593);
DELETE FROM creature_movement WHERE id IN (2588,2593);
DELETE FROM game_event_creature WHERE guid IN (2588,2593);
DELETE FROM game_event_creature_data WHERE guid IN (2588,2593);
DELETE FROM creature_battleground WHERE guid IN (2588,2593);
DELETE FROM creature_linking WHERE guid IN (2588,2593)
OR master_guid IN (2588,2593);
DELETE FROM creature WHERE guid IN (2588,2593);
INSERT INTO creature (guid, id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(2588,730,0,0,0,-12978.6,411.841,21.7456,3.43503,420,600,20,0,1973,0,0,1),
(2593,730,0,0,0,-13017.2,193.101,22.7814,1.45268,420,600,20,0,1973,0,0,1);
UPDATE creature SET spawndist = 20, MovementType = 1 WHERE id = 730;
-- POOLS
DELETE FROM `pool_creature_template` WHERE `id` = 730;
INSERT INTO `pool_creature_template` (`id`, `pool_entry`, `chance`, `description`) VALUES
(730, 1266, 0, 'Tethis (730)');
DELETE FROM `pool_template` WHERE `entry` = 1266;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(1266, 1, 'Tethis (730)');
